; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param_item = type { i32 }
%struct.sk_buff = type { i32 }

@DEVLINK_CMD_PARAM_NEW = common dso_local global i32 0, align 4
@DEVLINK_CMD_PARAM_DEL = common dso_local global i32 0, align 4
@DEVLINK_CMD_PORT_PARAM_NEW = common dso_local global i32 0, align 4
@DEVLINK_CMD_PORT_PARAM_DEL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@devlink_nl_family = common dso_local global i32 0, align 4
@DEVLINK_MCGRP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, i32, %struct.devlink_param_item*, i32)* @devlink_param_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_param_notify(%struct.devlink* %0, i32 %1, %struct.devlink_param_item* %2, i32 %3) #0 {
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_param_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.devlink_param_item* %2, %struct.devlink_param_item** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @DEVLINK_CMD_PARAM_NEW, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @DEVLINK_CMD_PARAM_DEL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DEVLINK_CMD_PORT_PARAM_NEW, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DEVLINK_CMD_PORT_PARAM_DEL, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18, %14, %4
  %27 = phi i1 [ false, %18 ], [ false, %14 ], [ false, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff* @nlmsg_new(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %9, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %55

36:                                               ; preds = %26
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load %struct.devlink*, %struct.devlink** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.devlink_param_item*, %struct.devlink_param_item** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @devlink_nl_param_fill(%struct.sk_buff* %37, %struct.devlink* %38, i32 %39, %struct.devlink_param_item* %40, i32 %41, i32 0, i32 0, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = call i32 @nlmsg_free(%struct.sk_buff* %46)
  br label %55

48:                                               ; preds = %36
  %49 = load %struct.devlink*, %struct.devlink** %5, align 8
  %50 = call i32 @devlink_net(%struct.devlink* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i32, i32* @DEVLINK_MCGRP_CONFIG, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @genlmsg_multicast_netns(i32* @devlink_nl_family, i32 %50, %struct.sk_buff* %51, i32 0, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %45, %35
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_param_fill(%struct.sk_buff*, %struct.devlink*, i32, %struct.devlink_param_item*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_net(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
