; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_anon_inodes.c_anon_inode_getfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_anon_inodes.c_anon_inode_getfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, i32, i32 }
%struct.file_operations = type { i64 }

@anon_inode_inode = common dso_local global %struct.file* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@anon_inode_mnt = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @anon_inode_getfile(i8* %0, %struct.file_operations* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.file_operations* %1, %struct.file_operations** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.file*, %struct.file** @anon_inode_inode, align 8
  %12 = call i64 @IS_ERR(%struct.file* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.file* @ERR_PTR(i32 %16)
  store %struct.file* %17, %struct.file** %5, align 8
  br label %68

18:                                               ; preds = %4
  %19 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %20 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %25 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @try_module_get(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.file* @ERR_PTR(i32 %31)
  store %struct.file* %32, %struct.file** %5, align 8
  br label %68

33:                                               ; preds = %23, %18
  %34 = load %struct.file*, %struct.file** @anon_inode_inode, align 8
  %35 = call i32 @ihold(%struct.file* %34)
  %36 = load %struct.file*, %struct.file** @anon_inode_inode, align 8
  %37 = load i32, i32* @anon_inode_mnt, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @O_ACCMODE, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %45 = call %struct.file* @alloc_file_pseudo(%struct.file* %36, i32 %37, i8* %38, i32 %43, %struct.file_operations* %44)
  store %struct.file* %45, %struct.file** %10, align 8
  %46 = load %struct.file*, %struct.file** %10, align 8
  %47 = call i64 @IS_ERR(%struct.file* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %60

50:                                               ; preds = %33
  %51 = load %struct.file*, %struct.file** @anon_inode_inode, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.file*, %struct.file** %10, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.file*, %struct.file** %10, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %59, %struct.file** %5, align 8
  br label %68

60:                                               ; preds = %49
  %61 = load %struct.file*, %struct.file** @anon_inode_inode, align 8
  %62 = call i32 @iput(%struct.file* %61)
  %63 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %64 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @module_put(i64 %65)
  %67 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %67, %struct.file** %5, align 8
  br label %68

68:                                               ; preds = %60, %50, %29, %14
  %69 = load %struct.file*, %struct.file** %5, align 8
  ret %struct.file* %69
}

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @try_module_get(i64) #1

declare dso_local i32 @ihold(%struct.file*) #1

declare dso_local %struct.file* @alloc_file_pseudo(%struct.file*, i32, i8*, i32, %struct.file_operations*) #1

declare dso_local i32 @iput(%struct.file*) #1

declare dso_local i32 @module_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
