; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_replace_map_fd_with_map_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_replace_map_fd_with_map_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_6__*, %struct.bpf_map**, %struct.bpf_insn_aux_data* }
%struct.TYPE_6__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i64, i64, i64, i64 }
%struct.bpf_map = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.bpf_map*, i32*, i64)* }
%struct.bpf_insn_aux_data = type { i32, i64 }
%struct.fd = type { i32 }

@BPF_LDX = common dso_local global i64 0, align 8
@BPF_MEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"BPF_LDX uses reserved fields\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_STX = common dso_local global i64 0, align 8
@BPF_XADD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"BPF_STX uses reserved fields\0A\00", align 1
@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid bpf_ld_imm64 insn\0A\00", align 1
@BPF_PSEUDO_MAP_FD = common dso_local global i64 0, align 8
@BPF_PSEUDO_MAP_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"unrecognized bpf_ld_imm64 insn\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"fd %d is not pointing to valid bpf_map\0A\00", align 1
@BPF_MAX_VAR_OFF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"direct value offset of %u is not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"no direct value access support for this map type\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"invalid access to map value pointer, value_size=%u off=%u\0A\00", align 1
@MAX_USED_MAPS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"only one cgroup storage of each type is allowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"unknown opcode %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @replace_map_fd_with_map_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_map_fd_with_map_ptr(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_insn_aux_data*, align 8
  %10 = alloca %struct.bpf_map*, align 8
  %11 = alloca %struct.fd, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fd, align 4
  %14 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.bpf_insn*, %struct.bpf_insn** %18, align 8
  store %struct.bpf_insn* %19, %struct.bpf_insn** %4, align 8
  %20 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @bpf_prog_calc_tag(%struct.TYPE_6__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %421

33:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %415, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %420

38:                                               ; preds = %34
  %39 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %40 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @BPF_CLASS(i32 %41)
  %43 = load i64, i64* @BPF_LDX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %47 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @BPF_MODE(i32 %48)
  %50 = load i64, i64* @BPF_MEM, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %45
  %58 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %59 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %421

62:                                               ; preds = %52, %38
  %63 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %64 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @BPF_CLASS(i32 %65)
  %67 = load i64, i64* @BPF_STX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %62
  %70 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @BPF_MODE(i32 %72)
  %74 = load i64, i64* @BPF_MEM, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @BPF_MODE(i32 %79)
  %81 = load i64, i64* @BPF_XADD, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83, %76
  %89 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %90 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %421

93:                                               ; preds = %83, %62
  %94 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %95 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %94, i64 0
  %96 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BPF_LD, align 4
  %99 = load i32, i32* @BPF_IMM, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @BPF_DW, align 4
  %102 = or i32 %100, %101
  %103 = icmp eq i32 %97, %102
  br i1 %103, label %104, label %400

104:                                              ; preds = %93
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %133, label %109

109:                                              ; preds = %104
  %110 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %111 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %110, i64 1
  %112 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %109
  %116 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %116, i64 1
  %118 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %115
  %122 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %123 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %122, i64 1
  %124 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %129 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %128, i64 1
  %130 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127, %121, %115, %109, %104
  %134 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %135 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %421

138:                                              ; preds = %127
  %139 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %140 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %139, i64 0
  %141 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %395

145:                                              ; preds = %138
  %146 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %147 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %146, i64 0
  %148 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BPF_PSEUDO_MAP_FD, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %154 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %153, i64 0
  %155 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @BPF_PSEUDO_MAP_VALUE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %172, label %159

159:                                              ; preds = %152, %145
  %160 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %161 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %160, i64 0
  %162 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @BPF_PSEUDO_MAP_FD, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %168 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %167, i64 1
  %169 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %166, %152
  %173 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %174 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %421

177:                                              ; preds = %166, %159
  %178 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %179 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %178, i64 0
  %180 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @fdget(i64 %181)
  %183 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = bitcast %struct.fd* %11 to i8*
  %185 = bitcast %struct.fd* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 4, i1 false)
  %186 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call %struct.bpf_map* @__bpf_map_get(i32 %187)
  store %struct.bpf_map* %188, %struct.bpf_map** %10, align 8
  %189 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %190 = call i64 @IS_ERR(%struct.bpf_map* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %177
  %193 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %194 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %195 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %194, i64 0
  %196 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %193, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %197)
  %199 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %200 = call i32 @PTR_ERR(%struct.bpf_map* %199)
  store i32 %200, i32* %2, align 4
  br label %421

201:                                              ; preds = %177
  %202 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %203 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %204 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %205 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %204, i32 0, i32 1
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = call i32 @check_map_prog_compatibility(%struct.bpf_verifier_env* %202, %struct.bpf_map* %203, %struct.TYPE_6__* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @fdput(i32 %212)
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %421

215:                                              ; preds = %201
  %216 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %217 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %216, i32 0, i32 3
  %218 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %218, i64 %220
  store %struct.bpf_insn_aux_data* %221, %struct.bpf_insn_aux_data** %9, align 8
  %222 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %223 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @BPF_PSEUDO_MAP_FD, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %215
  %228 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %229 = ptrtoint %struct.bpf_map* %228 to i64
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %12, align 4
  br label %294

231:                                              ; preds = %215
  %232 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %233 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %232, i64 1
  %234 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %14, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load i64, i64* @BPF_MAX_VAR_OFF, align 8
  %238 = icmp sge i64 %236, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %231
  %240 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %241 = load i64, i64* %14, align 8
  %242 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %241)
  %243 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @fdput(i32 %244)
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %2, align 4
  br label %421

248:                                              ; preds = %231
  %249 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %250 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %249, i32 0, i32 1
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i32 (%struct.bpf_map*, i32*, i64)*, i32 (%struct.bpf_map*, i32*, i64)** %252, align 8
  %254 = icmp ne i32 (%struct.bpf_map*, i32*, i64)* %253, null
  br i1 %254, label %263, label %255

255:                                              ; preds = %248
  %256 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %257 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %256, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %258 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @fdput(i32 %259)
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %2, align 4
  br label %421

263:                                              ; preds = %248
  %264 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %265 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %264, i32 0, i32 1
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32 (%struct.bpf_map*, i32*, i64)*, i32 (%struct.bpf_map*, i32*, i64)** %267, align 8
  %269 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %270 = load i64, i64* %14, align 8
  %271 = call i32 %268(%struct.bpf_map* %269, i32* %12, i64 %270)
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %263
  %275 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %276 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %277 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i64, i64* %14, align 8
  %280 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %275, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %278, i64 %279)
  %281 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @fdput(i32 %282)
  %284 = load i32, i32* %8, align 4
  store i32 %284, i32* %2, align 4
  br label %421

285:                                              ; preds = %263
  %286 = load i64, i64* %14, align 8
  %287 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %288 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %287, i32 0, i32 1
  store i64 %286, i64* %288, align 8
  %289 = load i64, i64* %14, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %289
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %12, align 4
  br label %294

294:                                              ; preds = %285, %227
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %298 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %297, i64 0
  %299 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %298, i32 0, i32 1
  store i64 %296, i64* %299, align 8
  %300 = load i32, i32* %12, align 4
  %301 = ashr i32 %300, 32
  %302 = sext i32 %301 to i64
  %303 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %304 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %303, i64 1
  %305 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %304, i32 0, i32 1
  store i64 %302, i64* %305, align 8
  store i32 0, i32* %7, align 4
  br label %306

306:                                              ; preds = %330, %294
  %307 = load i32, i32* %7, align 4
  %308 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %309 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %333

312:                                              ; preds = %306
  %313 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %314 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %313, i32 0, i32 2
  %315 = load %struct.bpf_map**, %struct.bpf_map*** %314, align 8
  %316 = load i32, i32* %7, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.bpf_map*, %struct.bpf_map** %315, i64 %317
  %319 = load %struct.bpf_map*, %struct.bpf_map** %318, align 8
  %320 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %321 = icmp eq %struct.bpf_map* %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %312
  %323 = load i32, i32* %7, align 4
  %324 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %325 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 8
  %326 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @fdput(i32 %327)
  br label %395

329:                                              ; preds = %312
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %7, align 4
  br label %306

333:                                              ; preds = %306
  %334 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %335 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @MAX_USED_MAPS, align 4
  %338 = icmp sge i32 %336, %337
  br i1 %338, label %339, label %345

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @fdput(i32 %341)
  %343 = load i32, i32* @E2BIG, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %2, align 4
  br label %421

345:                                              ; preds = %333
  %346 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %347 = call %struct.bpf_map* @bpf_map_inc(%struct.bpf_map* %346, i32 0)
  store %struct.bpf_map* %347, %struct.bpf_map** %10, align 8
  %348 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %349 = call i64 @IS_ERR(%struct.bpf_map* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @fdput(i32 %353)
  %355 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %356 = call i32 @PTR_ERR(%struct.bpf_map* %355)
  store i32 %356, i32* %2, align 4
  br label %421

357:                                              ; preds = %345
  %358 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %359 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %362 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %361, i32 0, i32 0
  store i32 %360, i32* %362, align 8
  %363 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %364 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %365 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %364, i32 0, i32 2
  %366 = load %struct.bpf_map**, %struct.bpf_map*** %365, align 8
  %367 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %368 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds %struct.bpf_map*, %struct.bpf_map** %366, i64 %371
  store %struct.bpf_map* %363, %struct.bpf_map** %372, align 8
  %373 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %374 = call i64 @bpf_map_is_cgroup_storage(%struct.bpf_map* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %357
  %377 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %378 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %377, i32 0, i32 1
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %378, align 8
  %380 = load %struct.bpf_map*, %struct.bpf_map** %10, align 8
  %381 = call i64 @bpf_cgroup_storage_assign(%struct.TYPE_6__* %379, %struct.bpf_map* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %391

383:                                              ; preds = %376
  %384 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %385 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %384, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %386 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @fdput(i32 %387)
  %389 = load i32, i32* @EBUSY, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %2, align 4
  br label %421

391:                                              ; preds = %376, %357
  %392 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @fdput(i32 %393)
  br label %395

395:                                              ; preds = %391, %322, %144
  %396 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %397 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %396, i32 1
  store %struct.bpf_insn* %397, %struct.bpf_insn** %4, align 8
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %6, align 4
  br label %415

400:                                              ; preds = %93
  %401 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %402 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = call i32 @bpf_opcode_in_insntable(i32 %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %414, label %406

406:                                              ; preds = %400
  %407 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %408 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %409 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %407, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %410)
  %412 = load i32, i32* @EINVAL, align 4
  %413 = sub nsw i32 0, %412
  store i32 %413, i32* %2, align 4
  br label %421

414:                                              ; preds = %400
  br label %415

415:                                              ; preds = %414, %395
  %416 = load i32, i32* %6, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %6, align 4
  %418 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %419 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %418, i32 1
  store %struct.bpf_insn* %419, %struct.bpf_insn** %4, align 8
  br label %34

420:                                              ; preds = %34
  store i32 0, i32* %2, align 4
  br label %421

421:                                              ; preds = %420, %406, %383, %351, %339, %274, %255, %239, %210, %192, %172, %133, %88, %57, %31
  %422 = load i32, i32* %2, align 4
  ret i32 %422
}

declare dso_local i32 @bpf_prog_calc_tag(%struct.TYPE_6__*) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i64 @BPF_MODE(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @fdget(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.bpf_map* @__bpf_map_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map*) #1

declare dso_local i32 @check_map_prog_compatibility(%struct.bpf_verifier_env*, %struct.bpf_map*, %struct.TYPE_6__*) #1

declare dso_local i32 @fdput(i32) #1

declare dso_local %struct.bpf_map* @bpf_map_inc(%struct.bpf_map*, i32) #1

declare dso_local i64 @bpf_map_is_cgroup_storage(%struct.bpf_map*) #1

declare dso_local i64 @bpf_cgroup_storage_assign(%struct.TYPE_6__*, %struct.bpf_map*) #1

declare dso_local i32 @bpf_opcode_in_insntable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
