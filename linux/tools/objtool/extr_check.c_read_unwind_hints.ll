; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_read_unwind_hints.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_read_unwind_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objtool_file = type { i32, i32 }
%struct.section = type { i32, %struct.TYPE_4__*, %struct.section* }
%struct.TYPE_4__ = type { i64 }
%struct.rela = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.unwind_hint = type { i64, i32, i32, i32 }
%struct.instruction = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.cfi_reg }
%struct.cfi_reg = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c".discard.unwind_hints\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"missing .rela.discard.unwind_hints section\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"struct unwind_hint size mismatch\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"can't find rela for unwind_hints[%d]\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"can't find insn for unwind_hints[%d]\00", align 1
@UNWIND_HINT_TYPE_SAVE = common dso_local global i64 0, align 8
@UNWIND_HINT_TYPE_RESTORE = common dso_local global i64 0, align 8
@CFI_UNDEFINED = common dso_local global i32 0, align 4
@CFI_SP = common dso_local global i32 0, align 4
@CFI_BP = common dso_local global i32 0, align 4
@CFI_SP_INDIRECT = common dso_local global i32 0, align 4
@CFI_R10 = common dso_local global i32 0, align 4
@CFI_R13 = common dso_local global i32 0, align 4
@CFI_DI = common dso_local global i32 0, align 4
@CFI_DX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"unsupported unwind_hint sp base reg %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objtool_file*)* @read_unwind_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unwind_hints(%struct.objtool_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.objtool_file*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.rela*, align 8
  %7 = alloca %struct.unwind_hint*, align 8
  %8 = alloca %struct.instruction*, align 8
  %9 = alloca %struct.cfi_reg*, align 8
  %10 = alloca i32, align 4
  store %struct.objtool_file* %0, %struct.objtool_file** %3, align 8
  %11 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %12 = getelementptr inbounds %struct.objtool_file, %struct.objtool_file* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.section* @find_section_by_name(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.section* %14, %struct.section** %4, align 8
  %15 = load %struct.section*, %struct.section** %4, align 8
  %16 = icmp ne %struct.section* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %179

18:                                               ; preds = %1
  %19 = load %struct.section*, %struct.section** %4, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 2
  %21 = load %struct.section*, %struct.section** %20, align 8
  store %struct.section* %21, %struct.section** %5, align 8
  %22 = load %struct.section*, %struct.section** %5, align 8
  %23 = icmp ne %struct.section* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %179

26:                                               ; preds = %18
  %27 = load %struct.section*, %struct.section** %4, align 8
  %28 = getelementptr inbounds %struct.section, %struct.section* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = urem i64 %30, 24
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %179

35:                                               ; preds = %26
  %36 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %37 = getelementptr inbounds %struct.objtool_file, %struct.objtool_file* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %175, %35
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.section*, %struct.section** %4, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 24
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %47, label %178

47:                                               ; preds = %38
  %48 = load %struct.section*, %struct.section** %4, align 8
  %49 = getelementptr inbounds %struct.section, %struct.section* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.unwind_hint*
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %53, i64 %55
  store %struct.unwind_hint* %56, %struct.unwind_hint** %7, align 8
  %57 = load %struct.section*, %struct.section** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 24
  %61 = trunc i64 %60 to i32
  %62 = call %struct.rela* @find_rela_by_dest(%struct.section* %57, i32 %61)
  store %struct.rela* %62, %struct.rela** %6, align 8
  %63 = load %struct.rela*, %struct.rela** %6, align 8
  %64 = icmp ne %struct.rela* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %2, align 4
  br label %179

68:                                               ; preds = %47
  %69 = load %struct.objtool_file*, %struct.objtool_file** %3, align 8
  %70 = load %struct.rela*, %struct.rela** %6, align 8
  %71 = getelementptr inbounds %struct.rela, %struct.rela* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rela*, %struct.rela** %6, align 8
  %76 = getelementptr inbounds %struct.rela, %struct.rela* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.instruction* @find_insn(%struct.objtool_file* %69, i32 %74, i32 %77)
  store %struct.instruction* %78, %struct.instruction** %8, align 8
  %79 = load %struct.instruction*, %struct.instruction** %8, align 8
  %80 = icmp ne %struct.instruction* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  store i32 -1, i32* %2, align 4
  br label %179

84:                                               ; preds = %68
  %85 = load %struct.instruction*, %struct.instruction** %8, align 8
  %86 = getelementptr inbounds %struct.instruction, %struct.instruction* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store %struct.cfi_reg* %87, %struct.cfi_reg** %9, align 8
  %88 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %89 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UNWIND_HINT_TYPE_SAVE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.instruction*, %struct.instruction** %8, align 8
  %95 = getelementptr inbounds %struct.instruction, %struct.instruction* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %175

96:                                               ; preds = %84
  %97 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %98 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UNWIND_HINT_TYPE_RESTORE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.instruction*, %struct.instruction** %8, align 8
  %104 = getelementptr inbounds %struct.instruction, %struct.instruction* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.instruction*, %struct.instruction** %8, align 8
  %106 = getelementptr inbounds %struct.instruction, %struct.instruction* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  br label %175

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.instruction*, %struct.instruction** %8, align 8
  %110 = getelementptr inbounds %struct.instruction, %struct.instruction* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  %111 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %112 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %146 [
    i32 128, label %114
    i32 130, label %118
    i32 135, label %122
    i32 129, label %126
    i32 132, label %130
    i32 131, label %134
    i32 134, label %138
    i32 133, label %142
  ]

114:                                              ; preds = %108
  %115 = load i32, i32* @CFI_UNDEFINED, align 4
  %116 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %117 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %157

118:                                              ; preds = %108
  %119 = load i32, i32* @CFI_SP, align 4
  %120 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %121 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %157

122:                                              ; preds = %108
  %123 = load i32, i32* @CFI_BP, align 4
  %124 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %125 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %157

126:                                              ; preds = %108
  %127 = load i32, i32* @CFI_SP_INDIRECT, align 4
  %128 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %129 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %157

130:                                              ; preds = %108
  %131 = load i32, i32* @CFI_R10, align 4
  %132 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %133 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %157

134:                                              ; preds = %108
  %135 = load i32, i32* @CFI_R13, align 4
  %136 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %137 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %157

138:                                              ; preds = %108
  %139 = load i32, i32* @CFI_DI, align 4
  %140 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %141 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %157

142:                                              ; preds = %108
  %143 = load i32, i32* @CFI_DX, align 4
  %144 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %145 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %157

146:                                              ; preds = %108
  %147 = load %struct.instruction*, %struct.instruction** %8, align 8
  %148 = getelementptr inbounds %struct.instruction, %struct.instruction* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.instruction*, %struct.instruction** %8, align 8
  %151 = getelementptr inbounds %struct.instruction, %struct.instruction* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %154 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @WARN_FUNC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %152, i32 %155)
  store i32 -1, i32* %2, align 4
  br label %179

157:                                              ; preds = %142, %138, %134, %130, %126, %122, %118, %114
  %158 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %159 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.cfi_reg*, %struct.cfi_reg** %9, align 8
  %162 = getelementptr inbounds %struct.cfi_reg, %struct.cfi_reg* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %164 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.instruction*, %struct.instruction** %8, align 8
  %167 = getelementptr inbounds %struct.instruction, %struct.instruction* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i64 %165, i64* %168, align 8
  %169 = load %struct.unwind_hint*, %struct.unwind_hint** %7, align 8
  %170 = getelementptr inbounds %struct.unwind_hint, %struct.unwind_hint* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.instruction*, %struct.instruction** %8, align 8
  %173 = getelementptr inbounds %struct.instruction, %struct.instruction* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  br label %175

175:                                              ; preds = %157, %102, %93
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %38

178:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %146, %81, %65, %33, %24, %17
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.section* @find_section_by_name(i32, i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local %struct.rela* @find_rela_by_dest(%struct.section*, i32) #1

declare dso_local %struct.instruction* @find_insn(%struct.objtool_file*, i32, i32) #1

declare dso_local i32 @WARN_FUNC(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
