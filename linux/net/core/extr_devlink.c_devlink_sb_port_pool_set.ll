; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_port_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_port_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.devlink_ops* }
%struct.devlink_ops = type { {}* }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)* @devlink_sb_port_pool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_sb_port_pool_set(%struct.devlink_port* %0, i32 %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.devlink_ops*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %14 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.devlink_ops*, %struct.devlink_ops** %16, align 8
  store %struct.devlink_ops* %17, %struct.devlink_ops** %12, align 8
  %18 = load %struct.devlink_ops*, %struct.devlink_ops** %12, align 8
  %19 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)**
  %21 = load i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)** %20, align 8
  %22 = icmp ne i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load %struct.devlink_ops*, %struct.devlink_ops** %12, align 8
  %25 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)**
  %27 = load i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink_port*, i32, i32, i32, %struct.netlink_ext_ack*)** %26, align 8
  %28 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %33 = call i32 %27(%struct.devlink_port* %28, i32 %29, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
