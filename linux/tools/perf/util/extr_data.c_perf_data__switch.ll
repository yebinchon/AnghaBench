; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__switch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data.c_perf_data__switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to rename %s to %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to lseek to %zu: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_data__switch(%struct.perf_data* %0, i8* %1, i64 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store %struct.perf_data* %0, %struct.perf_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %14 = call i64 @check_pipe(%struct.perf_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %90

19:                                               ; preds = %5
  %20 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %21 = call i64 @perf_data__is_read(%struct.perf_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %90

26:                                               ; preds = %19
  %27 = load i8**, i8*** %11, align 8
  %28 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %29 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @asprintf(i8** %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %90

37:                                               ; preds = %26
  %38 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %39 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8**, i8*** %11, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @rename(i32 %40, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %47 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8**, i8*** %11, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %57 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %62 = call i32 @perf_data__open(%struct.perf_data* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %88

66:                                               ; preds = %55
  %67 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %68 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i64 @lseek(i32 %70, i64 %71, i32 %72)
  %74 = icmp eq i64 %73, -1
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i32, i32* @errno, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %78, i32 %80)
  br label %88

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.perf_data*, %struct.perf_data** %7, align 8
  %85 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %83, %75, %65
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %34, %23, %16
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @check_pipe(%struct.perf_data*) #1

declare dso_local i64 @perf_data__is_read(%struct.perf_data*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i64 @rename(i32, i8*) #1

declare dso_local i32 @pr_warning(i8*, i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @perf_data__open(%struct.perf_data*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
