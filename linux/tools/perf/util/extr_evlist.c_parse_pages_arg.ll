; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_parse_pages_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_parse_pages_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_tag = type { i8, i32 }

@parse_pages_arg.tags = internal global [5 x %struct.parse_tag] [%struct.parse_tag { i8 66, i32 1 }, %struct.parse_tag { i8 75, i32 1024 }, %struct.parse_tag { i8 77, i32 1048576 }, %struct.parse_tag { i8 71, i32 1073741824 }, %struct.parse_tag zeroinitializer], align 16
@EINVAL = common dso_local global i64 0, align 8
@page_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"rounding mmap pages size to %s (%lu pages)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @parse_pages_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_pages_arg(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %77

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @parse_tag_value(i8* %18, %struct.parse_tag* getelementptr inbounds ([5 x %struct.parse_tag], [5 x %struct.parse_tag]* @parse_pages_arg.tags, i64 0, i64 0))
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @page_size, align 8
  %25 = call i64 @PERF_ALIGN(i64 %23, i64 %24)
  %26 = load i64, i64* @page_size, align 8
  %27 = udiv i64 %25, %26
  store i64 %27, i64* %8, align 8
  br label %39

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strtoul(i8* %29, i8** %10, i32 10)
  store i64 %30, i64* %8, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %77

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %68

46:                                               ; preds = %42, %39
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @is_power_of_2(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @roundup_pow_of_two(i64 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %4, align 8
  br label %77

58:                                               ; preds = %50
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @page_size, align 8
  %62 = mul i64 %60, %61
  %63 = call i32 @unit_number__scnprintf(i8* %59, i32 100, i64 %62)
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %46
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* @EINVAL, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %4, align 8
  br label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %72, %55, %35, %14
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i64 @parse_tag_value(i8*, %struct.parse_tag*) #1

declare dso_local i64 @PERF_ALIGN(i64, i64) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @unit_number__scnprintf(i8*, i32, i64) #1

declare dso_local i32 @pr_info(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
