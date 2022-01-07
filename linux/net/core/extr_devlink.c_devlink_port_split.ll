; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_split.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)* @devlink_port_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_port_split(%struct.devlink* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.devlink*, %struct.devlink** %6, align 8
  %11 = getelementptr inbounds %struct.devlink, %struct.devlink* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)**
  %15 = load i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)** %14, align 8
  %16 = icmp ne i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.devlink*, %struct.devlink** %6, align 8
  %19 = getelementptr inbounds %struct.devlink, %struct.devlink* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)**
  %23 = load i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)** %22, align 8
  %24 = load %struct.devlink*, %struct.devlink** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %28 = call i32 %23(%struct.devlink* %24, i32 %25, i32 %26, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
