; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_unsplit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_unsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)* @devlink_port_unsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_port_unsplit(%struct.devlink* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %8 = load %struct.devlink*, %struct.devlink** %5, align 8
  %9 = getelementptr inbounds %struct.devlink, %struct.devlink* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)**
  %13 = load i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)** %12, align 8
  %14 = icmp ne i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.devlink*, %struct.devlink** %5, align 8
  %17 = getelementptr inbounds %struct.devlink, %struct.devlink* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)**
  %21 = load i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)** %20, align 8
  %22 = load %struct.devlink*, %struct.devlink** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %25 = call i32 %21(%struct.devlink* %22, i32 %23, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
