; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__read_fd_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_thread__read_fd_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/proc/%d/fd/%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"/proc/%d/task/%d/fd/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32)* @thread__read_fd_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread__read_fd_path(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = trunc i64 %13 to i32
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, i32, i8*, i32, i32, ...) @scnprintf(i8* %15, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %43

33:                                               ; preds = %2
  %34 = trunc i64 %13 to i32
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, i32, i8*, i32, i32, ...) @scnprintf(i8* %15, i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %26
  %44 = call i64 @lstat(i8* %15, %struct.stat* %9)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = trunc i64 %17 to i32
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %43
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

53:                                               ; preds = %46
  %54 = trunc i64 %17 to i32
  %55 = call i32 @readlink(i8* %15, i8* %18, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %53
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %18, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @trace__set_fd_pathname(%struct.thread* %68, i32 %69, i8* %18)
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %64, %63, %52
  %72 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @trace__set_fd_pathname(%struct.thread*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
