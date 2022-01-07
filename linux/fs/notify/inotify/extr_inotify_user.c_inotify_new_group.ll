; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_new_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_new_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fsnotify_group = type { i32, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.inotify_event_info = type { i32, i64, i64, i32, i32 }

@inotify_fsnotify_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_Q_OVERFLOW = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@UCOUNT_INOTIFY_INSTANCES = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsnotify_group* (i32)* @inotify_new_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsnotify_group* @inotify_new_group(i32 %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsnotify_group*, align 8
  %5 = alloca %struct.inotify_event_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.fsnotify_group* @fsnotify_alloc_group(i32* @inotify_fsnotify_ops)
  store %struct.fsnotify_group* %6, %struct.fsnotify_group** %4, align 8
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %8 = call i64 @IS_ERR(%struct.fsnotify_group* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  store %struct.fsnotify_group* %11, %struct.fsnotify_group** %2, align 8
  br label %82

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.inotify_event_info* @kmalloc(i32 32, i32 %13)
  store %struct.inotify_event_info* %14, %struct.inotify_event_info** %5, align 8
  %15 = load %struct.inotify_event_info*, %struct.inotify_event_info** %5, align 8
  %16 = icmp ne %struct.inotify_event_info* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %23 = call i32 @fsnotify_destroy_group(%struct.fsnotify_group* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.fsnotify_group* @ERR_PTR(i32 %25)
  store %struct.fsnotify_group* %26, %struct.fsnotify_group** %2, align 8
  br label %82

27:                                               ; preds = %12
  %28 = load %struct.inotify_event_info*, %struct.inotify_event_info** %5, align 8
  %29 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %28, i32 0, i32 4
  %30 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %31 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %33 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @fsnotify_init_event(i32* %34, i32* null)
  %36 = load i32, i32* @FS_Q_OVERFLOW, align 4
  %37 = load %struct.inotify_event_info*, %struct.inotify_event_info** %5, align 8
  %38 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.inotify_event_info*, %struct.inotify_event_info** %5, align 8
  %40 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load %struct.inotify_event_info*, %struct.inotify_event_info** %5, align 8
  %42 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.inotify_event_info*, %struct.inotify_event_info** %5, align 8
  %44 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %47 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @get_mem_cgroup_from_mm(i32 %50)
  %52 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %53 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %55 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %59 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i32 @idr_init(i32* %60)
  %62 = call i32 (...) @current_user_ns()
  %63 = call i32 (...) @current_euid()
  %64 = load i32, i32* @UCOUNT_INOTIFY_INSTANCES, align 4
  %65 = call i32 @inc_ucount(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %67 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %70 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %27
  %75 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %76 = call i32 @fsnotify_destroy_group(%struct.fsnotify_group* %75)
  %77 = load i32, i32* @EMFILE, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.fsnotify_group* @ERR_PTR(i32 %78)
  store %struct.fsnotify_group* %79, %struct.fsnotify_group** %2, align 8
  br label %82

80:                                               ; preds = %27
  %81 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  store %struct.fsnotify_group* %81, %struct.fsnotify_group** %2, align 8
  br label %82

82:                                               ; preds = %80, %74, %21, %10
  %83 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  ret %struct.fsnotify_group* %83
}

declare dso_local %struct.fsnotify_group* @fsnotify_alloc_group(i32*) #1

declare dso_local i64 @IS_ERR(%struct.fsnotify_group*) #1

declare dso_local %struct.inotify_event_info* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fsnotify_destroy_group(%struct.fsnotify_group*) #1

declare dso_local %struct.fsnotify_group* @ERR_PTR(i32) #1

declare dso_local i32 @fsnotify_init_event(i32*, i32*) #1

declare dso_local i32 @get_mem_cgroup_from_mm(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @inc_ucount(i32, i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @current_euid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
