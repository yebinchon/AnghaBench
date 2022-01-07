; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_add_gate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_add_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mesh_table* }
%struct.mesh_table = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Mesh path: Recorded new gate: %pM. %d known gates\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_path_add_gate(%struct.mesh_path* %0) #0 {
  %2 = alloca %struct.mesh_path*, align 8
  %3 = alloca %struct.mesh_table*, align 8
  %4 = alloca i32, align 4
  store %struct.mesh_path* %0, %struct.mesh_path** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %7 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.mesh_table*, %struct.mesh_table** %11, align 8
  store %struct.mesh_table* %12, %struct.mesh_table** %3, align 8
  %13 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %14 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %17 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @EEXIST, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %24 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %23, i32 0, i32 3
  %25 = call i32 @spin_unlock_bh(i32* %24)
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %28 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %30 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %38 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %41 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %40, i32 0, i32 4
  %42 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %43 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %42, i32 0, i32 1
  %44 = call i32 @hlist_add_head_rcu(i32* %41, i32* %43)
  %45 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %46 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %49 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %48, i32 0, i32 3
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %52 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %55 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mesh_path*, %struct.mesh_path** %2, align 8
  %58 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mpath_dbg(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %26, %20
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mpath_dbg(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
