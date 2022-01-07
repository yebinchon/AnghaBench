; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_dir_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.ovl_dir_file* }
%struct.ovl_dir_file = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @ovl_dir_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_dir_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ovl_dir_file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %10, align 8
  store %struct.ovl_dir_file* %11, %struct.ovl_dir_file** %8, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i32 @file_inode(%struct.file* %12)
  %14 = call i32 @inode_lock(i32 %13)
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = call i32 @ovl_dir_reset(%struct.file* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %24 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %29 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @vfs_llseek(%struct.TYPE_2__* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %35 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %78

41:                                               ; preds = %22
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %52 [
    i32 129, label %45
    i32 128, label %51
  ]

45:                                               ; preds = %41
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %53

51:                                               ; preds = %41
  br label %53

52:                                               ; preds = %41
  br label %79

53:                                               ; preds = %51, %45
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %79

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %68 = getelementptr inbounds %struct.ovl_dir_file, %struct.ovl_dir_file* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.ovl_dir_file*, %struct.ovl_dir_file** %8, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ovl_seek_cursor(%struct.ovl_dir_file* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %27
  br label %79

79:                                               ; preds = %78, %56, %52
  %80 = load %struct.file*, %struct.file** %4, align 8
  %81 = call i32 @file_inode(%struct.file* %80)
  %82 = call i32 @inode_unlock(i32 %81)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @ovl_dir_reset(%struct.file*) #1

declare dso_local i32 @vfs_llseek(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ovl_seek_cursor(%struct.ovl_dir_file*, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
