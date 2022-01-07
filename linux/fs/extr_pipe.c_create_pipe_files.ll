; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_create_pipe_files.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_create_pipe_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@ENFILE = common dso_local global i32 0, align 4
@pipe_mnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@pipefifo_fops = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_pipe_files(%struct.file** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.file** %0, %struct.file*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.inode* (...) @get_pipe_inode()
  store %struct.inode* %8, %struct.inode** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENFILE, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load i32, i32* @pipe_mnt, align 4
  %17 = load i32, i32* @O_WRONLY, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @O_NONBLOCK, align 4
  %20 = load i32, i32* @O_DIRECT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = or i32 %17, %22
  %24 = call %struct.file* @alloc_file_pseudo(%struct.inode* %15, i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %23, i32* @pipefifo_fops)
  store %struct.file* %24, %struct.file** %7, align 8
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = call i64 @IS_ERR(%struct.file* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @free_pipe_info(i32 %31)
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @iput(%struct.inode* %33)
  %35 = load %struct.file*, %struct.file** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.file* %35)
  store i32 %36, i32* %3, align 4
  br label %80

37:                                               ; preds = %14
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.file*, %struct.file** %7, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %44, %47
  %49 = call %struct.file* @alloc_file_clone(%struct.file* %43, i32 %48, i32* @pipefifo_fops)
  %50 = load %struct.file**, %struct.file*** %4, align 8
  %51 = getelementptr inbounds %struct.file*, %struct.file** %50, i64 0
  store %struct.file* %49, %struct.file** %51, align 8
  %52 = load %struct.file**, %struct.file*** %4, align 8
  %53 = getelementptr inbounds %struct.file*, %struct.file** %52, i64 0
  %54 = load %struct.file*, %struct.file** %53, align 8
  %55 = call i64 @IS_ERR(%struct.file* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %37
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @put_pipe_info(%struct.inode* %58, i32 %61)
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = call i32 @fput(%struct.file* %63)
  %65 = load %struct.file**, %struct.file*** %4, align 8
  %66 = getelementptr inbounds %struct.file*, %struct.file** %65, i64 0
  %67 = load %struct.file*, %struct.file** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.file* %67)
  store i32 %68, i32* %3, align 4
  br label %80

69:                                               ; preds = %37
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.file**, %struct.file*** %4, align 8
  %74 = getelementptr inbounds %struct.file*, %struct.file** %73, i64 0
  %75 = load %struct.file*, %struct.file** %74, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = load %struct.file**, %struct.file*** %4, align 8
  %79 = getelementptr inbounds %struct.file*, %struct.file** %78, i64 1
  store %struct.file* %77, %struct.file** %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %69, %57, %28, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.inode* @get_pipe_inode(...) #1

declare dso_local %struct.file* @alloc_file_pseudo(%struct.inode*, i32, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @free_pipe_info(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local %struct.file* @alloc_file_clone(%struct.file*, i32, i32*) #1

declare dso_local i32 @put_pipe_info(%struct.inode*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
