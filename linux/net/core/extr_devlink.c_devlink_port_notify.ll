; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32, %struct.devlink* }
%struct.devlink = type { i32 }
%struct.sk_buff = type { i32 }

@DEVLINK_CMD_PORT_NEW = common dso_local global i32 0, align 4
@DEVLINK_CMD_PORT_DEL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@devlink_nl_family = common dso_local global i32 0, align 4
@DEVLINK_MCGRP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_port*, i32)* @devlink_port_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_port_notify(%struct.devlink_port* %0, i32 %1) #0 {
  %3 = alloca %struct.devlink_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.devlink_port* %0, %struct.devlink_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %9 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %8, i32 0, i32 1
  %10 = load %struct.devlink*, %struct.devlink** %9, align 8
  store %struct.devlink* %10, %struct.devlink** %5, align 8
  %11 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %12 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DEVLINK_CMD_PORT_NEW, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DEVLINK_CMD_PORT_DEL, align 4
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_buff* @nlmsg_new(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load %struct.devlink*, %struct.devlink** %5, align 8
  %37 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @devlink_nl_port_fill(%struct.sk_buff* %35, %struct.devlink* %36, %struct.devlink_port* %37, i32 %38, i32 0, i32 0, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @nlmsg_free(%struct.sk_buff* %43)
  br label %52

45:                                               ; preds = %34
  %46 = load %struct.devlink*, %struct.devlink** %5, align 8
  %47 = call i32 @devlink_net(%struct.devlink* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @DEVLINK_MCGRP_CONFIG, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @genlmsg_multicast_netns(i32* @devlink_nl_family, i32 %47, %struct.sk_buff* %48, i32 0, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %42, %33, %15
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_port_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_port*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_net(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
