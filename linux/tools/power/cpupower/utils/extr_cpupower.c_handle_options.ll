; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower.c_handle_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower.c_handle_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"--cpu\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@cpus_chosen = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Error parsing cpu list\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@be_verbose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8***)* @handle_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_options(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %135

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %122, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i8***, i8**** %4, align 8
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br label %30

30:                                               ; preds = %19, %14
  %31 = phi i1 [ false, %14 ], [ %29, %19 ]
  br i1 %31, label %32, label %125

32:                                               ; preds = %30
  %33 = load i8***, i8**** %4, align 8
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %32
  %47 = call i32 (...) @print_help()
  %48 = load i32, i32* @EXIT_SUCCESS, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %103, label %58

58:                                               ; preds = %54, %50
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 (...) @print_help()
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @exit(i32 %64) #3
  unreachable

66:                                               ; preds = %58
  %67 = load i8***, i8**** %4, align 8
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @cpus_chosen, align 4
  %78 = call i32 @bitmask_setall(i32 %77)
  br label %98

79:                                               ; preds = %66
  %80 = load i8***, i8**** %4, align 8
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @cpus_chosen, align 4
  %88 = call i32 @bitmask_parselist(i8* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load i32, i32* @stderr, align 4
  %93 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* %93)
  %95 = load i32, i32* @EXIT_FAILURE, align 4
  %96 = call i32 @exit(i32 %95) #3
  unreachable

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %76
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %7, align 4
  br label %122

103:                                              ; preds = %54
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107, %103
  %112 = call i32 (...) @print_version()
  %113 = load i32, i32* @EXIT_SUCCESS, align 4
  %114 = call i32 @exit(i32 %113) #3
  unreachable

115:                                              ; preds = %107
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = call i32 (...) @print_help()
  %120 = load i32, i32* @EXIT_FAILURE, align 4
  %121 = call i32 @exit(i32 %120) #3
  unreachable

122:                                              ; preds = %98
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %14

125:                                              ; preds = %30
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i8***, i8**** %4, align 8
  %132 = load i8**, i8*** %131, align 8
  %133 = sext i32 %130 to i64
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  store i8** %134, i8*** %131, align 8
  br label %135

135:                                              ; preds = %125, %12
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bitmask_setall(i32) #1

declare dso_local i32 @bitmask_parselist(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
