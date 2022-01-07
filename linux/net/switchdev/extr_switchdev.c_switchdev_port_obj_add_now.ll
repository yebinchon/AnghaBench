; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_add_now.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_add_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.switchdev_trans = type { i32 }

@SWITCHDEV_PORT_OBJ_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Commit of object (id=%d) failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj*, %struct.netlink_ext_ack*)* @switchdev_port_obj_add_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchdev_port_obj_add_now(%struct.net_device* %0, %struct.switchdev_obj* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_obj*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.switchdev_trans, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = getelementptr inbounds %struct.switchdev_trans, %struct.switchdev_trans* %8, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @SWITCHDEV_PORT_OBJ_ADD, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %15 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %16 = call i32 @switchdev_port_obj_notify(i32 %12, %struct.net_device* %13, %struct.switchdev_obj* %14, %struct.switchdev_trans* %8, %struct.netlink_ext_ack* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.switchdev_trans, %struct.switchdev_trans* %8, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @SWITCHDEV_PORT_OBJ_ADD, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @switchdev_port_obj_notify(i32 %23, %struct.net_device* %24, %struct.switchdev_obj* %25, %struct.switchdev_trans* %8, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.switchdev_obj*, %struct.switchdev_obj** %6, align 8
  %33 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WARN(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @switchdev_port_obj_notify(i32, %struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
