; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_variable_expand.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_variable_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32, i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Recursive variable '%s' references itself (eventually)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Too deep recursive expansion\00", align 1
@VAR_RECURSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8**)* @variable_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @variable_expand(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.variable*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.variable* @variable_lookup(i8* %10)
  store %struct.variable* %11, %struct.variable** %8, align 8
  %12 = load %struct.variable*, %struct.variable** %8, align 8
  %13 = icmp ne %struct.variable* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %61

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.variable*, %struct.variable** %8, align 8
  %20 = getelementptr inbounds %struct.variable, %struct.variable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, ...) @pperror(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %18, %15
  %27 = load %struct.variable*, %struct.variable** %8, align 8
  %28 = getelementptr inbounds %struct.variable, %struct.variable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1000
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @pperror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.variable*, %struct.variable** %8, align 8
  %35 = getelementptr inbounds %struct.variable, %struct.variable* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.variable*, %struct.variable** %8, align 8
  %39 = getelementptr inbounds %struct.variable, %struct.variable* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VAR_RECURSIVE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.variable*, %struct.variable** %8, align 8
  %45 = getelementptr inbounds %struct.variable, %struct.variable* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i8**, i8*** %7, align 8
  %49 = call i8* @expand_string_with_args(i32 %46, i32 %47, i8** %48)
  store i8* %49, i8** %9, align 8
  br label %55

50:                                               ; preds = %33
  %51 = load %struct.variable*, %struct.variable** %8, align 8
  %52 = getelementptr inbounds %struct.variable, %struct.variable* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @xstrdup(i32 %53)
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.variable*, %struct.variable** %8, align 8
  %57 = getelementptr inbounds %struct.variable, %struct.variable* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %55, %14
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local %struct.variable* @variable_lookup(i8*) #1

declare dso_local i32 @pperror(i8*, ...) #1

declare dso_local i8* @expand_string_with_args(i32, i32, i8**) #1

declare dso_local i8* @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
