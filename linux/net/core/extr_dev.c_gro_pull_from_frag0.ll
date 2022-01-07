; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_gro_pull_from_frag0.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_gro_pull_from_frag0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.skb_shared_info = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @gro_pull_from_frag0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gro_pull_from_frag0(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skb_shared_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %6)
  store %struct.skb_shared_info* %7, %struct.skb_shared_info** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @skb_tail_pointer(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @memcpy(i32 %20, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %38 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @skb_frag_off_add(i32* %40, i32 %41)
  %43 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %44 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @skb_frag_size_sub(i32* %46, i32 %47)
  %49 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %50 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i32 @skb_frag_size(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %2
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = call i32 @skb_frag_unref(%struct.sk_buff* %60, i32 0)
  %62 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %63 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %66 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %70 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memmove(i32* %64, i32* %68, i32 %75)
  br label %77

77:                                               ; preds = %59, %2
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_off_add(i32*, i32) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_unref(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
