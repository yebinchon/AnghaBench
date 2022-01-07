; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_send_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_send_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }

@IPPROTO_ESP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRMNLGRP_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32*, i32)* @xfrm_send_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_send_mapping(%struct.xfrm_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %12 = call %struct.net* @xs_net(%struct.xfrm_state* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPPROTO_ESP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %22
  %31 = call i32 (...) @xfrm_mapping_msgsize()
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.sk_buff* @nlmsg_new(i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @build_mapping(%struct.sk_buff* %40, %struct.xfrm_state* %41, i32* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load i32, i32* @XFRMNLGRP_MAPPING, align 4
  %52 = call i32 @xfrm_nlmsg_multicast(%struct.net* %49, %struct.sk_buff* %50, i32 0, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %39, %36, %27, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @xfrm_mapping_msgsize(...) #1

declare dso_local i32 @build_mapping(%struct.sk_buff*, %struct.xfrm_state*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xfrm_nlmsg_multicast(%struct.net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
