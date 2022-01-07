; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower-set.c_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower-set.c_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%struct.anon = type { i8, [3 x i8] }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"b:\00", align 1
@set_opts = common dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"--perf-bias param out of range [0-%d]\0A\00", align 1
@cpus_chosen = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot set values on CPU %d:\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" *is offline\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Error setting perf-bias value on CPU %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = call i32 @textdomain(i32 %11)
  %13 = bitcast %union.anon* %6 to i32*
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %52, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* @set_opts, align 4
  %18 = call i32 @getopt_long(i32 %15, i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %50 [
    i32 98, label %22
  ]

22:                                               ; preds = %20
  %23 = bitcast %union.anon* %6 to %struct.anon*
  %24 = bitcast %struct.anon* %23 to i8*
  %25 = load i8, i8* %24, align 4
  %26 = shl i8 %25, 7
  %27 = ashr i8 %26, 7
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @print_wrong_arg_exit()
  br label %32

32:                                               ; preds = %30, %22
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 15
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %32
  %41 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @printf(i8* %41, i32 15)
  %43 = call i32 (...) @print_wrong_arg_exit()
  br label %44

44:                                               ; preds = %40, %37
  %45 = bitcast %union.anon* %6 to %struct.anon*
  %46 = bitcast %struct.anon* %45 to i8*
  %47 = load i8, i8* %46, align 4
  %48 = and i8 %47, -2
  %49 = or i8 %48, 1
  store i8 %49, i8* %46, align 4
  br label %52

50:                                               ; preds = %20
  %51 = call i32 (...) @print_wrong_arg_exit()
  br label %52

52:                                               ; preds = %50, %44
  br label %14

53:                                               ; preds = %14
  %54 = bitcast %union.anon* %6 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i32 (...) @print_wrong_arg_exit()
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* @cpus_chosen, align 4
  %61 = call i64 @bitmask_isallclear(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @cpus_chosen, align 4
  %65 = call i32 @bitmask_setall(i32 %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* @cpus_chosen, align 4
  %68 = call i32 @bitmask_first(i32 %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %113, %66
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @cpus_chosen, align 4
  %72 = call i32 @bitmask_last(i32 %71)
  %73 = icmp ule i32 %70, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %69
  %75 = load i32, i32* @cpus_chosen, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @bitmask_isbitset(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %113

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sysfs_is_cpu_online(i32 %81)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* %86, i32 %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* %90)
  br label %113

92:                                               ; preds = %80
  %93 = bitcast %union.anon* %6 to %struct.anon*
  %94 = bitcast %struct.anon* %93 to i8*
  %95 = load i8, i8* %94, align 4
  %96 = shl i8 %95, 7
  %97 = ashr i8 %96, 7
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @msr_intel_set_perf_bias(i32 %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32, i32* @stderr, align 4
  %108 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %109 = load i32, i32* %5, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* %108, i32 %109)
  br label %116

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %92
  br label %113

113:                                              ; preds = %112, %84, %79
  %114 = load i32, i32* %5, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %69

116:                                              ; preds = %106, %69
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @print_wrong_arg_exit(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @bitmask_isallclear(i32) #1

declare dso_local i32 @bitmask_setall(i32) #1

declare dso_local i32 @bitmask_first(i32) #1

declare dso_local i32 @bitmask_last(i32) #1

declare dso_local i32 @bitmask_isbitset(i32, i32) #1

declare dso_local i32 @sysfs_is_cpu_online(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @msr_intel_set_perf_bias(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
