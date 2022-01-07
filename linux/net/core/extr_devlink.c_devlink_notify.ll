; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.sk_buff = type { i32 }

@DEVLINK_CMD_NEW = common dso_local global i32 0, align 4
@DEVLINK_CMD_DEL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@devlink_nl_family = common dso_local global i32 0, align 4
@DEVLINK_MCGRP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, i32)* @devlink_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_notify(%struct.devlink* %0, i32 %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DEVLINK_CMD_NEW, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DEVLINK_CMD_DEL, align 4
  %13 = icmp ne i32 %11, %12
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @nlmsg_new(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %41

24:                                               ; preds = %14
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.devlink*, %struct.devlink** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @devlink_nl_fill(%struct.sk_buff* %25, %struct.devlink* %26, i32 %27, i32 0, i32 0, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @nlmsg_free(%struct.sk_buff* %32)
  br label %41

34:                                               ; preds = %24
  %35 = load %struct.devlink*, %struct.devlink** %3, align 8
  %36 = call i32 @devlink_net(%struct.devlink* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @DEVLINK_MCGRP_CONFIG, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @genlmsg_multicast_netns(i32* @devlink_nl_family, i32 %36, %struct.sk_buff* %37, i32 0, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %31, %23
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_fill(%struct.sk_buff*, %struct.devlink*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_net(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
