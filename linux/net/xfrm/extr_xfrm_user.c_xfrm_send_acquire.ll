; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_send_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_send_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_policy = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMNLGRP_ACQUIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*)* @xfrm_send_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_send_acquire(%struct.xfrm_state* %0, %struct.xfrm_tmpl* %1, %struct.xfrm_policy* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_tmpl*, align 8
  %7 = alloca %struct.xfrm_policy*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %6, align 8
  store %struct.xfrm_policy* %2, %struct.xfrm_policy** %7, align 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %12 = call %struct.net* @xs_net(%struct.xfrm_state* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %14 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %15 = call i32 @xfrm_acquire_msgsize(%struct.xfrm_state* %13, %struct.xfrm_policy* %14)
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @nlmsg_new(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = icmp eq %struct.sk_buff* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %26 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %6, align 8
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %7, align 8
  %28 = call i32 @build_acquire(%struct.sk_buff* %24, %struct.xfrm_state* %25, %struct.xfrm_tmpl* %26, %struct.xfrm_policy* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.net*, %struct.net** %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = load i32, i32* @XFRMNLGRP_ACQUIRE, align 4
  %36 = call i32 @xfrm_nlmsg_multicast(%struct.net* %33, %struct.sk_buff* %34, i32 0, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %23, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_acquire_msgsize(%struct.xfrm_state*, %struct.xfrm_policy*) #1

declare dso_local i32 @build_acquire(%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xfrm_nlmsg_multicast(%struct.net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
