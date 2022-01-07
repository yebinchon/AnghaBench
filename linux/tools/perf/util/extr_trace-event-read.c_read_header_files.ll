; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_header_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_read_header_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"did not read header page\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"did not read header event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_handle*)* @read_header_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header_files(%struct.tep_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %3, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = call i64 @do_read(i8* %13, i32 12)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

17:                                               ; preds = %1
  %18 = call i64 @memcmp(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

22:                                               ; preds = %17
  %23 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %24 = call i64 @read8(%struct.tep_handle* %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @do_read(i8* %31, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %45 = call i32 @tep_get_long_size(%struct.tep_handle* %44)
  %46 = call i32 @tep_parse_header_page(%struct.tep_handle* %41, i8* %42, i64 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %50 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %51 = call i32 @tep_get_header_page_size(%struct.tep_handle* %50)
  %52 = call i32 @tep_set_long_size(%struct.tep_handle* %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  %56 = call i64 @do_read(i8* %13, i32 13)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

59:                                               ; preds = %53
  %60 = call i64 @memcmp(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

64:                                               ; preds = %59
  %65 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %66 = call i64 @read8(%struct.tep_handle* %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @skip(i64 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %70

70:                                               ; preds = %64, %62, %58, %36, %29, %20, %16
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @do_read(i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i64 @read8(%struct.tep_handle*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @tep_parse_header_page(%struct.tep_handle*, i8*, i64, i32) #2

declare dso_local i32 @tep_get_long_size(%struct.tep_handle*) #2

declare dso_local i32 @tep_set_long_size(%struct.tep_handle*, i32) #2

declare dso_local i32 @tep_get_header_page_size(%struct.tep_handle*) #2

declare dso_local i32 @skip(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
