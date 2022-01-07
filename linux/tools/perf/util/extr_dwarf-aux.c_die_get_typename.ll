; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_get_typename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c_die_get_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@DW_TAG_array_type = common dso_local global i32 0, align 4
@DW_TAG_pointer_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@DW_TAG_subroutine_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"(function_type)\00", align 1
@DW_TAG_union_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@DW_TAG_structure_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@DW_TAG_enumeration_type = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @die_get_typename(i32* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @__die_get_real_type(i32* %10, i32* %6)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = call i32 @dwarf_tag(i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DW_TAG_array_type, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DW_TAG_pointer_type, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %16
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %61

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DW_TAG_subroutine_type, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = call i32 @strbuf_add(%struct.strbuf* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %26
  %34 = call i32 @dwarf_diename(i32* %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %74

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DW_TAG_union_type, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @DW_TAG_structure_type, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @DW_TAG_enumeration_type, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @dwarf_diename(i32* %6)
  %60 = call i32 @strbuf_addf(%struct.strbuf* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %25
  %62 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %63 = call i32 @die_get_typename(i32* %6, %struct.strbuf* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strbuf_addstr(%struct.strbuf* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %66
  %73 = phi i32 [ %67, %66 ], [ %71, %68 ]
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %56, %36, %30, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @__die_get_real_type(i32*, i32*) #1

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @dwarf_diename(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
