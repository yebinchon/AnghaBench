; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_find_jump_table.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_check.c_find_jump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rela = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.section* }
%struct.section = type { i32, i32 }
%struct.objtool_file = type { i32, i32 }
%struct.symbol = type { i64, i64 }
%struct.instruction = type { i64, i64, i64, i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@INSN_JUMP_DYNAMIC = common dso_local global i64 0, align 8
@INSN_JUMP_UNCONDITIONAL = common dso_local global i64 0, align 8
@STT_SECTION = common dso_local global i64 0, align 8
@R_X86_64_PC32 = common dso_local global i64 0, align 8
@C_JUMP_TABLE_SECTION = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rela* (%struct.objtool_file*, %struct.symbol*, %struct.instruction*)* @find_jump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rela* @find_jump_table(%struct.objtool_file* %0, %struct.symbol* %1, %struct.instruction* %2) #0 {
  %4 = alloca %struct.rela*, align 8
  %5 = alloca %struct.objtool_file*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.instruction*, align 8
  %8 = alloca %struct.rela*, align 8
  %9 = alloca %struct.rela*, align 8
  %10 = alloca %struct.instruction*, align 8
  %11 = alloca %struct.section*, align 8
  %12 = alloca i64, align 8
  store %struct.objtool_file* %0, %struct.objtool_file** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store %struct.instruction* %2, %struct.instruction** %7, align 8
  %13 = load %struct.instruction*, %struct.instruction** %7, align 8
  store %struct.instruction* %13, %struct.instruction** %10, align 8
  br label %14

14:                                               ; preds = %171, %3
  %15 = load %struct.instruction*, %struct.instruction** %7, align 8
  %16 = getelementptr inbounds %struct.instruction, %struct.instruction* %15, i32 0, i32 6
  %17 = load %struct.objtool_file*, %struct.objtool_file** %5, align 8
  %18 = getelementptr inbounds %struct.objtool_file, %struct.objtool_file* %17, i32 0, i32 1
  %19 = icmp ne i32* %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.instruction*, %struct.instruction** %7, align 8
  %22 = getelementptr inbounds %struct.instruction, %struct.instruction* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.symbol*, %struct.symbol** %6, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.instruction*, %struct.instruction** %7, align 8
  %30 = getelementptr inbounds %struct.instruction, %struct.instruction* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.symbol*, %struct.symbol** %6, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br label %36

36:                                               ; preds = %28, %20, %14
  %37 = phi i1 [ false, %20 ], [ false, %14 ], [ %35, %28 ]
  br i1 %37, label %38, label %173

38:                                               ; preds = %36
  %39 = load %struct.instruction*, %struct.instruction** %7, align 8
  %40 = load %struct.instruction*, %struct.instruction** %10, align 8
  %41 = icmp ne %struct.instruction* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.instruction*, %struct.instruction** %7, align 8
  %44 = getelementptr inbounds %struct.instruction, %struct.instruction* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INSN_JUMP_DYNAMIC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %173

49:                                               ; preds = %42, %38
  %50 = load %struct.instruction*, %struct.instruction** %7, align 8
  %51 = getelementptr inbounds %struct.instruction, %struct.instruction* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @INSN_JUMP_UNCONDITIONAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.instruction*, %struct.instruction** %7, align 8
  %57 = getelementptr inbounds %struct.instruction, %struct.instruction* %56, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load %struct.instruction*, %struct.instruction** %7, align 8
  %62 = getelementptr inbounds %struct.instruction, %struct.instruction* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.instruction*, %struct.instruction** %7, align 8
  %67 = getelementptr inbounds %struct.instruction, %struct.instruction* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %65, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %60
  %71 = load %struct.instruction*, %struct.instruction** %7, align 8
  %72 = getelementptr inbounds %struct.instruction, %struct.instruction* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.instruction*, %struct.instruction** %10, align 8
  %77 = getelementptr inbounds %struct.instruction, %struct.instruction* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70, %60
  br label %173

81:                                               ; preds = %70, %55, %49
  %82 = load %struct.instruction*, %struct.instruction** %7, align 8
  %83 = getelementptr inbounds %struct.instruction, %struct.instruction* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.instruction*, %struct.instruction** %7, align 8
  %86 = getelementptr inbounds %struct.instruction, %struct.instruction* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.instruction*, %struct.instruction** %7, align 8
  %89 = getelementptr inbounds %struct.instruction, %struct.instruction* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.rela* @find_rela_by_dest_range(i64 %84, i64 %87, i32 %90)
  store %struct.rela* %91, %struct.rela** %8, align 8
  %92 = load %struct.rela*, %struct.rela** %8, align 8
  %93 = icmp ne %struct.rela* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %81
  %95 = load %struct.rela*, %struct.rela** %8, align 8
  %96 = getelementptr inbounds %struct.rela, %struct.rela* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @STT_SECTION, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %94
  %103 = load %struct.rela*, %struct.rela** %8, align 8
  %104 = getelementptr inbounds %struct.rela, %struct.rela* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.section*, %struct.section** %106, align 8
  %108 = getelementptr inbounds %struct.section, %struct.section* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102, %94, %81
  br label %160

112:                                              ; preds = %102
  %113 = load %struct.rela*, %struct.rela** %8, align 8
  %114 = getelementptr inbounds %struct.rela, %struct.rela* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %12, align 8
  %116 = load %struct.rela*, %struct.rela** %8, align 8
  %117 = getelementptr inbounds %struct.rela, %struct.rela* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load %struct.section*, %struct.section** %119, align 8
  store %struct.section* %120, %struct.section** %11, align 8
  %121 = load %struct.rela*, %struct.rela** %8, align 8
  %122 = getelementptr inbounds %struct.rela, %struct.rela* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @R_X86_64_PC32, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %112
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 4
  store i64 %128, i64* %12, align 8
  br label %129

129:                                              ; preds = %126, %112
  %130 = load %struct.section*, %struct.section** %11, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i64 @find_symbol_containing(%struct.section* %130, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load %struct.section*, %struct.section** %11, align 8
  %136 = getelementptr inbounds %struct.section, %struct.section* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @C_JUMP_TABLE_SECTION, align 4
  %139 = call i64 @strcmp(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %160

142:                                              ; preds = %134, %129
  %143 = load %struct.section*, %struct.section** %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call %struct.rela* @find_rela_by_dest(%struct.section* %143, i64 %144)
  store %struct.rela* %145, %struct.rela** %9, align 8
  %146 = load %struct.rela*, %struct.rela** %9, align 8
  %147 = icmp ne %struct.rela* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  br label %160

149:                                              ; preds = %142
  %150 = load %struct.rela*, %struct.rela** %8, align 8
  %151 = getelementptr inbounds %struct.rela, %struct.rela* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @R_X86_64_PC32, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.objtool_file*, %struct.objtool_file** %5, align 8
  %157 = getelementptr inbounds %struct.objtool_file, %struct.objtool_file* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = load %struct.rela*, %struct.rela** %9, align 8
  store %struct.rela* %159, %struct.rela** %4, align 8
  br label %174

160:                                              ; preds = %148, %141, %111
  %161 = load %struct.instruction*, %struct.instruction** %7, align 8
  %162 = getelementptr inbounds %struct.instruction, %struct.instruction* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = inttoptr i64 %163 to %struct.instruction*
  br label %171

167:                                              ; preds = %160
  %168 = load %struct.instruction*, %struct.instruction** %7, align 8
  %169 = load i32, i32* @list, align 4
  %170 = call %struct.instruction* @list_prev_entry(%struct.instruction* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %165
  %172 = phi %struct.instruction* [ %166, %165 ], [ %170, %167 ]
  store %struct.instruction* %172, %struct.instruction** %7, align 8
  br label %14

173:                                              ; preds = %80, %48, %36
  store %struct.rela* null, %struct.rela** %4, align 8
  br label %174

174:                                              ; preds = %173, %158
  %175 = load %struct.rela*, %struct.rela** %4, align 8
  ret %struct.rela* %175
}

declare dso_local %struct.rela* @find_rela_by_dest_range(i64, i64, i32) #1

declare dso_local i64 @find_symbol_containing(%struct.section*, i64) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.rela* @find_rela_by_dest(%struct.section*, i64) #1

declare dso_local %struct.instruction* @list_prev_entry(%struct.instruction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
