; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_user.c_snapshot_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_user.c_snapshot_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.snapshot_data* }

@EPERM = common dso_local global i32 0, align 4
@snapshot_device_available = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@snapshot_state = common dso_local global %struct.snapshot_data zeroinitializer, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@swsusp_resume_device = common dso_local global i64 0, align 8
@PM_HIBERNATION_PREPARE = common dso_local global i32 0, align 4
@PM_POST_HIBERNATION = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@PM_RESTORE_PREPARE = common dso_local global i32 0, align 4
@PM_POST_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snapshot_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snapshot_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snapshot_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @hibernation_available()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = call i32 (...) @lock_system_sleep()
  %16 = call i32 @atomic_add_unless(i32* @snapshot_device_available, i32 -1, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %118

21:                                               ; preds = %14
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @O_ACCMODE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = call i32 @atomic_inc(i32* @snapshot_device_available)
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %118

33:                                               ; preds = %21
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = call i32 @nonseekable_open(%struct.inode* %34, %struct.file* %35)
  store %struct.snapshot_data* @snapshot_state, %struct.snapshot_data** %6, align 8
  %37 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  store %struct.snapshot_data* %37, %struct.snapshot_data** %39, align 8
  %40 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %41 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %40, i32 0, i32 6
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @O_ACCMODE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @O_RDONLY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %33
  %51 = load i64, i64* @swsusp_resume_device, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* @swsusp_resume_device, align 8
  %55 = call i32 @swap_type_of(i64 %54, i32 0, i32* null)
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ -1, %56 ]
  %59 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %60 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @O_RDONLY, align 4
  %62 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %63 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %65 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @PM_HIBERNATION_PREPARE, align 4
  %67 = call i32 @__pm_notifier_call_chain(i32 %66, i32 -1, i32* %8)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load i32, i32* @PM_POST_HIBERNATION, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = call i32 @__pm_notifier_call_chain(i32 %71, i32 %73, i32* null)
  br label %75

75:                                               ; preds = %70, %57
  br label %106

76:                                               ; preds = %33
  %77 = call i32 (...) @wait_for_device_probe()
  %78 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %79 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 4
  %80 = load i32, i32* @O_WRONLY, align 4
  %81 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %82 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @PM_RESTORE_PREPARE, align 4
  %84 = call i32 @__pm_notifier_call_chain(i32 %83, i32 -1, i32* %8)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %76
  %88 = call i32 (...) @create_basic_memory_bitmaps()
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %94 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %98

95:                                               ; preds = %76
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* @PM_POST_RESTORE, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @__pm_notifier_call_chain(i32 %102, i32 %103, i32* null)
  br label %105

105:                                              ; preds = %101, %98
  br label %106

106:                                              ; preds = %105, %75
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @atomic_inc(i32* @snapshot_device_available)
  br label %111

111:                                              ; preds = %109, %106
  %112 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %113 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %112, i32 0, i32 3
  store i32 0, i32* %113, align 4
  %114 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %115 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %114, i32 0, i32 4
  store i32 0, i32* %115, align 4
  %116 = load %struct.snapshot_data*, %struct.snapshot_data** %6, align 8
  %117 = getelementptr inbounds %struct.snapshot_data, %struct.snapshot_data* %116, i32 0, i32 5
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %29, %18
  %119 = call i32 (...) @unlock_system_sleep()
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %11
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @hibernation_available(...) #1

declare dso_local i32 @lock_system_sleep(...) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @swap_type_of(i64, i32, i32*) #1

declare dso_local i32 @__pm_notifier_call_chain(i32, i32, i32*) #1

declare dso_local i32 @wait_for_device_probe(...) #1

declare dso_local i32 @create_basic_memory_bitmaps(...) #1

declare dso_local i32 @unlock_system_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
