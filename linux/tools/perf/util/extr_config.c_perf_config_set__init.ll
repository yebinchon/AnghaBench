; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_perf_config_set__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_perf_config_set__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_config_set = type { i32 }
%struct.stat = type { i64, i64 }

@config_exclusive_filename = common dso_local global i8* null, align 8
@collect_config = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s/.perfconfig\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Not enough memory to process %s/.perfconfig, ignoring it.\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"File %s not owned by current user or root, ignoring it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_config_set*)* @perf_config_set__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_config_set__init(%struct.perf_config_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_config_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 8
  store %struct.perf_config_set* %0, %struct.perf_config_set** %3, align 8
  store i32 -1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** @config_exclusive_filename, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @collect_config, align 4
  %12 = load i8*, i8** @config_exclusive_filename, align 8
  %13 = load %struct.perf_config_set*, %struct.perf_config_set** %3, align 8
  %14 = call i32 @perf_config_from_file(i32 %11, i8* %12, %struct.perf_config_set* %13)
  store i32 %14, i32* %2, align 4
  br label %89

15:                                               ; preds = %1
  %16 = call i64 (...) @perf_config_system()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = call i8* (...) @perf_etc_perfconfig()
  %20 = load i32, i32* @R_OK, align 4
  %21 = call i32 @access(i8* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @collect_config, align 4
  %25 = call i8* (...) @perf_etc_perfconfig()
  %26 = load %struct.perf_config_set*, %struct.perf_config_set** %3, align 8
  %27 = call i32 @perf_config_from_file(i32 %24, i8* %25, %struct.perf_config_set* %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %87

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %18, %15
  %32 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 (...) @perf_config_global()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %35, %31
  store i32 0, i32* %2, align 4
  br label %89

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @mkpath(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i8* @strdup(i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @pr_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %87

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @stat(i8* %53, %struct.stat* %7)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOENT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %84

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 (...) @geteuid()
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @pr_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  br label %84

74:                                               ; preds = %66, %62
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @collect_config, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.perf_config_set*, %struct.perf_config_set** %3, align 8
  %82 = call i32 @perf_config_from_file(i32 %79, i8* %80, %struct.perf_config_set* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %74
  br label %84

84:                                               ; preds = %83, %71, %61
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %84, %49, %29
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %42, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @perf_config_from_file(i32, i8*, %struct.perf_config_set*) #1

declare dso_local i64 @perf_config_system(...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i8* @perf_etc_perfconfig(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @perf_config_global(...) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @mkpath(i8*, i8*) #1

declare dso_local i32 @pr_warning(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
