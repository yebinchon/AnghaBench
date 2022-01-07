; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_handle_randomize_layout_attr.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_handle_randomize_layout_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"%qE attribute does not apply to functions (%qF)\00", align 1
@NULL_TREE = common dso_local global i8* null, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"%qE attribute does not apply to function parameters (%qD)\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"%qE attribute does not apply to variables (%qD)\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"%qE attribute used on %qT applies to struct types only\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%qE attribute is already applied to the type %qT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8*, i8*, i32, i32*)* @handle_randomize_layout_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_randomize_layout_attr(i8** %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  store i32 1, i32* %13, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @TREE_CODE(i8* %15)
  %17 = load i64, i64* @FUNCTION_DECL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  %24 = load i8*, i8** @NULL_TREE, align 8
  store i8* %24, i8** %6, align 8
  br label %93

25:                                               ; preds = %5
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @TREE_CODE(i8* %27)
  %29 = load i64, i64* @PARM_DECL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %34)
  %36 = load i8*, i8** @NULL_TREE, align 8
  store i8* %36, i8** %6, align 8
  br label %93

37:                                               ; preds = %25
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @TREE_CODE(i8* %39)
  %41 = load i64, i64* @VAR_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %46)
  %48 = load i8*, i8** @NULL_TREE, align 8
  store i8* %48, i8** %6, align 8
  br label %93

49:                                               ; preds = %37
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @TYPE_P(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8**, i8*** %7, align 8
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %12, align 8
  br label %68

57:                                               ; preds = %49
  %58 = load i8**, i8*** %7, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @TREE_CODE(i8* %59)
  %61 = load i64, i64* @TYPE_DECL, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load i8**, i8*** %7, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @TREE_TYPE(i8* %66)
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %57, %54
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 @TREE_CODE(i8* %69)
  %71 = load i64, i64* @RECORD_TYPE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %74, i8* %75)
  %77 = load i8*, i8** @NULL_TREE, align 8
  store i8* %77, i8** %6, align 8
  br label %93

78:                                               ; preds = %68
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @IDENTIFIER_POINTER(i8* %79)
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @TYPE_ATTRIBUTES(i8* %81)
  %83 = call i64 @lookup_attribute(i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %86, i8* %87)
  %89 = load i8*, i8** @NULL_TREE, align 8
  store i8* %89, i8** %6, align 8
  br label %93

90:                                               ; preds = %78
  %91 = load i32*, i32** %11, align 8
  store i32 0, i32* %91, align 4
  %92 = load i8*, i8** @NULL_TREE, align 8
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %90, %85, %73, %43, %31, %19
  %94 = load i8*, i8** %6, align 8
  ret i8* %94
}

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i64 @TYPE_P(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @lookup_attribute(i32, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i8*) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
