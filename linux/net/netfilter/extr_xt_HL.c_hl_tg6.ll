; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HL.c_hl_tg6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HL.c_hl_tg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ip6t_HL_info* }
%struct.ip6t_HL_info = type { i32, i32 }
%struct.ipv6hdr = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @hl_tg6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_tg6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.ip6t_HL_info*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %10, align 8
  store %struct.ip6t_HL_info* %11, %struct.ip6t_HL_info** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i64 @skb_ensure_writable(%struct.sk_buff* %12, i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @NF_DROP, align 4
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %18)
  store %struct.ipv6hdr* %19, %struct.ipv6hdr** %6, align 8
  %20 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %21 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %51 [
    i32 128, label %23
    i32 129, label %27
    i32 130, label %39
  ]

23:                                               ; preds = %17
  %24 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %25 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  br label %55

27:                                               ; preds = %17
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %32 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 255, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %27
  br label %55

39:                                               ; preds = %17
  %40 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %41 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %44 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %39
  br label %55

51:                                               ; preds = %17
  %52 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %53 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %50, %38, %23
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
