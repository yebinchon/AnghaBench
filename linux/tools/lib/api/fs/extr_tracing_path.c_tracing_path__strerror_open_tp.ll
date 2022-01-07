; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_tracing_path.c_tracing_path__strerror_open_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_tracing_path.c_tracing_path__strerror_open_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sdt_\00", align 1
@.str.3 = private unnamed_addr constant [136 x i8] c"Error:\09File %s/%s not found.\0AHint:\09SDT event cannot be directly recorded on.\0A\09Please first use 'perf probe %s:%s' before recording it.\0A\00", align 1
@tracing_events_path = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [109 x i8] c"Error:\09File %s/%s not found.\0AHint:\09Perhaps this kernel misses some CONFIG_ setting to enable this feature?.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [206 x i8] c"Error:\09Unable to find debugfs/tracefs\0AHint:\09Was your kernel compiled with debugfs/tracefs support?\0AHint:\09Is the debugfs/tracefs filesystem mounted?\0AHint:\09Try 'sudo mount -t debugfs nodev /sys/kernel/debug'\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"Error:\09No permissions to read %s/%s\0AHint:\09Try 'sudo mount -o remount,mode=755 %s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracing_path__strerror_open_tp(i32 %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %24, %23
  %26 = phi i8* [ %21, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %17, i64 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %61 [
    i32 128, label %29
    i32 129, label %55
  ]

29:                                               ; preds = %25
  %30 = call i32 (...) @debugfs__configured()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i32 (...) @tracefs__configured()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32, %29
  %36 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i8*, i8** @tracing_events_path, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %39, i64 %40, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %17, i8* %42, i8* %43)
  br label %50

45:                                               ; preds = %35
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i8*, i8** @tracing_events_path, align 8
  %49 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i8* %48, i8* %17)
  br label %50

50:                                               ; preds = %45, %38
  br label %68

51:                                               ; preds = %32
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.6, i64 0, i64 0))
  br label %68

55:                                               ; preds = %25
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** @tracing_events_path, align 8
  %59 = call i8* (...) @tracing_path_mount()
  %60 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %56, i64 %57, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i8* %58, i8* %17, i8* %59)
  br label %68

61:                                               ; preds = %25
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %66 = call i8* @str_error_r(i32 %64, i8* %65, i32 128)
  %67 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %61, %55, %51, %50
  %69 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #2

declare dso_local i32 @debugfs__configured(...) #2

declare dso_local i32 @tracefs__configured(...) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @tracing_path_mount(...) #2

declare dso_local i8* @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
