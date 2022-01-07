; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_scalar_min_max_vals.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_scalar_min_max_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_insn = type { i32, i32 }
%struct.bpf_reg_state = type { i64, i64, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }

@BPF_ALU64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"R%d tried to add from different pointers or scalars\0A\00", align 1
@S64_MIN = common dso_local global i8* null, align 8
@S64_MAX = common dso_local global i8* null, align 8
@U64_MAX = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"R%d tried to sub from different pointers or scalars\0A\00", align 1
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*, %struct.bpf_reg_state*, %struct.bpf_reg_state*)* @adjust_scalar_min_max_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_scalar_min_max_vals(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1, %struct.bpf_reg_state* %2, %struct.bpf_reg_state* byval(%struct.bpf_reg_state) align 8 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_23__, align 4
  %21 = alloca %struct.TYPE_23__, align 4
  %22 = alloca %struct.TYPE_23__, align 4
  %23 = alloca %struct.TYPE_23__, align 4
  %24 = alloca %struct.TYPE_23__, align 4
  %25 = alloca %struct.TYPE_23__, align 4
  %26 = alloca %struct.TYPE_23__, align 4
  %27 = alloca %struct.TYPE_23__, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %7, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %8, align 8
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %29 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %28)
  store %struct.bpf_reg_state* %29, %struct.bpf_reg_state** %9, align 8
  %30 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BPF_OP(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @BPF_CLASS(i32 %36)
  %38 = load i64, i64* @BPF_ALU64, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 64, i32 32
  store i32 %41, i32* %17, align 4
  %42 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %51

47:                                               ; preds = %4
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %49 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %48, i32 4)
  %50 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %3, i32 4)
  br label %51

51:                                               ; preds = %47, %4
  %52 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  %54 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  %56 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  %58 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  %60 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %61 = bitcast %struct.TYPE_23__* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @tnum_is_const(i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %65 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %64, i32 0, i32 4
  %66 = bitcast %struct.TYPE_23__* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @tnum_is_const(i64 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %51
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75, %51
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %79, %75, %71
  %88 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %89 = call i32 @__mark_reg_unknown(%struct.bpf_reg_state* %88)
  store i32 0, i32* %5, align 4
  br label %695

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 135
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 128
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 134
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %104 = call i32 @__mark_reg_unknown(%struct.bpf_reg_state* %103)
  store i32 0, i32* %5, align 4
  br label %695

105:                                              ; preds = %99, %96, %93, %90
  %106 = load i32, i32* %10, align 4
  switch i32 %106, label %673 [
    i32 135, label %107
    i32 128, label %200
    i32 131, label %283
    i32 134, label %365
    i32 130, label %443
    i32 132, label %526
    i32 129, label %587
    i32 133, label %630
  ]

107:                                              ; preds = %105
  %108 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %109 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %110 = call i32 @sanitize_val_alu(%struct.bpf_verifier_env* %108, %struct.bpf_insn* %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @verbose(%struct.bpf_verifier_env* %114, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %19, align 4
  store i32 %117, i32* %5, align 4
  br label %695

118:                                              ; preds = %107
  %119 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %120 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @signed_add_overflows(i64 %121, i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %118
  %126 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %127 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @signed_add_overflows(i64 %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %125, %118
  %133 = load i8*, i8** @S64_MIN, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %136 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load i8*, i8** @S64_MAX, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %140 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %152

141:                                              ; preds = %125
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %144 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %149 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %141, %132
  %153 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %154 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %155, %156
  %158 = load i32, i32* %15, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %162 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %16, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160, %152
  %169 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %170 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %169, i32 0, i32 2
  store i32 0, i32* %170, align 8
  %171 = load i8*, i8** @U64_MAX, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %174 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  br label %186

175:                                              ; preds = %160
  %176 = load i32, i32* %15, align 4
  %177 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %178 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %183 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %175, %168
  %187 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %188 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %187, i32 0, i32 4
  %189 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %190 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %192 = bitcast %struct.TYPE_23__* %190 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = bitcast %struct.TYPE_23__* %191 to i64*
  %195 = load i64, i64* %194, align 8
  %196 = call i64 @tnum_add(i64 %193, i64 %195)
  %197 = bitcast %struct.TYPE_23__* %20 to i64*
  store i64 %196, i64* %197, align 4
  %198 = bitcast %struct.TYPE_23__* %188 to i8*
  %199 = bitcast %struct.TYPE_23__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 4 %199, i64 8, i1 false)
  br label %680

200:                                              ; preds = %105
  %201 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %202 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %203 = call i32 @sanitize_val_alu(%struct.bpf_verifier_env* %201, %struct.bpf_insn* %202)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %208 = load i32, i32* %18, align 4
  %209 = call i32 @verbose(%struct.bpf_verifier_env* %207, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %19, align 4
  store i32 %210, i32* %5, align 4
  br label %695

211:                                              ; preds = %200
  %212 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %213 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %14, align 8
  %216 = call i32 @signed_sub_overflows(i64 %214, i64 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %211
  %219 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %220 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @signed_sub_overflows(i64 %221, i64 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %218, %211
  %226 = load i8*, i8** @S64_MIN, align 8
  %227 = ptrtoint i8* %226 to i64
  %228 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %229 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load i8*, i8** @S64_MAX, align 8
  %231 = ptrtoint i8* %230 to i64
  %232 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %233 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  br label %245

234:                                              ; preds = %218
  %235 = load i64, i64* %14, align 8
  %236 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %237 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %238, %235
  store i64 %239, i64* %237, align 8
  %240 = load i64, i64* %13, align 8
  %241 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %242 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %243, %240
  store i64 %244, i64* %242, align 8
  br label %245

245:                                              ; preds = %234, %225
  %246 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %247 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %16, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %253 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %252, i32 0, i32 2
  store i32 0, i32* %253, align 8
  %254 = load i8*, i8** @U64_MAX, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %257 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 4
  br label %269

258:                                              ; preds = %245
  %259 = load i32, i32* %16, align 4
  %260 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %261 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = sub nsw i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load i32, i32* %15, align 4
  %265 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %266 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %258, %251
  %270 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %271 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %270, i32 0, i32 4
  %272 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %273 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %275 = bitcast %struct.TYPE_23__* %273 to i64*
  %276 = load i64, i64* %275, align 8
  %277 = bitcast %struct.TYPE_23__* %274 to i64*
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @tnum_sub(i64 %276, i64 %278)
  %280 = bitcast %struct.TYPE_23__* %21 to i64*
  store i64 %279, i64* %280, align 4
  %281 = bitcast %struct.TYPE_23__* %271 to i8*
  %282 = bitcast %struct.TYPE_23__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %281, i8* align 4 %282, i64 8, i1 false)
  br label %680

283:                                              ; preds = %105
  %284 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %285 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %284, i32 0, i32 4
  %286 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %287 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %289 = bitcast %struct.TYPE_23__* %287 to i64*
  %290 = load i64, i64* %289, align 8
  %291 = bitcast %struct.TYPE_23__* %288 to i64*
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @tnum_mul(i64 %290, i64 %292)
  %294 = bitcast %struct.TYPE_23__* %22 to i64*
  store i64 %293, i64* %294, align 4
  %295 = bitcast %struct.TYPE_23__* %285 to i8*
  %296 = bitcast %struct.TYPE_23__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %295, i8* align 4 %296, i64 8, i1 false)
  %297 = load i64, i64* %13, align 8
  %298 = icmp slt i64 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %283
  %300 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %301 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp slt i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %299, %283
  %305 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %306 = call i32 @__mark_reg_unbounded(%struct.bpf_reg_state* %305)
  %307 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %308 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %307)
  br label %680

309:                                              ; preds = %299
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* @U32_MAX, align 4
  %312 = icmp sgt i32 %310, %311
  br i1 %312, label %319, label %313

313:                                              ; preds = %309
  %314 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %315 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @U32_MAX, align 4
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %324

319:                                              ; preds = %313, %309
  %320 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %321 = call i32 @__mark_reg_unbounded(%struct.bpf_reg_state* %320)
  %322 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %323 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %322)
  br label %680

324:                                              ; preds = %313
  %325 = load i32, i32* %15, align 4
  %326 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %327 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %328, %325
  store i32 %329, i32* %327, align 8
  %330 = load i32, i32* %16, align 4
  %331 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %332 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = mul nsw i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %336 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = inttoptr i64 %338 to i8*
  %340 = load i8*, i8** @S64_MAX, align 8
  %341 = icmp ugt i8* %339, %340
  br i1 %341, label %342, label %351

342:                                              ; preds = %324
  %343 = load i8*, i8** @S64_MIN, align 8
  %344 = ptrtoint i8* %343 to i64
  %345 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %346 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %345, i32 0, i32 0
  store i64 %344, i64* %346, align 8
  %347 = load i8*, i8** @S64_MAX, align 8
  %348 = ptrtoint i8* %347 to i64
  %349 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %350 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %349, i32 0, i32 1
  store i64 %348, i64* %350, align 8
  br label %364

351:                                              ; preds = %324
  %352 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %353 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %357 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %356, i32 0, i32 0
  store i64 %355, i64* %357, align 8
  %358 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %359 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %363 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %362, i32 0, i32 1
  store i64 %361, i64* %363, align 8
  br label %364

364:                                              ; preds = %351, %342
  br label %680

365:                                              ; preds = %105
  %366 = load i32, i32* %11, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %365
  %369 = load i32, i32* %12, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %382

371:                                              ; preds = %368
  %372 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %373 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %374 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %376, %379
  %381 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %372, i32 %380)
  br label %680

382:                                              ; preds = %368, %365
  %383 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %384 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %383, i32 0, i32 4
  %385 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %386 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %388 = bitcast %struct.TYPE_23__* %386 to i64*
  %389 = load i64, i64* %388, align 8
  %390 = bitcast %struct.TYPE_23__* %387 to i64*
  %391 = load i64, i64* %390, align 8
  %392 = call i64 @tnum_and(i64 %389, i64 %391)
  %393 = bitcast %struct.TYPE_23__* %23 to i64*
  store i64 %392, i64* %393, align 4
  %394 = bitcast %struct.TYPE_23__* %384 to i8*
  %395 = bitcast %struct.TYPE_23__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %394, i8* align 4 %395, i64 8, i1 false)
  %396 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %397 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %396, i32 0, i32 4
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %401 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %400, i32 0, i32 2
  store i32 %399, i32* %401, align 8
  %402 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %403 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = load i32, i32* %16, align 4
  %407 = call i64 @min(i64 %405, i32 %406)
  %408 = trunc i64 %407 to i32
  %409 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %410 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %409, i32 0, i32 3
  store i32 %408, i32* %410, align 4
  %411 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %412 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp slt i64 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %382
  %416 = load i64, i64* %13, align 8
  %417 = icmp slt i64 %416, 0
  br i1 %417, label %418, label %427

418:                                              ; preds = %415, %382
  %419 = load i8*, i8** @S64_MIN, align 8
  %420 = ptrtoint i8* %419 to i64
  %421 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %422 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %421, i32 0, i32 0
  store i64 %420, i64* %422, align 8
  %423 = load i8*, i8** @S64_MAX, align 8
  %424 = ptrtoint i8* %423 to i64
  %425 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %426 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %425, i32 0, i32 1
  store i64 %424, i64* %426, align 8
  br label %440

427:                                              ; preds = %415
  %428 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %429 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %433 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %432, i32 0, i32 0
  store i64 %431, i64* %433, align 8
  %434 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %435 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  %438 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %439 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %438, i32 0, i32 1
  store i64 %437, i64* %439, align 8
  br label %440

440:                                              ; preds = %427, %418
  %441 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %442 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %441)
  br label %680

443:                                              ; preds = %105
  %444 = load i32, i32* %11, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %460

446:                                              ; preds = %443
  %447 = load i32, i32* %12, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %460

449:                                              ; preds = %446
  %450 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %451 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %452 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %451, i32 0, i32 4
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = or i32 %454, %457
  %459 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %450, i32 %458)
  br label %680

460:                                              ; preds = %446, %443
  %461 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %462 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %461, i32 0, i32 4
  %463 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %464 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %463, i32 0, i32 4
  %465 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 4
  %466 = bitcast %struct.TYPE_23__* %464 to i64*
  %467 = load i64, i64* %466, align 8
  %468 = bitcast %struct.TYPE_23__* %465 to i64*
  %469 = load i64, i64* %468, align 8
  %470 = call i64 @tnum_or(i64 %467, i64 %469)
  %471 = bitcast %struct.TYPE_23__* %24 to i64*
  store i64 %470, i64* %471, align 4
  %472 = bitcast %struct.TYPE_23__* %462 to i8*
  %473 = bitcast %struct.TYPE_23__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %472, i8* align 4 %473, i64 8, i1 false)
  %474 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %475 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = load i32, i32* %15, align 4
  %479 = call i64 @max(i64 %477, i32 %478)
  %480 = trunc i64 %479 to i32
  %481 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %482 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %481, i32 0, i32 2
  store i32 %480, i32* %482, align 8
  %483 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %484 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %483, i32 0, i32 4
  %485 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %488 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %487, i32 0, i32 4
  %489 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = or i32 %486, %490
  %492 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %493 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %492, i32 0, i32 3
  store i32 %491, i32* %493, align 4
  %494 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %495 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = icmp slt i64 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %460
  %499 = load i64, i64* %13, align 8
  %500 = icmp slt i64 %499, 0
  br i1 %500, label %501, label %510

501:                                              ; preds = %498, %460
  %502 = load i8*, i8** @S64_MIN, align 8
  %503 = ptrtoint i8* %502 to i64
  %504 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %505 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %504, i32 0, i32 0
  store i64 %503, i64* %505, align 8
  %506 = load i8*, i8** @S64_MAX, align 8
  %507 = ptrtoint i8* %506 to i64
  %508 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %509 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %508, i32 0, i32 1
  store i64 %507, i64* %509, align 8
  br label %523

510:                                              ; preds = %498
  %511 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %512 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = sext i32 %513 to i64
  %515 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %516 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %515, i32 0, i32 0
  store i64 %514, i64* %516, align 8
  %517 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %518 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %517, i32 0, i32 3
  %519 = load i32, i32* %518, align 4
  %520 = sext i32 %519 to i64
  %521 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %522 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %521, i32 0, i32 1
  store i64 %520, i64* %522, align 8
  br label %523

523:                                              ; preds = %510, %501
  %524 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %525 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %524)
  br label %680

526:                                              ; preds = %105
  %527 = load i32, i32* %16, align 4
  %528 = load i32, i32* %17, align 4
  %529 = icmp sge i32 %527, %528
  br i1 %529, label %530, label %537

530:                                              ; preds = %526
  %531 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %532 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %533 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %534 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %531, %struct.bpf_reg_state* %532, i32 %535)
  br label %680

537:                                              ; preds = %526
  %538 = load i8*, i8** @S64_MIN, align 8
  %539 = ptrtoint i8* %538 to i64
  %540 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %541 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %540, i32 0, i32 0
  store i64 %539, i64* %541, align 8
  %542 = load i8*, i8** @S64_MAX, align 8
  %543 = ptrtoint i8* %542 to i64
  %544 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %545 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %544, i32 0, i32 1
  store i64 %543, i64* %545, align 8
  %546 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %547 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %546, i32 0, i32 3
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = load i32, i32* %16, align 4
  %551 = sub nsw i32 63, %550
  %552 = zext i32 %551 to i64
  %553 = shl i64 1, %552
  %554 = icmp ugt i64 %549, %553
  br i1 %554, label %555, label %562

555:                                              ; preds = %537
  %556 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %557 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %556, i32 0, i32 2
  store i32 0, i32* %557, align 8
  %558 = load i8*, i8** @U64_MAX, align 8
  %559 = ptrtoint i8* %558 to i32
  %560 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %561 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %560, i32 0, i32 3
  store i32 %559, i32* %561, align 4
  br label %573

562:                                              ; preds = %537
  %563 = load i32, i32* %15, align 4
  %564 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %565 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = shl i32 %566, %563
  store i32 %567, i32* %565, align 8
  %568 = load i32, i32* %16, align 4
  %569 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %570 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = shl i32 %571, %568
  store i32 %572, i32* %570, align 4
  br label %573

573:                                              ; preds = %562, %555
  %574 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %575 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %574, i32 0, i32 4
  %576 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %577 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %576, i32 0, i32 4
  %578 = load i32, i32* %15, align 4
  %579 = bitcast %struct.TYPE_23__* %577 to i64*
  %580 = load i64, i64* %579, align 8
  %581 = call i64 @tnum_lshift(i64 %580, i32 %578)
  %582 = bitcast %struct.TYPE_23__* %25 to i64*
  store i64 %581, i64* %582, align 4
  %583 = bitcast %struct.TYPE_23__* %575 to i8*
  %584 = bitcast %struct.TYPE_23__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %583, i8* align 4 %584, i64 8, i1 false)
  %585 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %586 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %585)
  br label %680

587:                                              ; preds = %105
  %588 = load i32, i32* %16, align 4
  %589 = load i32, i32* %17, align 4
  %590 = icmp sge i32 %588, %589
  br i1 %590, label %591, label %598

591:                                              ; preds = %587
  %592 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %593 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %594 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %595 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %592, %struct.bpf_reg_state* %593, i32 %596)
  br label %680

598:                                              ; preds = %587
  %599 = load i8*, i8** @S64_MIN, align 8
  %600 = ptrtoint i8* %599 to i64
  %601 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %602 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %601, i32 0, i32 0
  store i64 %600, i64* %602, align 8
  %603 = load i8*, i8** @S64_MAX, align 8
  %604 = ptrtoint i8* %603 to i64
  %605 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %606 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %605, i32 0, i32 1
  store i64 %604, i64* %606, align 8
  %607 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %608 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %607, i32 0, i32 4
  %609 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %610 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %609, i32 0, i32 4
  %611 = load i32, i32* %15, align 4
  %612 = bitcast %struct.TYPE_23__* %610 to i64*
  %613 = load i64, i64* %612, align 8
  %614 = call i64 @tnum_rshift(i64 %613, i32 %611)
  %615 = bitcast %struct.TYPE_23__* %26 to i64*
  store i64 %614, i64* %615, align 4
  %616 = bitcast %struct.TYPE_23__* %608 to i8*
  %617 = bitcast %struct.TYPE_23__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %616, i8* align 4 %617, i64 8, i1 false)
  %618 = load i32, i32* %16, align 4
  %619 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %620 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %619, i32 0, i32 2
  %621 = load i32, i32* %620, align 8
  %622 = ashr i32 %621, %618
  store i32 %622, i32* %620, align 8
  %623 = load i32, i32* %15, align 4
  %624 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %625 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %624, i32 0, i32 3
  %626 = load i32, i32* %625, align 4
  %627 = ashr i32 %626, %623
  store i32 %627, i32* %625, align 4
  %628 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %629 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %628)
  br label %680

630:                                              ; preds = %105
  %631 = load i32, i32* %16, align 4
  %632 = load i32, i32* %17, align 4
  %633 = icmp sge i32 %631, %632
  br i1 %633, label %634, label %641

634:                                              ; preds = %630
  %635 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %636 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %637 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %638 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %635, %struct.bpf_reg_state* %636, i32 %639)
  br label %680

641:                                              ; preds = %630
  %642 = load i32, i32* %15, align 4
  %643 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %644 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %643, i32 0, i32 0
  %645 = load i64, i64* %644, align 8
  %646 = zext i32 %642 to i64
  %647 = ashr i64 %645, %646
  store i64 %647, i64* %644, align 8
  %648 = load i32, i32* %15, align 4
  %649 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %650 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %649, i32 0, i32 1
  %651 = load i64, i64* %650, align 8
  %652 = zext i32 %648 to i64
  %653 = ashr i64 %651, %652
  store i64 %653, i64* %650, align 8
  %654 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %655 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %654, i32 0, i32 4
  %656 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %657 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %656, i32 0, i32 4
  %658 = load i32, i32* %15, align 4
  %659 = bitcast %struct.TYPE_23__* %657 to i64*
  %660 = load i64, i64* %659, align 8
  %661 = call i64 @tnum_arshift(i64 %660, i32 %658)
  %662 = bitcast %struct.TYPE_23__* %27 to i64*
  store i64 %661, i64* %662, align 4
  %663 = bitcast %struct.TYPE_23__* %655 to i8*
  %664 = bitcast %struct.TYPE_23__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %663, i8* align 4 %664, i64 8, i1 false)
  %665 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %666 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %665, i32 0, i32 2
  store i32 0, i32* %666, align 8
  %667 = load i8*, i8** @U64_MAX, align 8
  %668 = ptrtoint i8* %667 to i32
  %669 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %670 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %669, i32 0, i32 3
  store i32 %668, i32* %670, align 4
  %671 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %672 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %671)
  br label %680

673:                                              ; preds = %105
  %674 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %675 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %676 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %677 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 4
  %679 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %674, %struct.bpf_reg_state* %675, i32 %678)
  br label %680

680:                                              ; preds = %673, %641, %634, %598, %591, %573, %530, %523, %449, %440, %371, %364, %319, %304, %269, %186
  %681 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %682 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 4
  %684 = call i64 @BPF_CLASS(i32 %683)
  %685 = load i64, i64* @BPF_ALU64, align 8
  %686 = icmp ne i64 %684, %685
  br i1 %686, label %687, label %690

687:                                              ; preds = %680
  %688 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %689 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %688, i32 4)
  br label %690

690:                                              ; preds = %687, %680
  %691 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %692 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %691)
  %693 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %694 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %693)
  store i32 0, i32* %5, align 4
  br label %695

695:                                              ; preds = %690, %206, %113, %102, %87
  %696 = load i32, i32* %5, align 4
  ret i32 %696
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @coerce_reg_to_size(%struct.bpf_reg_state*, i32) #1

declare dso_local i32 @tnum_is_const(i64) #1

declare dso_local i32 @__mark_reg_unknown(%struct.bpf_reg_state*) #1

declare dso_local i32 @sanitize_val_alu(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32) #1

declare dso_local i32 @signed_add_overflows(i64, i64) #1

declare dso_local i64 @tnum_add(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @signed_sub_overflows(i64, i64) #1

declare dso_local i64 @tnum_sub(i64, i64) #1

declare dso_local i64 @tnum_mul(i64, i64) #1

declare dso_local i32 @__mark_reg_unbounded(%struct.bpf_reg_state*) #1

declare dso_local i32 @__update_reg_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__mark_reg_known(%struct.bpf_reg_state*, i32) #1

declare dso_local i64 @tnum_and(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @tnum_or(i64, i64) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32) #1

declare dso_local i64 @tnum_lshift(i64, i32) #1

declare dso_local i64 @tnum_rshift(i64, i32) #1

declare dso_local i64 @tnum_arshift(i64, i32) #1

declare dso_local i32 @__reg_deduce_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_bound_offset(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
