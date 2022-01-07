; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_smt.c_smt_on.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_smt.c_smt_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smt_on.cached = internal global i32 0, align 4
@smt_on.cached_result = internal global i32 0, align 4
@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"devices/system/cpu/cpu%d/topology/core_cpus\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"devices/system/cpu/cpu%d/topology/thread_siblings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smt_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = load i32, i32* @smt_on.cached, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @smt_on.cached_result, align 4
  store i32 %11, i32* %1, align 4
  br label %55

12:                                               ; preds = %0
  %13 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %14 = call i32 @sysconf(i32 %13)
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %46, %12
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @snprintf(i8* %20, i32 256, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* @F_OK, align 4
  %25 = call i32 @access(i8* %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @snprintf(i8* %28, i32 256, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %33 = call i64 @sysfs__read_str(i8* %32, i8** %5, i64* %6)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %46

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strtoull(i8* %37, i32* null, i32 16)
  store i64 %38, i64* %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @hweight64(i64 %41)
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* @smt_on.cached_result, align 4
  store i32 1, i32* @smt_on.cached, align 4
  br label %49

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %15

49:                                               ; preds = %44, %15
  %50 = load i32, i32* @smt_on.cached, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* @smt_on.cached_result, align 4
  store i32 1, i32* @smt_on.cached, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* @smt_on.cached_result, align 4
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %53, %10
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i64 @sysfs__read_str(i8*, i8**, i64*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hweight64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
