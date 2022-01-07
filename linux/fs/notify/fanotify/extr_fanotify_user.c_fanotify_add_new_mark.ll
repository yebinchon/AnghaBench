; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_add_new_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_add_new_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32 }
%struct.fsnotify_group = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@fanotify_mark_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsnotify_mark* (%struct.fsnotify_group*, i32*, i32, i32*)* @fanotify_add_new_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsnotify_mark* @fanotify_add_new_mark(%struct.fsnotify_group* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.fsnotify_mark*, align 8
  %6 = alloca %struct.fsnotify_group*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fsnotify_mark*, align 8
  %11 = alloca i32, align 4
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %13 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  %15 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %16 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.fsnotify_mark* @ERR_PTR(i32 %22)
  store %struct.fsnotify_mark* %23, %struct.fsnotify_mark** %5, align 8
  br label %52

24:                                               ; preds = %4
  %25 = load i32, i32* @fanotify_mark_cache, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.fsnotify_mark* @kmem_cache_alloc(i32 %25, i32 %26)
  store %struct.fsnotify_mark* %27, %struct.fsnotify_mark** %10, align 8
  %28 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %29 = icmp ne %struct.fsnotify_mark* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.fsnotify_mark* @ERR_PTR(i32 %32)
  store %struct.fsnotify_mark* %33, %struct.fsnotify_mark** %5, align 8
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %37 = call i32 @fsnotify_init_mark(%struct.fsnotify_mark* %35, %struct.fsnotify_group* %36)
  %38 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @fsnotify_add_mark_locked(%struct.fsnotify_mark* %38, i32* %39, i32 %40, i32 0, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %47 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %46)
  %48 = load i32, i32* %11, align 4
  %49 = call %struct.fsnotify_mark* @ERR_PTR(i32 %48)
  store %struct.fsnotify_mark* %49, %struct.fsnotify_mark** %5, align 8
  br label %52

50:                                               ; preds = %34
  %51 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  store %struct.fsnotify_mark* %51, %struct.fsnotify_mark** %5, align 8
  br label %52

52:                                               ; preds = %50, %45, %30, %20
  %53 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  ret %struct.fsnotify_mark* %53
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.fsnotify_mark* @ERR_PTR(i32) #1

declare dso_local %struct.fsnotify_mark* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @fsnotify_init_mark(%struct.fsnotify_mark*, %struct.fsnotify_group*) #1

declare dso_local i32 @fsnotify_add_mark_locked(%struct.fsnotify_mark*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
