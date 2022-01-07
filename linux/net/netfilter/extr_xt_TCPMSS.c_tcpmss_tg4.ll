; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPMSS.c_tcpmss_tg4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TCPMSS.c_tcpmss_tg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @tcpmss_tg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmss_tg4(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %13 = load i32, i32* @PF_INET, align 4
  %14 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %15 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 4
  %18 = call i32 @tcpmss_mangle_packet(%struct.sk_buff* %11, %struct.xt_action_param* %12, i32 %13, i32 %17, i32 16)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NF_DROP, align 4
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %27)
  store %struct.iphdr* %28, %struct.iphdr** %6, align 8
  %29 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohs(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @htons(i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 2
  %39 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @csum_replace2(i32* %38, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %26, %23
  %48 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @tcpmss_mangle_packet(%struct.sk_buff*, %struct.xt_action_param*, i32, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @csum_replace2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
