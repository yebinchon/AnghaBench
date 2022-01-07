; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_subreg_zext_lo32_rnd_hi32.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_subreg_zext_lo32_rnd_hi32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_insn_aux_data*, %struct.bpf_prog* }
%struct.bpf_insn_aux_data = type { i64, i32 }
%struct.bpf_prog = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i64, i32, i32, i32 }
%union.bpf_attr = type { i32 }

@BPF_F_TEST_RND_HI32 = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@BPF_REG_AX = common dso_local global i32 0, align 4
@BPF_LSH = common dso_local global i32 0, align 4
@BPF_OR = common dso_local global i32 0, align 4
@DST_OP = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i64 0, align 8
@BPF_IMM = common dso_local global i64 0, align 8
@BPF_LDX = common dso_local global i64 0, align 8
@PTR_TO_CTX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %union.bpf_attr*)* @opt_subreg_zext_lo32_rnd_hi32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_subreg_zext_lo32_rnd_hi32(%struct.bpf_verifier_env* %0, %union.bpf_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %union.bpf_attr*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca [2 x %struct.bpf_insn], align 16
  %8 = alloca [4 x %struct.bpf_insn], align 16
  %9 = alloca %struct.bpf_insn_aux_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bpf_insn*, align 8
  %15 = alloca %struct.bpf_prog*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_insn, align 8
  %18 = alloca %struct.bpf_insn, align 8
  %19 = alloca %struct.bpf_insn, align 8
  %20 = alloca %struct.bpf_insn, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.bpf_insn, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %union.bpf_attr* %1, %union.bpf_attr** %5, align 8
  %26 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %26, i32 0, i32 0
  %28 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %27, align 8
  store %struct.bpf_insn_aux_data* %28, %struct.bpf_insn_aux_data** %9, align 8
  store i32 0, i32* %12, align 4
  %29 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %29, i32 0, i32 1
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %30, align 8
  %32 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %34, i32 0, i32 1
  %36 = load %struct.bpf_prog*, %struct.bpf_prog** %35, align 8
  %37 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %36, i32 0, i32 1
  %38 = load %struct.bpf_insn*, %struct.bpf_insn** %37, align 8
  store %struct.bpf_insn* %38, %struct.bpf_insn** %14, align 8
  %39 = load %union.bpf_attr*, %union.bpf_attr** %5, align 8
  %40 = bitcast %union.bpf_attr* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BPF_F_TEST_RND_HI32, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %7, i64 0, i64 1
  call void @BPF_ZEXT_REG(%struct.bpf_insn* sret %17, i32 0)
  %45 = bitcast %struct.bpf_insn* %44 to i8*
  %46 = bitcast %struct.bpf_insn* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  %47 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 1
  %48 = load i32, i32* @BPF_MOV, align 4
  %49 = load i32, i32* @BPF_REG_AX, align 4
  call void @BPF_ALU64_IMM(%struct.bpf_insn* sret %18, i32 %48, i32 %49, i32 0)
  %50 = bitcast %struct.bpf_insn* %47 to i8*
  %51 = bitcast %struct.bpf_insn* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 24, i1 false)
  %52 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 2
  %53 = load i32, i32* @BPF_LSH, align 4
  %54 = load i32, i32* @BPF_REG_AX, align 4
  call void @BPF_ALU64_IMM(%struct.bpf_insn* sret %19, i32 %53, i32 %54, i32 32)
  %55 = bitcast %struct.bpf_insn* %52 to i8*
  %56 = bitcast %struct.bpf_insn* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 3
  %58 = load i32, i32* @BPF_OR, align 4
  %59 = load i32, i32* @BPF_REG_AX, align 4
  call void @BPF_ALU64_REG(%struct.bpf_insn* sret %20, i32 %58, i32 0, i32 %59)
  %60 = bitcast %struct.bpf_insn* %57 to i8*
  %61 = bitcast %struct.bpf_insn* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %184, %2
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %187

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %21, align 4
  %70 = load %struct.bpf_insn*, %struct.bpf_insn** %14, align 8
  %71 = load i32, i32* %21, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %70, i64 %72
  %74 = bitcast %struct.bpf_insn* %22 to i8*
  %75 = bitcast %struct.bpf_insn* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 24, i1 false)
  %76 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %76, i64 %78
  %80 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %142, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %184

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %23, align 8
  %90 = load i64, i64* %23, align 8
  %91 = call i64 @BPF_CLASS(i64 %90)
  store i64 %91, i64* %24, align 8
  %92 = call i64 @insn_no_def(%struct.bpf_insn* %22)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %184

95:                                               ; preds = %87
  %96 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %97 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DST_OP, align 4
  %100 = call i64 @is_reg64(%struct.bpf_verifier_env* %96, %struct.bpf_insn* %22, i32 %98, i32* null, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load i64, i64* %24, align 8
  %104 = load i64, i64* @BPF_LD, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i64, i64* %23, align 8
  %108 = call i64 @BPF_MODE(i64 %107)
  %109 = load i64, i64* @BPF_IMM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %111, %106, %102
  br label %184

115:                                              ; preds = %95
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* @BPF_LDX, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %121 = load i32, i32* %21, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %120, i64 %122
  %124 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PTR_TO_CTX, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %184

129:                                              ; preds = %119, %115
  %130 = call i32 (...) @get_random_int()
  store i32 %130, i32* %25, align 4
  %131 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 0
  %132 = bitcast %struct.bpf_insn* %131 to i8*
  %133 = bitcast %struct.bpf_insn* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %132, i8* align 8 %133, i64 24, i1 false)
  %134 = load i32, i32* %25, align 4
  %135 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 1
  %136 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 3
  %140 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds [4 x %struct.bpf_insn], [4 x %struct.bpf_insn]* %8, i64 0, i64 0
  store %struct.bpf_insn* %141, %struct.bpf_insn** %6, align 8
  store i32 4, i32* %11, align 4
  br label %159

142:                                              ; preds = %66
  %143 = call i32 (...) @bpf_jit_needs_zext()
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  br label %184

146:                                              ; preds = %142
  %147 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %7, i64 0, i64 0
  %148 = bitcast %struct.bpf_insn* %147 to i8*
  %149 = bitcast %struct.bpf_insn* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %148, i8* align 8 %149, i64 24, i1 false)
  %150 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %7, i64 0, i64 1
  %153 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %7, i64 0, i64 1
  %157 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %7, i64 0, i64 0
  store %struct.bpf_insn* %158, %struct.bpf_insn** %6, align 8
  store i32 2, i32* %11, align 4
  br label %159

159:                                              ; preds = %146, %129
  %160 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %161 = load i32, i32* %21, align 4
  %162 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env* %160, i32 %161, %struct.bpf_insn* %162, i32 %163)
  store %struct.bpf_prog* %164, %struct.bpf_prog** %15, align 8
  %165 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %166 = icmp ne %struct.bpf_prog* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %159
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %188

170:                                              ; preds = %159
  %171 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %172 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %173 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %172, i32 0, i32 1
  store %struct.bpf_prog* %171, %struct.bpf_prog** %173, align 8
  %174 = load %struct.bpf_prog*, %struct.bpf_prog** %15, align 8
  %175 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %174, i32 0, i32 1
  %176 = load %struct.bpf_insn*, %struct.bpf_insn** %175, align 8
  store %struct.bpf_insn* %176, %struct.bpf_insn** %14, align 8
  %177 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %178 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %177, i32 0, i32 0
  %179 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %178, align 8
  store %struct.bpf_insn_aux_data* %179, %struct.bpf_insn_aux_data** %9, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %170, %145, %128, %114, %94, %86
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %62

187:                                              ; preds = %62
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %167
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local void @BPF_ZEXT_REG(%struct.bpf_insn* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @BPF_ALU64_IMM(%struct.bpf_insn* sret, i32, i32, i32) #1

declare dso_local void @BPF_ALU64_REG(%struct.bpf_insn* sret, i32, i32, i32) #1

declare dso_local i64 @BPF_CLASS(i64) #1

declare dso_local i64 @insn_no_def(%struct.bpf_insn*) #1

declare dso_local i64 @is_reg64(%struct.bpf_verifier_env*, %struct.bpf_insn*, i32, i32*, i32) #1

declare dso_local i64 @BPF_MODE(i64) #1

declare dso_local i32 @get_random_int(...) #1

declare dso_local i32 @bpf_jit_needs_zext(...) #1

declare dso_local %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env*, i32, %struct.bpf_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
