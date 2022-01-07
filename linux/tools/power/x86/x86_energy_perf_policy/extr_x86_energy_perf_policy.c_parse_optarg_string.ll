; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_optarg_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_optarg_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@OPTARG_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@OPTARG_POWER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"balance-power\00", align 1
@OPTARG_BALANCE_POWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"balance-performance\00", align 1
@OPTARG_BALANCE_PERFORMANCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@OPTARG_PERFORMANCE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"no digits in \22%s\22\0A\00", align 1
@LONG_MIN = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%d (0x%x) must be < 256\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"%d (0x%x) must be >= 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_optarg_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @OPTARG_NORMAL, align 4
  store i32 %10, i32* %2, align 4
  br label %79

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @OPTARG_NORMAL, align 4
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @OPTARG_POWER, align 4
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 17)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @OPTARG_BALANCE_POWER, align 4
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 19)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @OPTARG_BALANCE_PERFORMANCE, align 4
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @OPTARG_PERFORMANCE, align 4
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strtol(i8* %42, i8** %5, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @LONG_MIN, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @LONG_MAX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp sgt i32 %64, 255
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %39, %33, %27, %21, %15, %9
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
