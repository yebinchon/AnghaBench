; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_mdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_mdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.switchdev_obj_port_mdb = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.dsa_notifier_mdb_info = type { %struct.switchdev_obj_port_mdb*, %struct.switchdev_trans*, i32, i32 }

@DSA_NOTIFIER_MDB_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_mdb_add(%struct.dsa_port* %0, %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca %struct.dsa_notifier_mdb_info, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %4, align 8
  store %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_obj_port_mdb** %5, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %6, align 8
  %8 = getelementptr inbounds %struct.dsa_notifier_mdb_info, %struct.dsa_notifier_mdb_info* %7, i32 0, i32 0
  %9 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  store %struct.switchdev_obj_port_mdb* %9, %struct.switchdev_obj_port_mdb** %8, align 8
  %10 = getelementptr inbounds %struct.dsa_notifier_mdb_info, %struct.dsa_notifier_mdb_info* %7, i32 0, i32 1
  %11 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  store %struct.switchdev_trans* %11, %struct.switchdev_trans** %10, align 8
  %12 = getelementptr inbounds %struct.dsa_notifier_mdb_info, %struct.dsa_notifier_mdb_info* %7, i32 0, i32 2
  %13 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.dsa_notifier_mdb_info, %struct.dsa_notifier_mdb_info* %7, i32 0, i32 3
  %17 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %18 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %23 = load i32, i32* @DSA_NOTIFIER_MDB_ADD, align 4
  %24 = call i32 @dsa_port_notify(%struct.dsa_port* %22, i32 %23, %struct.dsa_notifier_mdb_info* %7)
  ret i32 %24
}

declare dso_local i32 @dsa_port_notify(%struct.dsa_port*, i32, %struct.dsa_notifier_mdb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
