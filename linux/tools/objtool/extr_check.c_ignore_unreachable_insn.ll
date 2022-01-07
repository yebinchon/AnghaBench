; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_ignore_unreachable_insn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_ignore_unreachable_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instruction = type { i64, i64, i64, %struct.TYPE_4__*, %struct.instruction*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@INSN_NOP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c".fixup\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c".altinstr_replacement\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c".altinstr_aux\00", align 1
@INSN_JUMP_UNCONDITIONAL = common dso_local global i64 0, align 8
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instruction*)* @ignore_unreachable_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_unreachable_insn(%struct.instruction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.instruction*, align 8
  %4 = alloca i32, align 4
  store %struct.instruction* %0, %struct.instruction** %3, align 8
  %5 = load %struct.instruction*, %struct.instruction** %3, align 8
  %6 = getelementptr inbounds %struct.instruction, %struct.instruction* %5, i32 0, i32 6
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.instruction*, %struct.instruction** %3, align 8
  %11 = getelementptr inbounds %struct.instruction, %struct.instruction* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INSN_NOP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %115

16:                                               ; preds = %9
  %17 = load %struct.instruction*, %struct.instruction** %3, align 8
  %18 = getelementptr inbounds %struct.instruction, %struct.instruction* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.instruction*, %struct.instruction** %3, align 8
  %26 = getelementptr inbounds %struct.instruction, %struct.instruction* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.instruction*, %struct.instruction** %3, align 8
  %34 = getelementptr inbounds %struct.instruction, %struct.instruction* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcmp(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32, %24, %16
  store i32 1, i32* %2, align 4
  br label %115

41:                                               ; preds = %32
  %42 = load %struct.instruction*, %struct.instruction** %3, align 8
  %43 = getelementptr inbounds %struct.instruction, %struct.instruction* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %115

47:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %111, %47
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %114

51:                                               ; preds = %48
  %52 = load %struct.instruction*, %struct.instruction** %3, align 8
  %53 = call i64 @is_kasan_insn(%struct.instruction* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.instruction*, %struct.instruction** %3, align 8
  %57 = call i64 @is_ubsan_insn(%struct.instruction* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 1, i32* %2, align 4
  br label %115

60:                                               ; preds = %55
  %61 = load %struct.instruction*, %struct.instruction** %3, align 8
  %62 = getelementptr inbounds %struct.instruction, %struct.instruction* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INSN_JUMP_UNCONDITIONAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.instruction*, %struct.instruction** %3, align 8
  %68 = getelementptr inbounds %struct.instruction, %struct.instruction* %67, i32 0, i32 4
  %69 = load %struct.instruction*, %struct.instruction** %68, align 8
  %70 = icmp ne %struct.instruction* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.instruction*, %struct.instruction** %3, align 8
  %73 = getelementptr inbounds %struct.instruction, %struct.instruction* %72, i32 0, i32 4
  %74 = load %struct.instruction*, %struct.instruction** %73, align 8
  %75 = getelementptr inbounds %struct.instruction, %struct.instruction* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.instruction*, %struct.instruction** %3, align 8
  %78 = getelementptr inbounds %struct.instruction, %struct.instruction* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = icmp eq %struct.TYPE_4__* %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load %struct.instruction*, %struct.instruction** %3, align 8
  %83 = getelementptr inbounds %struct.instruction, %struct.instruction* %82, i32 0, i32 4
  %84 = load %struct.instruction*, %struct.instruction** %83, align 8
  store %struct.instruction* %84, %struct.instruction** %3, align 8
  br label %111

85:                                               ; preds = %71, %66
  br label %114

86:                                               ; preds = %60
  %87 = load %struct.instruction*, %struct.instruction** %3, align 8
  %88 = getelementptr inbounds %struct.instruction, %struct.instruction* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.instruction*, %struct.instruction** %3, align 8
  %91 = getelementptr inbounds %struct.instruction, %struct.instruction* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.instruction*, %struct.instruction** %3, align 8
  %95 = getelementptr inbounds %struct.instruction, %struct.instruction* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.instruction*, %struct.instruction** %3, align 8
  %100 = getelementptr inbounds %struct.instruction, %struct.instruction* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %98, %103
  %105 = icmp sge i64 %93, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  br label %114

107:                                              ; preds = %86
  %108 = load %struct.instruction*, %struct.instruction** %3, align 8
  %109 = load i32, i32* @list, align 4
  %110 = call %struct.instruction* @list_next_entry(%struct.instruction* %108, i32 %109)
  store %struct.instruction* %110, %struct.instruction** %3, align 8
  br label %111

111:                                              ; preds = %107, %81
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %48

114:                                              ; preds = %106, %85, %48
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %59, %46, %40, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @is_kasan_insn(%struct.instruction*) #1

declare dso_local i64 @is_ubsan_insn(%struct.instruction*) #1

declare dso_local %struct.instruction* @list_next_entry(%struct.instruction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
