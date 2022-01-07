; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_alloc_nilfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_alloc_nilfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@NILFS_SB_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.the_nilfs* @alloc_nilfs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.the_nilfs* @kzalloc(i32 64, i32 %5)
  store %struct.the_nilfs* %6, %struct.the_nilfs** %4, align 8
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %8 = icmp ne %struct.the_nilfs* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.the_nilfs* null, %struct.the_nilfs** %2, align 8
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %13 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %12, i32 0, i32 13
  store %struct.super_block* %11, %struct.super_block** %13, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %18 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 8
  %19 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %20 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %19, i32 0, i32 11
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %23 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %22, i32 0, i32 10
  %24 = call i32 @init_rwsem(i32* %23)
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 9
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %29 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %28, i32 0, i32 8
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 7
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %35 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %34, i32 0, i32 6
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %38 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %37, i32 0, i32 5
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %41 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %40, i32 0, i32 4
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i32, i32* @RB_ROOT, align 4
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %47 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %50 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %49, i32 0, i32 1
  %51 = call i32 @init_rwsem(i32* %50)
  %52 = load i32, i32* @NILFS_SB_FREQ, align 4
  %53 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %54 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  store %struct.the_nilfs* %55, %struct.the_nilfs** %2, align 8
  br label %56

56:                                               ; preds = %10, %9
  %57 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  ret %struct.the_nilfs* %57
}

declare dso_local %struct.the_nilfs* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
