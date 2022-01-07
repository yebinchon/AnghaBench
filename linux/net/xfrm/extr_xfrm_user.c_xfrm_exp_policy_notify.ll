; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_exp_policy_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_exp_policy_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.km_event = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMNLGRP_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, %struct.km_event*)* @xfrm_exp_policy_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_exp_policy_notify(%struct.xfrm_policy* %0, i32 %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.km_event*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %12 = call %struct.net* @xp_net(%struct.xfrm_policy* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %14 = call i32 @xfrm_polexpire_msgsize(%struct.xfrm_policy* %13)
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.km_event*, %struct.km_event** %7, align 8
  %27 = call i32 @build_polexpire(%struct.sk_buff* %23, %struct.xfrm_policy* %24, i32 %25, %struct.km_event* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = load i32, i32* @XFRMNLGRP_EXPIRE, align 4
  %35 = call i32 @xfrm_nlmsg_multicast(%struct.net* %32, %struct.sk_buff* %33, i32 0, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_polexpire_msgsize(%struct.xfrm_policy*) #1

declare dso_local i32 @build_polexpire(%struct.sk_buff*, %struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xfrm_nlmsg_multicast(%struct.net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
