; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.file = type { i32 }

@O_LARGEFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@OVL_COPY_UP_CHUNK_SIZE = common dso_local global i64 0, align 8
@TASK_KILLABLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SPLICE_F_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.path*, i64)* @ovl_copy_up_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_copy_up_data(%struct.path* %0, %struct.path* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = load %struct.path*, %struct.path** %5, align 8
  %21 = load i32, i32* @O_LARGEFILE, align 4
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.file* @ovl_path_open(%struct.path* %20, i32 %23)
  store %struct.file* %24, %struct.file** %8, align 8
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = call i64 @IS_ERR(%struct.file* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.file* %29)
  store i32 %30, i32* %4, align 4
  br label %105

31:                                               ; preds = %19
  %32 = load %struct.path*, %struct.path** %6, align 8
  %33 = load i32, i32* @O_LARGEFILE, align 4
  %34 = load i32, i32* @O_WRONLY, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.file* @ovl_path_open(%struct.path* %32, i32 %35)
  store %struct.file* %36, %struct.file** %9, align 8
  %37 = load %struct.file*, %struct.file** %9, align 8
  %38 = call i64 @IS_ERR(%struct.file* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.file*, %struct.file** %9, align 8
  %42 = call i32 @PTR_ERR(%struct.file* %41)
  store i32 %42, i32* %13, align 4
  br label %101

43:                                               ; preds = %31
  %44 = load %struct.file*, %struct.file** %8, align 8
  %45 = load %struct.file*, %struct.file** %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @do_clone_file_range(%struct.file* %44, i32 0, %struct.file* %45, i32 0, i64 %46, i32 0)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %92

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %82, %52
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load i64, i64* @OVL_COPY_UP_CHUNK_SIZE, align 8
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %14, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* @TASK_KILLABLE, align 4
  %65 = load i32, i32* @current, align 4
  %66 = call i64 @signal_pending_state(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINTR, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %91

71:                                               ; preds = %63
  %72 = load %struct.file*, %struct.file** %8, align 8
  %73 = load %struct.file*, %struct.file** %9, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* @SPLICE_F_MOVE, align 4
  %76 = call i64 @do_splice_direct(%struct.file* %72, i64* %10, %struct.file* %73, i64* %11, i64 %74, i32 %75)
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i64, i64* %15, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  br label %91

82:                                               ; preds = %71
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON(i32 %86)
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 %89, %88
  store i64 %90, i64* %7, align 8
  br label %53

91:                                               ; preds = %79, %68, %53
  br label %92

92:                                               ; preds = %91, %51
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.file*, %struct.file** %9, align 8
  %97 = call i32 @vfs_fsync(%struct.file* %96, i32 0)
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.file*, %struct.file** %9, align 8
  %100 = call i32 @fput(%struct.file* %99)
  br label %101

101:                                              ; preds = %98, %40
  %102 = load %struct.file*, %struct.file** %8, align 8
  %103 = call i32 @fput(%struct.file* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %28, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.file* @ovl_path_open(%struct.path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @do_clone_file_range(%struct.file*, i32, %struct.file*, i32, i64, i32) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i64 @do_splice_direct(%struct.file*, i64*, %struct.file*, i64*, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
