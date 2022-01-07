; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_tc_pool_bind_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_sb_tc_pool_bind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.devlink_ops* }
%struct.devlink_ops = type { i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @devlink_sb_tc_pool_bind_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_sb_tc_pool_bind_set(%struct.devlink_port* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.devlink_ops*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %17 = load %struct.devlink_port*, %struct.devlink_port** %9, align 8
  %18 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.devlink_ops*, %struct.devlink_ops** %20, align 8
  store %struct.devlink_ops* %21, %struct.devlink_ops** %16, align 8
  %22 = load %struct.devlink_ops*, %struct.devlink_ops** %16, align 8
  %23 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)** %23, align 8
  %25 = icmp ne i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %7
  %27 = load %struct.devlink_ops*, %struct.devlink_ops** %16, align 8
  %28 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink_port*, i32, i32, i32, i32, i32, %struct.netlink_ext_ack*)** %28, align 8
  %30 = load %struct.devlink_port*, %struct.devlink_port** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %37 = call i32 %29(%struct.devlink_port* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %7
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
