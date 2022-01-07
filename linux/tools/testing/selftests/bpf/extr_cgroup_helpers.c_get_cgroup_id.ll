; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_get_cgroup_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_cgroup_helpers.c_get_cgroup_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.file_handle = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"name_to_handle_at\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_cgroup_id(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.anon, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.file_handle*, align 8
  %13 = alloca %struct.file_handle*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %14, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @format_cgroup_path(i8* %20, i8* %21)
  %23 = load i32, i32* @AT_FDCWD, align 4
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 8, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.file_handle* @calloc(i32 1, i32 %24)
  store %struct.file_handle* %25, %struct.file_handle** %12, align 8
  %26 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %27 = icmp ne %struct.file_handle* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = call i32 @log_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %81

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @name_to_handle_at(i32 %31, i8* %20, %struct.file_handle* %32, i32* %7, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %39 = getelementptr inbounds %struct.file_handle, %struct.file_handle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 8
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %30
  %43 = call i32 @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %77

44:                                               ; preds = %37
  %45 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %46 = getelementptr inbounds %struct.file_handle, %struct.file_handle* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 8, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.file_handle* @realloc(%struct.file_handle* %51, i32 %52)
  store %struct.file_handle* %53, %struct.file_handle** %13, align 8
  %54 = load %struct.file_handle*, %struct.file_handle** %13, align 8
  %55 = icmp ne %struct.file_handle* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = call i32 @log_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %77

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.file_handle*, %struct.file_handle** %13, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @name_to_handle_at(i32 %59, i8* %20, %struct.file_handle* %60, i32* %7, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.file_handle*, %struct.file_handle** %13, align 8
  store %struct.file_handle* %63, %struct.file_handle** %12, align 8
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 @log_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %77

68:                                               ; preds = %58
  %69 = bitcast %union.anon* %9 to [8 x i8]*
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %69, i64 0, i64 0
  %71 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %72 = getelementptr inbounds %struct.file_handle, %struct.file_handle* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i8* %70, i32 %73, i32 8)
  %75 = bitcast %union.anon* %9 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %68, %66, %56, %42
  %78 = load %struct.file_handle*, %struct.file_handle** %12, align 8
  %79 = call i32 @free(%struct.file_handle* %78)
  %80 = load i64, i64* %14, align 8
  store i64 %80, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %77, %28
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @format_cgroup_path(i8*, i8*) #2

declare dso_local %struct.file_handle* @calloc(i32, i32) #2

declare dso_local i32 @log_err(i8*) #2

declare dso_local i32 @name_to_handle_at(i32, i8*, %struct.file_handle*, i32*, i32) #2

declare dso_local %struct.file_handle* @realloc(%struct.file_handle*, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @free(%struct.file_handle*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
