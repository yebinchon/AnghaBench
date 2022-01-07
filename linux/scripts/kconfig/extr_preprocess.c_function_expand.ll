; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_function_expand.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_function_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { i32, i32, i8* (i32, i8**)*, i32 }

@function_table = common dso_local global %struct.function* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"too few function arguments passed to '%s'\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"too many function arguments passed to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8**)* @function_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @function_expand(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.function*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.function*, %struct.function** @function_table, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.function* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = load %struct.function*, %struct.function** @function_table, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.function, %struct.function* %16, i64 %18
  store %struct.function* %19, %struct.function** %8, align 8
  %20 = load %struct.function*, %struct.function** %8, align 8
  %21 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %52

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.function*, %struct.function** %8, align 8
  %30 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @pperror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.function*, %struct.function** %8, align 8
  %39 = getelementptr inbounds %struct.function, %struct.function* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pperror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.function*, %struct.function** %8, align 8
  %47 = getelementptr inbounds %struct.function, %struct.function* %46, i32 0, i32 2
  %48 = load i8* (i32, i8**)*, i8* (i32, i8**)** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i8**, i8*** %7, align 8
  %51 = call i8* %48(i32 %49, i8** %50)
  store i8* %51, i8** %4, align 8
  br label %56

52:                                               ; preds = %26
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %10

55:                                               ; preds = %10
  store i8* null, i8** %4, align 8
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i32 @ARRAY_SIZE(%struct.function*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pperror(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
