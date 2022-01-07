; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap_item = type { i32 }
%struct.sk_buff = type { i32 }

@DEVLINK_CMD_TRAP_NEW = common dso_local global i32 0, align 4
@DEVLINK_CMD_TRAP_DEL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@devlink_nl_family = common dso_local global i32 0, align 4
@DEVLINK_MCGRP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, %struct.devlink_trap_item*, i32)* @devlink_trap_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_trap_notify(%struct.devlink* %0, %struct.devlink_trap_item* %1, i32 %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_trap_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.devlink_trap_item* %1, %struct.devlink_trap_item** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @DEVLINK_CMD_TRAP_NEW, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DEVLINK_CMD_TRAP_DEL, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.sk_buff* @nlmsg_new(i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load %struct.devlink*, %struct.devlink** %4, align 8
  %29 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @devlink_nl_trap_fill(%struct.sk_buff* %27, %struct.devlink* %28, %struct.devlink_trap_item* %29, i32 %30, i32 0, i32 0, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @nlmsg_free(%struct.sk_buff* %35)
  br label %44

37:                                               ; preds = %26
  %38 = load %struct.devlink*, %struct.devlink** %4, align 8
  %39 = call i32 @devlink_net(%struct.devlink* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* @DEVLINK_MCGRP_CONFIG, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @genlmsg_multicast_netns(i32* @devlink_nl_family, i32 %39, %struct.sk_buff* %40, i32 0, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %34, %25
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_trap_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_trap_item*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_net(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
