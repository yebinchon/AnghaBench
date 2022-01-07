; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_check.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@objname = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@file = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c".comment\00", align 1
@no_unreachable = common dso_local global i32 0, align 4
@initial_func_cfi = common dso_local global i32 0, align 4
@retpoline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** @objname, align 8
  %9 = load i8*, i8** @objname, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @O_RDWR, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @O_RDONLY, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @elf_read(i8* %9, i32 %17)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 1), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %112

22:                                               ; preds = %16
  %23 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 2))
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 5), align 4
  %25 = call i32 @hash_init(i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 1), align 4
  %27 = call i32 @find_section_by_name(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 4), align 4
  %28 = load i32, i32* @no_unreachable, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 0), align 4
  %29 = call i32 @arch_initial_func_cfi_state(i32* @initial_func_cfi)
  %30 = call i32 @decode_sections(%struct.TYPE_10__* @file)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %103

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = call i64 @list_empty(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 2))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %103

41:                                               ; preds = %34
  %42 = load i64, i64* @retpoline, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = call i32 @validate_retpoline(%struct.TYPE_10__* @file)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %112

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = call i32 @validate_functions(%struct.TYPE_10__* @file)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %103

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = call i32 @validate_unwind_hints(%struct.TYPE_10__* @file)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %103

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %67
  %74 = call i32 @validate_reachable_instructions(%struct.TYPE_10__* @file)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %103

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %67
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = call i32 @create_orc(%struct.TYPE_10__* @file)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %103

90:                                               ; preds = %85
  %91 = call i32 @create_orc_sections(%struct.TYPE_10__* @file)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %103

95:                                               ; preds = %90
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @file, i32 0, i32 1), align 4
  %97 = call i32 @elf_write(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %103

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %100, %94, %89, %77, %66, %58, %40, %33
  %104 = call i32 @cleanup(%struct.TYPE_10__* @file)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %103
  store i32 0, i32* %3, align 4
  br label %112

111:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %110, %48, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @elf_read(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @find_section_by_name(i32, i8*) #1

declare dso_local i32 @arch_initial_func_cfi_state(i32*) #1

declare dso_local i32 @decode_sections(%struct.TYPE_10__*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @validate_retpoline(%struct.TYPE_10__*) #1

declare dso_local i32 @validate_functions(%struct.TYPE_10__*) #1

declare dso_local i32 @validate_unwind_hints(%struct.TYPE_10__*) #1

declare dso_local i32 @validate_reachable_instructions(%struct.TYPE_10__*) #1

declare dso_local i32 @create_orc(%struct.TYPE_10__*) #1

declare dso_local i32 @create_orc_sections(%struct.TYPE_10__*) #1

declare dso_local i32 @elf_write(i32) #1

declare dso_local i32 @cleanup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
