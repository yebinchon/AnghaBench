; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_file__add_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_file__add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to synthesize probe trace event.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Writing event: %s\0A\00", align 1
@probe_event_dry_run = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to write event: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_file__add_event(i32 %0, %struct.probe_trace_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.probe_trace_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.probe_trace_event* %1, %struct.probe_trace_event** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.probe_trace_event*, %struct.probe_trace_event** %5, align 8
  %12 = call i8* @synthesize_probe_trace_command(%struct.probe_trace_event* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @STRERR_BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @probe_event_dry_run, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = call i32 @write(i32 %29, i8* %30, i64 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load i32, i32* @errno, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = trunc i64 %14 to i32
  %43 = call i32 @str_error_r(i32 %41, i8* %16, i32 %42)
  %44 = call i32 @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %28
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i8* @synthesize_probe_trace_command(%struct.probe_trace_event*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @str_error_r(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
