; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_type_should_warn.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_type_should_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DEVLINK_PORT_FLAVOUR_CPU = common dso_local global i64 0, align 8
@DEVLINK_PORT_FLAVOUR_DSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*)* @devlink_port_type_should_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_port_type_should_warn(%struct.devlink_port* %0) #0 {
  %2 = alloca %struct.devlink_port*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %2, align 8
  %3 = load %struct.devlink_port*, %struct.devlink_port** %2, align 8
  %4 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DEVLINK_PORT_FLAVOUR_CPU, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.devlink_port*, %struct.devlink_port** %2, align 8
  %11 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DEVLINK_PORT_FLAVOUR_DSA, align 8
  %15 = icmp ne i64 %13, %14
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ false, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
