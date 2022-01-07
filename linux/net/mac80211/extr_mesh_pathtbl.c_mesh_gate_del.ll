; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_gate_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_gate_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i32 }
%struct.mesh_path = type { i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Mesh path: Deleted gate: %pM. %d known gates\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_table*, %struct.mesh_path*)* @mesh_gate_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_gate_del(%struct.mesh_table* %0, %struct.mesh_path* %1) #0 {
  %3 = alloca %struct.mesh_table*, align 8
  %4 = alloca %struct.mesh_path*, align 8
  store %struct.mesh_table* %0, %struct.mesh_table** %3, align 8
  store %struct.mesh_path* %1, %struct.mesh_path** %4, align 8
  %5 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %6 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %5, i32 0, i32 4
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %9 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %15 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %17 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %20 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %19, i32 0, i32 3
  %21 = call i32 @hlist_del_rcu(i32* %20)
  %22 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %23 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %31 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %34 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %37 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %40 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mpath_dbg(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %45)
  br label %47

47:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mpath_dbg(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
