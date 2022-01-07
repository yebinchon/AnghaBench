; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_fdb_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_fdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_fdb_entry = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_switchdev_fdb_notify(%struct.net_bridge_fdb_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.net_bridge_fdb_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.net_bridge_fdb_entry* %0, %struct.net_bridge_fdb_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %6 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %56

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %56 [
    i32 129, label %12
    i32 128, label %34
  ]

12:                                               ; preds = %10
  %13 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %14 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %28 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @br_switchdev_fdb_call_notifiers(i32 0, i32 %17, i32 %21, i32 %26, i32 %29, i32 %32)
  br label %56

34:                                               ; preds = %10
  %35 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %36 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %41 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %45 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %50 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %3, align 8
  %53 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @br_switchdev_fdb_call_notifiers(i32 1, i32 %39, i32 %43, i32 %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %9, %10, %34, %12
  ret void
}

declare dso_local i32 @br_switchdev_fdb_call_notifiers(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
