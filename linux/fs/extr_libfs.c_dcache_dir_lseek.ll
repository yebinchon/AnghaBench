; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_dcache_dir_lseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_dcache_dir_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.dentry*, %struct.TYPE_2__ }
%struct.dentry = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcache_dir_lseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %8, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %27 [
    i32 1, label %16
    i32 0, label %22
  ]

16:                                               ; preds = %3
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %3, %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %30

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %3, %26
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %84

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %30
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  %39 = load %struct.dentry*, %struct.dentry** %38, align 8
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @inode_lock_shared(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 3
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 2
  %52 = call %struct.dentry* @scan_positives(%struct.dentry* %47, i32* %49, i32 %51, i32* null)
  store %struct.dentry* %52, %struct.dentry** %10, align 8
  br label %53

53:                                               ; preds = %46, %36
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  %58 = icmp ne %struct.dentry* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 2
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 2
  %64 = call i32 @list_move(i32* %61, i32* %63)
  br label %69

65:                                               ; preds = %53
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 2
  %68 = call i32 @list_del_init(i32* %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.dentry*, %struct.dentry** %8, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.dentry*, %struct.dentry** %10, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @inode_unlock_shared(i32 %80)
  br label %82

82:                                               ; preds = %69, %30
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %27
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @inode_lock_shared(i32) #1

declare dso_local %struct.dentry* @scan_positives(%struct.dentry*, i32*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock_shared(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
