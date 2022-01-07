; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_expr_str.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_expr_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, %struct.hist_field** }

@MAX_FILTER_STR_VAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FIELD_OP_UNARY_MINUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_field*, i32)* @expr_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expr_str(%struct.hist_field* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hist_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.hist_field* %0, %struct.hist_field** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %90

11:                                               ; preds = %2
  %12 = load i32, i32* @MAX_FILTER_STR_VAL, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %90

18:                                               ; preds = %11
  %19 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %20 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %19, i32 0, i32 1
  %21 = load %struct.hist_field**, %struct.hist_field*** %20, align 8
  %22 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %21, i64 0
  %23 = load %struct.hist_field*, %struct.hist_field** %22, align 8
  %24 = icmp ne %struct.hist_field* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @expr_field_str(%struct.hist_field* %26, i8* %27)
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %3, align 8
  br label %90

30:                                               ; preds = %18
  %31 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %32 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FIELD_OP_UNARY_MINUS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcat(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %40 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %39, i32 0, i32 1
  %41 = load %struct.hist_field**, %struct.hist_field*** %40, align 8
  %42 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %41, i64 0
  %43 = load %struct.hist_field*, %struct.hist_field** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = call i8* @expr_str(%struct.hist_field* %43, i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @kfree(i8* %50)
  store i8* null, i8** %3, align 8
  br label %90

52:                                               ; preds = %36
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strcat(i8* %53, i8* %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcat(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i8*, i8** %6, align 8
  store i8* %60, i8** %3, align 8
  br label %90

61:                                               ; preds = %30
  %62 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %63 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %62, i32 0, i32 1
  %64 = load %struct.hist_field**, %struct.hist_field*** %63, align 8
  %65 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %64, i64 0
  %66 = load %struct.hist_field*, %struct.hist_field** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @expr_field_str(%struct.hist_field* %66, i8* %67)
  %69 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %70 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %78 [
    i32 129, label %72
    i32 128, label %75
  ]

72:                                               ; preds = %61
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcat(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %81

75:                                               ; preds = %61
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcat(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %81

78:                                               ; preds = %61
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @kfree(i8* %79)
  store i8* null, i8** %3, align 8
  br label %90

81:                                               ; preds = %75, %72
  %82 = load %struct.hist_field*, %struct.hist_field** %4, align 8
  %83 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %82, i32 0, i32 1
  %84 = load %struct.hist_field**, %struct.hist_field*** %83, align 8
  %85 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %84, i64 1
  %86 = load %struct.hist_field*, %struct.hist_field** %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @expr_field_str(%struct.hist_field* %86, i8* %87)
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %3, align 8
  br label %90

90:                                               ; preds = %81, %78, %52, %49, %25, %17, %10
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @expr_field_str(%struct.hist_field*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
