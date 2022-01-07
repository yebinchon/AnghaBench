; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_run_down.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-bufmap.c_orangefs_bufmap_run_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_bufmap = type { i32 }

@__orangefs_bufmap = common dso_local global %struct.orangefs_bufmap* null, align 8
@rw_map = common dso_local global i32 0, align 4
@readdir_map = common dso_local global i32 0, align 4
@orangefs_bufmap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @orangefs_bufmap_run_down() #0 {
  %1 = alloca %struct.orangefs_bufmap*, align 8
  %2 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** @__orangefs_bufmap, align 8
  store %struct.orangefs_bufmap* %2, %struct.orangefs_bufmap** %1, align 8
  %3 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %1, align 8
  %4 = icmp ne %struct.orangefs_bufmap* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %15

6:                                                ; preds = %0
  %7 = call i32 @run_down(i32* @rw_map)
  %8 = call i32 @run_down(i32* @readdir_map)
  %9 = call i32 @spin_lock(i32* @orangefs_bufmap_lock)
  store %struct.orangefs_bufmap* null, %struct.orangefs_bufmap** @__orangefs_bufmap, align 8
  %10 = call i32 @spin_unlock(i32* @orangefs_bufmap_lock)
  %11 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %1, align 8
  %12 = call i32 @orangefs_bufmap_unmap(%struct.orangefs_bufmap* %11)
  %13 = load %struct.orangefs_bufmap*, %struct.orangefs_bufmap** %1, align 8
  %14 = call i32 @orangefs_bufmap_free(%struct.orangefs_bufmap* %13)
  br label %15

15:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @run_down(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @orangefs_bufmap_unmap(%struct.orangefs_bufmap*) #1

declare dso_local i32 @orangefs_bufmap_free(%struct.orangefs_bufmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
