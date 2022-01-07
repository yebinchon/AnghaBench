; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_find_kern_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_find_kern_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_args = type { i8*, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@find_kern_sym_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse /proc/kallsyms\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Multiple kernel symbols with name '%s'\0A\00", align 1
@print_kern_sym_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Disambiguate symbol name by inserting #n after the name e.g. %s #2\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Or select a global symbol by inserting #0 or #g or #G\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Kernel symbol lookup: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @find_kern_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_kern_sym(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sym_args, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 0
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 1
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 2
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 3
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 4
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 5
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 6
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @find_kern_sym_cb, align 4
  %33 = call i32 @kallsyms__parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sym_args* %10, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %70

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @print_kern_sym_cb, align 4
  %48 = call i32 @kallsyms__parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sym_args* %10, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %70

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sym_not_found_error(i8* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %70

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.sym_args, %struct.sym_args* %10, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %63, %58, %43, %36
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @kallsyms__parse(i8*, %struct.sym_args*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sym_not_found_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
