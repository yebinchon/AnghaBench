; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__relocate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__relocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32, %struct.TYPE_5__*, i32, i64, %struct.bpf_insn* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.bpf_insn = type { i32, i32 }
%struct.bpf_object = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@RELO_LD64 = common dso_local global i64 0, align 8
@RELO_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"relocation out of range: '%s'\0A\00", align 1
@LIBBPF_ERRNO__RELOC = common dso_local global i32 0, align 4
@BPF_PSEUDO_MAP_FD = common dso_local global i32 0, align 4
@BPF_PSEUDO_MAP_VALUE = common dso_local global i32 0, align 4
@RELO_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, %struct.bpf_object*)* @bpf_program__relocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_program__relocate(%struct.bpf_program* %0, %struct.bpf_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_program*, align 8
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %4, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %5, align 8
  %12 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %13 = icmp ne %struct.bpf_program* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %192

15:                                               ; preds = %2
  %16 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %17 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %22 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %23 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bpf_program_reloc_btf_ext(%struct.bpf_program* %21, %struct.bpf_object* %22, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %192

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %192

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %183, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %186

45:                                               ; preds = %39
  %46 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %47 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RELO_LD64, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %45
  %57 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %58 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RELO_DATA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %155

67:                                               ; preds = %56, %45
  %68 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %69 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RELO_DATA, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %79, i32 0, i32 4
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %80, align 8
  store %struct.bpf_insn* %81, %struct.bpf_insn** %9, align 8
  %82 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %83 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %10, align 4
  %90 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %91 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %101 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = icmp sge i32 %99, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %67
  %106 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %107 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pr_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @LIBBPF_ERRNO__RELOC, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %192

112:                                              ; preds = %67
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @BPF_PSEUDO_MAP_FD, align 4
  %117 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %117, i64 %119
  %121 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %120, i32 0, i32 1
  store i32 %116, i32* %121, align 4
  br label %141

122:                                              ; preds = %112
  %123 = load i32, i32* @BPF_PSEUDO_MAP_VALUE, align 4
  %124 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %124, i64 %126
  %128 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  %129 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %129, i64 %131
  %133 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %135, i64 %138
  %140 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %139, i32 0, i32 0
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %122, %115
  %142 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %143 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %150, i64 %152
  %154 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %153, i32 0, i32 0
  store i32 %149, i32* %154, align 4
  br label %182

155:                                              ; preds = %56
  %156 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %157 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %156, i32 0, i32 1
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @RELO_CALL, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %155
  %167 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %168 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %169 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %170 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %169, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = call i32 @bpf_program__reloc_text(%struct.bpf_program* %167, %struct.bpf_object* %168, %struct.TYPE_5__* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %3, align 4
  br label %192

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %155
  br label %182

182:                                              ; preds = %181, %141
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %39

186:                                              ; preds = %39
  %187 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %188 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %187, i32 0, i32 1
  %189 = call i32 @zfree(%struct.TYPE_5__** %188)
  %190 = load %struct.bpf_program*, %struct.bpf_program** %4, align 8
  %191 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %186, %178, %105, %37, %29, %14
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @bpf_program_reloc_btf_ext(%struct.bpf_program*, %struct.bpf_object*, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @bpf_program__reloc_text(%struct.bpf_program*, %struct.bpf_object*, %struct.TYPE_5__*) #1

declare dso_local i32 @zfree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
