; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_parse_cmdline_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_selected_set = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"--pkg | --cpu\00", align 1
@pkg_selected_set = common dso_local global i32 0, align 4
@max_pkg_num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Requested pkg%d exceeds max pkg%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@pkg_present_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Requested pkg%d Exceeds max pkg%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_cmdline_pkg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @cpu_selected_set, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 (...) @usage()
  %11 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  store i32 0, i32* @pkg_selected_set, align 4
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %84, %66, %45, %29, %12
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %90

24:                                               ; preds = %22
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %14

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strtol(i8* %40, i8** %4, i32 10)
  store i32 %41, i32* %6, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %14

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @max_pkg_num, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @max_pkg_num, align 4
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* @pkg_selected_set, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* @pkg_selected_set, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** %3, align 8
  br label %14

68:                                               ; preds = %32
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @pkg_present_set, align 4
  store i32 %73, i32* @pkg_selected_set, align 4
  br label %90

74:                                               ; preds = %68
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strtol(i8* %75, i8** %4, i32 10)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @max_pkg_num, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @max_pkg_num, align 4
  %83 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* %5, align 4
  %86 = shl i32 1, %85
  %87 = load i32, i32* @pkg_selected_set, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* @pkg_selected_set, align 4
  %89 = load i8*, i8** %4, align 8
  store i8* %89, i8** %3, align 8
  br label %14

90:                                               ; preds = %72, %22
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
