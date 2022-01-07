; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-config.c_parse_config_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-config.c_parse_config_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"The config variable does not contain a section name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"The config variable does not contain a variable name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"The config variable does not contain a value: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid config variable: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @parse_config_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config_arg(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 46)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %4, align 4
  br label %65

20:                                               ; preds = %13
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %4, align 4
  br label %65

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 61)
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  br label %64

38:                                               ; preds = %28
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %4, align 4
  br label %65

46:                                               ; preds = %38
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8**, i8*** %7, align 8
  store i8* %49, i8** %50, align 8
  %51 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8**, i8*** %6, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %6, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  store i32 -1, i32* %4, align 4
  br label %65

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %35
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %59, %43, %25, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
