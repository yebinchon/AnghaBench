; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_get_srh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_get_srh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_sr_hdr = type { i32 }
%struct.sk_buff = type { i64 }

@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipv6_sr_hdr* (%struct.sk_buff*)* @get_srh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipv6_sr_hdr* @get_srh(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.ipv6_sr_hdr*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6_sr_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load i32, i32* @IPPROTO_ROUTING, align 4
  %9 = call i64 @ipv6_find_hdr(%struct.sk_buff* %7, i32* %6, i32 %8, i32* null, i32* null)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.ipv6_sr_hdr* null, %struct.ipv6_sr_hdr** %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store %struct.ipv6_sr_hdr* null, %struct.ipv6_sr_hdr** %2, align 8
  br label %49

21:                                               ; preds = %12
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %28, %struct.ipv6_sr_hdr** %4, align 8
  %29 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = shl i32 %32, 3
  store i32 %33, i32* %5, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %21
  store %struct.ipv6_sr_hdr* null, %struct.ipv6_sr_hdr** %2, align 8
  br label %49

41:                                               ; preds = %21
  %42 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @seg6_validate_srh(%struct.ipv6_sr_hdr* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.ipv6_sr_hdr* null, %struct.ipv6_sr_hdr** %2, align 8
  br label %49

47:                                               ; preds = %41
  %48 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %4, align 8
  store %struct.ipv6_sr_hdr* %48, %struct.ipv6_sr_hdr** %2, align 8
  br label %49

49:                                               ; preds = %47, %46, %40, %20, %11
  %50 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %2, align 8
  ret %struct.ipv6_sr_hdr* %50
}

declare dso_local i64 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @seg6_validate_srh(%struct.ipv6_sr_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
