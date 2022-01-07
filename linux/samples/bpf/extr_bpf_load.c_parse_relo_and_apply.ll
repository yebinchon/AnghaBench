; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_parse_relo_and_apply.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_parse_relo_and_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.bpf_insn = type { i32, i32, i32 }
%struct.bpf_map_data = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid relo for insn[%d].code 0x%x\0A\00", align 1
@BPF_PSEUDO_MAP_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid relo for insn[%d] no map_data match\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, %struct.bpf_insn*, %struct.bpf_map_data*, i32)* @parse_relo_and_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_relo_and_apply(i32* %0, i32* %1, %struct.TYPE_8__* %2, %struct.bpf_insn* %3, %struct.bpf_map_data* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca %struct.bpf_map_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store %struct.bpf_insn* %3, %struct.bpf_insn** %11, align 8
  store %struct.bpf_map_data* %4, %struct.bpf_map_data** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %113, %6
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %29
  store i32 0, i32* %19, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @gelf_getrel(i32* %34, i32 %35, %struct.TYPE_9__* %17)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 12
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GELF_R_SYM(i32 %44)
  %46 = call i32 @gelf_getsym(i32* %42, i32 %45, %struct.TYPE_7__* %16)
  %47 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %48 = load i32, i32* %18, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i64 %49
  %51 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BPF_LD, align 4
  %54 = load i32, i32* @BPF_IMM, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BPF_DW, align 4
  %57 = or i32 %55, %56
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %33
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %62 = load i32, i32* %18, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i64 %63
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %66)
  store i32 1, i32* %7, align 4
  br label %117

68:                                               ; preds = %33
  %69 = load i32, i32* @BPF_PSEUDO_MAP_FD, align 4
  %70 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %71 = load i32, i32* %18, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %70, i64 %72
  %74 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %73, i32 0, i32 2
  store i32 %69, i32* %74, align 4
  store i32 0, i32* %21, align 4
  br label %75

75:                                               ; preds = %91, %68
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.bpf_map_data*, %struct.bpf_map_data** %12, align 8
  %81 = load i32, i32* %21, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 1, i32* %19, align 4
  br label %94

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %21, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %21, align 4
  br label %75

94:                                               ; preds = %89, %75
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.bpf_map_data*, %struct.bpf_map_data** %12, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %98, i64 %100
  %102 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %104, i64 %106
  %108 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  br label %112

109:                                              ; preds = %94
  %110 = load i32, i32* %18, align 4
  %111 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  store i32 1, i32* %7, align 4
  br label %117

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %29

116:                                              ; preds = %29
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %109, %59
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @gelf_getrel(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @gelf_getsym(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GELF_R_SYM(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
