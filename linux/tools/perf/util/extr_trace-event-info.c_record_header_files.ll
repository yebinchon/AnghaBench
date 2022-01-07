; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_record_header_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_record_header_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"can't get tracing/events/header_page\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"can't read '%s'\00", align 1
@output_fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't write header_page\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"can't record header_page file\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"can't get tracing/events/header_event\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"can't write header_event\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"can't record header_event file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @record_header_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_header_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = call i8* @get_events_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %2, align 8
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %67

14:                                               ; preds = %0
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %3)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %63

21:                                               ; preds = %14
  %22 = load i32, i32* @output_fd, align 4
  %23 = call i32 @write(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 12)
  %24 = icmp ne i32 %23, 12
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %63

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @record_file(i8* %28, i32 8)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %63

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @put_events_file(i8* %34)
  %36 = call i8* @get_events_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %63

43:                                               ; preds = %33
  %44 = load i8*, i8** %2, align 8
  %45 = call i64 @stat(i8* %44, %struct.stat* %3)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %63

50:                                               ; preds = %43
  %51 = load i32, i32* @output_fd, align 4
  %52 = call i32 @write(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 13)
  %53 = icmp ne i32 %52, 13
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %2, align 8
  %58 = call i64 @record_file(i8* %57, i32 8)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %60, %54, %47, %39, %31, %25, %18
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @put_events_file(i8* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %63, %10
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i8* @get_events_file(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @record_file(i8*, i32) #1

declare dso_local i32 @put_events_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
