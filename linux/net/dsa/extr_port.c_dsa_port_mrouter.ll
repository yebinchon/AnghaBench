; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_mrouter.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_mrouter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32, i32)* }
%struct.switchdev_trans = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_mrouter(%struct.dsa_port* %0, i32 %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %10 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %8, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %5, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %17 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dsa_switch*, i32, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.dsa_switch*, i32, i32, i32)* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %27 ]
  store i32 %31, i32* %4, align 4
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %34 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dsa_switch*, i32, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32, i32)** %36, align 8
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 %37(%struct.dsa_switch* %38, i32 %39, i32 1, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
