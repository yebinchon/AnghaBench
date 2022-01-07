; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_type_name_eq.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_type_name_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@CHAR_TYPE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"found non-char INTEGER_TYPE cast comparison: %qT\0A\00", align 1
@VOID_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"found non-void POINTER_TYPE cast comparison %qT\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unhandled cast comparison: %qT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @type_name_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_name_eq(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @NULL_TREE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @TREE_CODE(i64 %14)
  switch i32 %15, label %47 [
    i32 128, label %16
    i32 130, label %19
    i32 129, label %33
  ]

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @TYPE_NAME_POINTER(i64 %17)
  store i8* %18, i8** %8, align 8
  br label %54

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @TYPE_PRECISION(i64 %20)
  %22 = load i32, i32* @CHAR_TYPE_SIZE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @gimple_location(i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @INFORM(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @debug_tree(i64 %30)
  store i32 0, i32* %4, align 4
  br label %60

32:                                               ; preds = %24
  br label %54

33:                                               ; preds = %13
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @TREE_TYPE(i64 %34)
  %36 = call i32 @TREE_CODE(i64 %35)
  %37 = load i32, i32* @VOID_TYPE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %54

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @gimple_location(i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @INFORM(i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @debug_tree(i64 %45)
  store i32 0, i32* %4, align 4
  br label %60

47:                                               ; preds = %13
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @gimple_location(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @INFORM(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @debug_tree(i64 %52)
  store i32 0, i32* %4, align 4
  br label %60

54:                                               ; preds = %39, %32, %16
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %47, %40, %25, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i8* @TYPE_NAME_POINTER(i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i32 @INFORM(i32, i8*, i64) #1

declare dso_local i32 @gimple_location(i32) #1

declare dso_local i32 @debug_tree(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
