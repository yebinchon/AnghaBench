; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_sort_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_setup_sort_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_list = type { i32 }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{}, \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"dcacheline\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"The \22dcacheline\22 --sort key needs to know the cacheline size and it couldn't be determined on this system\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid --sort key: `%s'\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Unknown --sort key: `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_list*, i8*, %struct.evlist*)* @setup_sort_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sort_list(%struct.perf_hpp_list* %0, i8* %1, %struct.evlist* %2) #0 {
  %4 = alloca %struct.perf_hpp_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.evlist* %2, %struct.evlist** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %85, %3
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @strpbrk(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %11, align 4
  br label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 123
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %40

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 125
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i8*, i8** %7, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %5, align 8
  br label %44

44:                                               ; preds = %40, %13
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.evlist*, %struct.evlist** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @sort_dimension__add(%struct.perf_hpp_list* %49, i8* %50, %struct.evlist* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %48
  %59 = call i32 (...) @cacheline_size()
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @strncasecmp(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0))
  br label %72

69:                                               ; preds = %61, %58
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %67
  br label %88

73:                                               ; preds = %48
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ESRCH, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %88

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %83
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %13, label %88

88:                                               ; preds = %85, %78, %72
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @sort_dimension__add(%struct.perf_hpp_list*, i8*, %struct.evlist*, i32) #1

declare dso_local i32 @cacheline_size(...) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
