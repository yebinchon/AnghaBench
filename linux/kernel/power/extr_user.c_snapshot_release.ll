; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_user.c_snapshot_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_user.c_snapshot_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snapshot_data* }
%struct.snapshot_data = type { i64, i64, i64, i32 }

@O_RDONLY = common dso_local global i64 0, align 8
@PM_POST_HIBERNATION = common dso_local global i32 0, align 4
@PM_POST_RESTORE = common dso_local global i32 0, align 4
@snapshot_device_available = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snapshot_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snapshot_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = call i32 (...) @lock_system_sleep()
  %7 = call i32 (...) @swsusp_free()
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.snapshot_data*, %struct.snapshot_data** %9, align 8
  store %struct.snapshot_data* %10, %struct.snapshot_data** %5, align 8
  %11 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %12 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @free_all_swap_pages(i32 %13)
  %15 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %16 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i32 (...) @pm_restore_gfp_mask()
  %21 = call i32 (...) @free_basic_memory_bitmaps()
  %22 = call i32 (...) @thaw_processes()
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %25 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @free_basic_memory_bitmaps()
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.snapshot_data*, %struct.snapshot_data** %5, align 8
  %33 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @O_RDONLY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @PM_POST_HIBERNATION, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @PM_POST_RESTORE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @pm_notifier_call_chain(i32 %42)
  %44 = call i32 @atomic_inc(i32* @snapshot_device_available)
  %45 = call i32 (...) @unlock_system_sleep()
  ret i32 0
}

declare dso_local i32 @lock_system_sleep(...) #1

declare dso_local i32 @swsusp_free(...) #1

declare dso_local i32 @free_all_swap_pages(i32) #1

declare dso_local i32 @pm_restore_gfp_mask(...) #1

declare dso_local i32 @free_basic_memory_bitmaps(...) #1

declare dso_local i32 @thaw_processes(...) #1

declare dso_local i32 @pm_notifier_call_chain(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @unlock_system_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
