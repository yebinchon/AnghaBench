; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_group.c_fsnotify_alloc_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_group.c_fsnotify_alloc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { %struct.fsnotify_ops*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsnotify_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsnotify_group* @fsnotify_alloc_group(%struct.fsnotify_ops* %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  %3 = alloca %struct.fsnotify_ops*, align 8
  %4 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_ops* %0, %struct.fsnotify_ops** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.fsnotify_group* @kzalloc(i32 48, i32 %5)
  store %struct.fsnotify_group* %6, %struct.fsnotify_group** %4, align 8
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %8 = icmp ne %struct.fsnotify_group* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.fsnotify_group* @ERR_PTR(i32 %11)
  store %struct.fsnotify_group* %12, %struct.fsnotify_group** %2, align 8
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %15 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %14, i32 0, i32 9
  %16 = call i32 @refcount_set(i32* %15, i32 1)
  %17 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %18 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %17, i32 0, i32 8
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %21 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %20, i32 0, i32 7
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %24 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %23, i32 0, i32 6
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %27 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %26, i32 0, i32 5
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %30 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %29, i32 0, i32 4
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load i32, i32* @UINT_MAX, align 4
  %33 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %34 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %36 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %35, i32 0, i32 2
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %39 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %38, i32 0, i32 1
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.fsnotify_ops*, %struct.fsnotify_ops** %3, align 8
  %42 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %43 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %42, i32 0, i32 0
  store %struct.fsnotify_ops* %41, %struct.fsnotify_ops** %43, align 8
  %44 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  store %struct.fsnotify_group* %44, %struct.fsnotify_group** %2, align 8
  br label %45

45:                                               ; preds = %13, %9
  %46 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  ret %struct.fsnotify_group* %46
}

declare dso_local %struct.fsnotify_group* @kzalloc(i32, i32) #1

declare dso_local %struct.fsnotify_group* @ERR_PTR(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
