; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_struct.c_copy_fs_struct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_struct.c_copy_fs_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_struct = type { i32, i32, i32, i32, i32, i32, i64 }

@fs_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* %0) #0 {
  %2 = alloca %struct.fs_struct*, align 8
  %3 = alloca %struct.fs_struct*, align 8
  store %struct.fs_struct* %0, %struct.fs_struct** %2, align 8
  %4 = load i32, i32* @fs_cachep, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.fs_struct* @kmem_cache_alloc(i32 %4, i32 %5)
  store %struct.fs_struct* %6, %struct.fs_struct** %3, align 8
  %7 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %8 = icmp ne %struct.fs_struct* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %11 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %13 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %15 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %18 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %17, i32 0, i32 5
  %19 = call i32 @seqcount_init(i32* %18)
  %20 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %21 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %24 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %26 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %29 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %32 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %34 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %33, i32 0, i32 3
  %35 = call i32 @path_get(i32* %34)
  %36 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %37 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %40 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  %42 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %41, i32 0, i32 2
  %43 = call i32 @path_get(i32* %42)
  %44 = load %struct.fs_struct*, %struct.fs_struct** %2, align 8
  %45 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %9, %1
  %48 = load %struct.fs_struct*, %struct.fs_struct** %3, align 8
  ret %struct.fs_struct* %48
}

declare dso_local %struct.fs_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @path_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
