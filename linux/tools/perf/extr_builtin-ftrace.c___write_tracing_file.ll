; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c___write_tracing_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c___write_tracing_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot get tracing file: %s\0A\00", align 1
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot open tracing file: %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"write '%s' to tracing/%s failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @__write_tracing_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_tracing_file(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [512 x i8], align 16
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* @O_WRONLY, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @get_tracing_file(i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %4, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @O_APPEND, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @O_TRUNC, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @open(i8* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @errno, align 4
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %46 = call i32 @str_error_r(i32 %44, i8* %45, i32 512)
  %47 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %46)
  br label %80

48:                                               ; preds = %36
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %77

54:                                               ; preds = %48
  %55 = load i8*, i8** %14, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 10, i8* %57, align 1
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  %62 = call i64 @write(i32 %58, i8* %59, i64 %61)
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %74

67:                                               ; preds = %54
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %72 = call i32 @str_error_r(i32 %70, i8* %71, i32 512)
  %73 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %66
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %74, %53
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @close(i32 %78)
  br label %80

80:                                               ; preds = %77, %42
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @put_tracing_file(i8* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @get_tracing_file(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @str_error_r(i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @put_tracing_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
