; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_tracelog.c_do_tracelog.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_tracelog.c_do_tracelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@exit_tracelog = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@trace_pipe_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not open trace pipe: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@buff = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to read content from trace pipe: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_tracelog(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %13 = load i32, i32* @exit_tracelog, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load i64, i64* @json_output, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @json_wtr, align 4
  %22 = call i32 @jsonw_start_array(i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = call i32 @get_tracefs_pipe(i8* %17)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

27:                                               ; preds = %23
  %28 = call i32 @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* @trace_pipe_fd, align 4
  %29 = load i32, i32* @trace_pipe_fd, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 @p_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

35:                                               ; preds = %27
  %36 = load i32, i32* @SIGHUP, align 4
  %37 = call i32 @sigaction(i32 %36, %struct.sigaction* %6, i32* null)
  %38 = load i32, i32* @SIGINT, align 4
  %39 = call i32 @sigaction(i32 %38, %struct.sigaction* %6, i32* null)
  %40 = load i32, i32* @SIGTERM, align 4
  %41 = call i32 @sigaction(i32 %40, %struct.sigaction* %6, i32* null)
  br label %42

42:                                               ; preds = %62, %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @trace_pipe_fd, align 4
  %45 = call i64 @getline(i8** @buff, i64* %9, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @p_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %63

52:                                               ; preds = %43
  %53 = load i64, i64* @json_output, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @json_wtr, align 4
  %57 = load i8*, i8** @buff, align 8
  %58 = call i32 @jsonw_string(i32 %56, i8* %57)
  br label %62

59:                                               ; preds = %52
  %60 = load i8*, i8** @buff, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %42

63:                                               ; preds = %48
  %64 = load i32, i32* @trace_pipe_fd, align 4
  %65 = call i32 @fclose(i32 %64)
  %66 = load i8*, i8** @buff, align 8
  %67 = call i32 @free(i8* %66)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %31, %26
  %69 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @jsonw_start_array(i32) #2

declare dso_local i32 @get_tracefs_pipe(i8*) #2

declare dso_local i32 @fopen(i8*, i8*) #2

declare dso_local i32 @p_err(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i64 @getline(i8**, i64*, i32) #2

declare dso_local i32 @jsonw_string(i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @fclose(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
