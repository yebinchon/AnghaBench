; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_connector_destroy_workfn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_connector_destroy_workfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_connector = type { %struct.fsnotify_mark_connector* }
%struct.work_struct = type { i32 }

@destroy_lock = common dso_local global i32 0, align 4
@connector_destroy_list = common dso_local global %struct.fsnotify_mark_connector* null, align 8
@fsnotify_mark_srcu = common dso_local global i32 0, align 4
@fsnotify_mark_connector_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @fsnotify_connector_destroy_workfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsnotify_connector_destroy_workfn(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.fsnotify_mark_connector*, align 8
  %4 = alloca %struct.fsnotify_mark_connector*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = call i32 @spin_lock(i32* @destroy_lock)
  %6 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** @connector_destroy_list, align 8
  store %struct.fsnotify_mark_connector* %6, %struct.fsnotify_mark_connector** %3, align 8
  store %struct.fsnotify_mark_connector* null, %struct.fsnotify_mark_connector** @connector_destroy_list, align 8
  %7 = call i32 @spin_unlock(i32* @destroy_lock)
  %8 = call i32 @synchronize_srcu(i32* @fsnotify_mark_srcu)
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %11 = icmp ne %struct.fsnotify_mark_connector* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  store %struct.fsnotify_mark_connector* %13, %struct.fsnotify_mark_connector** %4, align 8
  %14 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %15 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %14, i32 0, i32 0
  %16 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %15, align 8
  store %struct.fsnotify_mark_connector* %16, %struct.fsnotify_mark_connector** %3, align 8
  %17 = load i32, i32* @fsnotify_mark_connector_cachep, align 4
  %18 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %4, align 8
  %19 = call i32 @kmem_cache_free(i32 %17, %struct.fsnotify_mark_connector* %18)
  br label %9

20:                                               ; preds = %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fsnotify_mark_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
