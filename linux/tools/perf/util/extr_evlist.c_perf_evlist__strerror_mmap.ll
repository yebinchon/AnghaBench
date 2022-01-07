; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__strerror_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__strerror_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"kernel/perf_event_mlock_kb\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"Error:\09%s.\0AHint:\09Check /proc/sys/kernel/perf_event_mlock_kb (%d kB) setting.\0AHint:\09Tried using %zd kB.\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Hint:\09Try 'sudo sh -c \22echo %d > /proc/sys/kernel/perf_event_mlock_kb\22', or\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Hint:\09Try using a smaller -m/--mmap-pages value.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__strerror_mmap(%struct.evlist* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* @STRERR_BUFSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = trunc i64 %16 to i32
  %21 = call i8* @str_error_r(i32 %19, i8* %18, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load %struct.evlist*, %struct.evlist** %5, align 8
  %23 = getelementptr inbounds %struct.evlist, %struct.evlist* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 1024
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %74 [
    i32 128, label %28
  ]

28:                                               ; preds = %4
  %29 = call i32 @sysctl__read_int(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %13)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %33, i64 %37, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %28
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %52, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %51, i64 %55, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %47, %28
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %67, %69
  %71 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %66, i64 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %14, align 4
  br label %79

74:                                               ; preds = %4
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %75, i64 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %74, %62
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @str_error_r(i32, i8*, i32) #2

declare dso_local i32 @sysctl__read_int(i8*, i32*) #2

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
