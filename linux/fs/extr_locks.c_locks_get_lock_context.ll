; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_get_lock_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_get_lock_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock_context = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }

@F_UNLCK = common dso_local global i32 0, align 4
@flctx_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_lock_context* (%struct.inode*, i32)* @locks_get_lock_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_lock_context* @locks_get_lock_context(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_lock_context*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call %struct.file_lock_context* @smp_load_acquire(i32* %7)
  store %struct.file_lock_context* %8, %struct.file_lock_context** %5, align 8
  %9 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %10 = call i64 @likely(%struct.file_lock_context* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @F_UNLCK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  br label %50

17:                                               ; preds = %12
  %18 = load i32, i32* @flctx_cache, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.file_lock_context* @kmem_cache_alloc(i32 %18, i32 %19)
  store %struct.file_lock_context* %20, %struct.file_lock_context** %5, align 8
  %21 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %22 = icmp ne %struct.file_lock_context* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %50

24:                                               ; preds = %17
  %25 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %26 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %25, i32 0, i32 3
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %29 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %28, i32 0, i32 2
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %32 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %35 = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %40 = call i64 @cmpxchg(i32* %38, i32* null, %struct.file_lock_context* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load i32, i32* @flctx_cache, align 4
  %44 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %45 = call i32 @kmem_cache_free(i32 %43, %struct.file_lock_context* %44)
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = call %struct.file_lock_context* @smp_load_acquire(i32* %47)
  store %struct.file_lock_context* %48, %struct.file_lock_context** %5, align 8
  br label %49

49:                                               ; preds = %42, %24
  br label %50

50:                                               ; preds = %49, %23, %16
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  %54 = call i32 @trace_locks_get_lock_context(%struct.inode* %51, i32 %52, %struct.file_lock_context* %53)
  %55 = load %struct.file_lock_context*, %struct.file_lock_context** %5, align 8
  ret %struct.file_lock_context* %55
}

declare dso_local %struct.file_lock_context* @smp_load_acquire(i32*) #1

declare dso_local i64 @likely(%struct.file_lock_context*) #1

declare dso_local %struct.file_lock_context* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @cmpxchg(i32*, i32*, %struct.file_lock_context*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.file_lock_context*) #1

declare dso_local i32 @trace_locks_get_lock_context(%struct.inode*, i32, %struct.file_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
