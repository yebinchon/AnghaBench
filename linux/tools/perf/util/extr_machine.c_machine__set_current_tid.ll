; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__set_current_tid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__set_current_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@MAX_NR_CPUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Requested CPU %d too large. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Consider raising MAX_NR_CPUS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__set_current_tid(%struct.machine* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.machine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.machine*, %struct.machine** %6, align 8
  %14 = getelementptr inbounds %struct.machine, %struct.machine* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX_NR_CPUS, align 4
  %19 = call i32 @min(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %91

25:                                               ; preds = %4
  %26 = load %struct.machine*, %struct.machine** %6, align 8
  %27 = getelementptr inbounds %struct.machine, %struct.machine* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = call i32* @calloc(i32 %31, i32 4)
  %33 = load %struct.machine*, %struct.machine** %6, align 8
  %34 = getelementptr inbounds %struct.machine, %struct.machine* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.machine*, %struct.machine** %6, align 8
  %36 = getelementptr inbounds %struct.machine, %struct.machine* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %91

42:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.machine*, %struct.machine** %6, align 8
  %49 = getelementptr inbounds %struct.machine, %struct.machine* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 -1, i32* %53, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %91

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.machine*, %struct.machine** %6, align 8
  %71 = getelementptr inbounds %struct.machine, %struct.machine* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.machine*, %struct.machine** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.thread* @machine__findnew_thread(%struct.machine* %76, i32 %77, i32 %78)
  store %struct.thread* %79, %struct.thread** %10, align 8
  %80 = load %struct.thread*, %struct.thread** %10, align 8
  %81 = icmp ne %struct.thread* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %91

85:                                               ; preds = %68
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.thread*, %struct.thread** %10, align 8
  %88 = getelementptr inbounds %struct.thread, %struct.thread* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.thread*, %struct.thread** %10, align 8
  %90 = call i32 @thread__put(%struct.thread* %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %82, %62, %39, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
