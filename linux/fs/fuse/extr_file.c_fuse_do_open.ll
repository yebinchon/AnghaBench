; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_do_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32, i32, i64 }
%struct.fuse_open_out = type { i32, i64 }

@FUSE_OPENDIR = common dso_local global i32 0, align 4
@FUSE_OPEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FOPEN_KEEP_CACHE = common dso_local global i32 0, align 4
@FOPEN_CACHE_DIR = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@FOPEN_DIRECT_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_do_open(%struct.fuse_conn* %0, i32 %1, %struct.file* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fuse_open_out, align 8
  %13 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @FUSE_OPENDIR, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @FUSE_OPEN, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %11, align 4
  %22 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %23 = call %struct.fuse_file* @fuse_file_alloc(%struct.fuse_conn* %22)
  store %struct.fuse_file* %23, %struct.fuse_file** %10, align 8
  %24 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %25 = icmp ne %struct.fuse_file* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %110

29:                                               ; preds = %20
  %30 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %31 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @FOPEN_KEEP_CACHE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @FOPEN_CACHE_DIR, align 4
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = or i32 %32, %39
  %41 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %42 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %93, label %55

50:                                               ; preds = %38
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %52 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.file*, %struct.file** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @fuse_send_open(%struct.fuse_conn* %56, i32 %57, %struct.file* %58, i32 %59, %struct.fuse_open_out* %12)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %12, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %67 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = getelementptr inbounds %struct.fuse_open_out, %struct.fuse_open_out* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %71 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %92

72:                                               ; preds = %55
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @ENOSYS, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %79 = call i32 @fuse_file_free(%struct.fuse_file* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %110

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %86 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %90

87:                                               ; preds = %81
  %88 = load %struct.fuse_conn*, %struct.fuse_conn** %6, align 8
  %89 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %50, %45
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @FOPEN_DIRECT_IO, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %100 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %93
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %106 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %108 = load %struct.file*, %struct.file** %8, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 0
  store %struct.fuse_file* %107, %struct.fuse_file** %109, align 8
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %103, %77, %26
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.fuse_file* @fuse_file_alloc(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_send_open(%struct.fuse_conn*, i32, %struct.file*, i32, %struct.fuse_open_out*) #1

declare dso_local i32 @fuse_file_free(%struct.fuse_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
