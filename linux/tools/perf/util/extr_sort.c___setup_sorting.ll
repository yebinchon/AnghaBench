; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___setup_sorting.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c___setup_sorting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { i32 }

@sort_order = common dso_local global i8* null, align 8
@field_order = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Not enough memory to setup sort keys\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Not enough memory to setup overhead keys\00", align 1
@perf_hpp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @__setup_sorting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setup_sorting(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.evlist*, %struct.evlist** %3, align 8
  %8 = call i32 @setup_sort_order(%struct.evlist* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load i8*, i8** @sort_order, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* @field_order, align 4
  %19 = call i64 @is_strict_order(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %17
  %23 = load %struct.evlist*, %struct.evlist** %3, align 8
  %24 = call i8* @get_default_sort_order(%struct.evlist* %23)
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %25
  %35 = load i32, i32* @field_order, align 4
  %36 = call i64 @is_strict_order(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @setup_overhead(i8* %39)
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %55

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.evlist*, %struct.evlist** %3, align 8
  %51 = call i32 @setup_sort_list(i32* @perf_hpp_list, i8* %49, %struct.evlist* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %43, %30, %21, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @setup_sort_order(%struct.evlist*) #1

declare dso_local i64 @is_strict_order(i32) #1

declare dso_local i8* @get_default_sort_order(%struct.evlist*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @setup_overhead(i8*) #1

declare dso_local i32 @setup_sort_list(i32*, i8*, %struct.evlist*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
