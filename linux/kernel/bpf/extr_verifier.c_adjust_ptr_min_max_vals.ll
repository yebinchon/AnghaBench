; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_ptr_min_max_vals.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_ptr_min_max_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i32, %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { %struct.bpf_reg_state* }
%struct.bpf_insn = type { i64, i64, i32 }
%struct.bpf_reg_state = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@BPF_ALU64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"R%d 32-bit pointer arithmetic prohibited\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"R%d pointer arithmetic on %s prohibited, null-check it first\0A\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"R%d pointer arithmetic on %s prohibited\0A\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"R%d has unknown scalar with mixed signed bounds, pointer arithmetic with it prohibited for !root\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"R%d tried to add from different maps or paths\0A\00", align 1
@S64_MIN = common dso_local global i8* null, align 8
@S64_MAX = common dso_local global i8* null, align 8
@U64_MAX = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"R%d tried to sub from different maps or paths\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"R%d tried to subtract pointer from scalar\0A\00", align 1
@PTR_TO_STACK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"R%d subtraction from stack pointer prohibited\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"R%d bitwise operator %s on pointer prohibited\0A\00", align 1
@bpf_alu_string = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"R%d pointer arithmetic with %s operator prohibited\0A\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"R%d pointer arithmetic of map value goes out of range, prohibited for !root\0A\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"R%d stack pointer arithmetic goes out of range, prohibited for !root\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*, %struct.bpf_reg_state*, %struct.bpf_reg_state*)* @adjust_ptr_min_max_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_ptr_min_max_vals(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1, %struct.bpf_reg_state* %2, %struct.bpf_reg_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_verifier_state*, align 8
  %11 = alloca %struct.bpf_func_state*, align 8
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_reg_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_8__, align 8
  %28 = alloca %struct.TYPE_8__, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %7, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %8, align 8
  store %struct.bpf_reg_state* %3, %struct.bpf_reg_state** %9, align 8
  %29 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %29, i32 0, i32 2
  %31 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %30, align 8
  store %struct.bpf_verifier_state* %31, %struct.bpf_verifier_state** %10, align 8
  %32 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %33 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %32, i32 0, i32 1
  %34 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %33, align 8
  %35 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %36 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %34, i64 %37
  %39 = load %struct.bpf_func_state*, %struct.bpf_func_state** %38, align 8
  store %struct.bpf_func_state* %39, %struct.bpf_func_state** %11, align 8
  %40 = load %struct.bpf_func_state*, %struct.bpf_func_state** %11, align 8
  %41 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %40, i32 0, i32 0
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %41, align 8
  store %struct.bpf_reg_state* %42, %struct.bpf_reg_state** %12, align 8
  %43 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %44 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @tnum_is_const(i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %49 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  %51 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %52 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %16, align 8
  %54 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %55 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %17, align 8
  %57 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %58 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %18, align 8
  %60 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %61 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %19, align 8
  %63 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %64 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %20, align 8
  %66 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %67 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %21, align 8
  %69 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %70 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %22, align 8
  %72 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %73 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %23, align 8
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %76 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %24, align 8
  %78 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @BPF_OP(i32 %80)
  store i32 %81, i32* %25, align 4
  %82 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %83 = load i64, i64* %23, align 8
  %84 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %82, i64 %83
  store %struct.bpf_reg_state* %84, %struct.bpf_reg_state** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %4
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91, %4
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %20, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99, %95, %91, %87
  %104 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %105 = call i32 @__mark_reg_unknown(%struct.bpf_reg_state* %104)
  store i32 0, i32* %5, align 4
  br label %657

106:                                              ; preds = %99
  %107 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %108 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @BPF_CLASS(i32 %109)
  %111 = load i64, i64* @BPF_ALU64, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %115 = load i64, i64* %23, align 8
  %116 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @EACCES, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %657

119:                                              ; preds = %106
  %120 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %121 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %180 [
    i32 136, label %123
    i32 138, label %136
    i32 135, label %136
    i32 134, label %136
    i32 133, label %136
    i32 132, label %136
    i32 131, label %136
    i32 130, label %136
    i32 129, label %136
    i32 128, label %136
    i32 137, label %149
  ]

123:                                              ; preds = %119
  %124 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i32*, i32** @reg_type_str, align 8
  %127 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %128 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %124, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %125, i32 %132)
  %134 = load i32, i32* @EACCES, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %657

136:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119, %119
  %137 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %138 = load i64, i64* %23, align 8
  %139 = load i32*, i32** @reg_type_str, align 8
  %140 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %141 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %138, i32 %145)
  %147 = load i32, i32* @EACCES, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %657

149:                                              ; preds = %119
  %150 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %151 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %179, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %179, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* %15, align 8
  %159 = icmp slt i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %16, align 8
  %162 = icmp slt i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %157
  %166 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %167 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %168 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %169 = icmp eq %struct.bpf_reg_state* %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i64, i64* %23, align 8
  br label %174

172:                                              ; preds = %165
  %173 = load i64, i64* %24, align 8
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i64 [ %171, %170 ], [ %173, %172 ]
  %176 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %166, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i64 %175)
  %177 = load i32, i32* @EACCES, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %657

179:                                              ; preds = %157, %154, %149
  br label %180

180:                                              ; preds = %119, %179
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %183 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %186 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  %187 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %188 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %191 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 4
  %192 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %193 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %194 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %195 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = call i32 @check_reg_sane_offset(%struct.bpf_verifier_env* %192, %struct.bpf_reg_state* %193, i64 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %181
  %201 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %202 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %203 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %204 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = call i32 @check_reg_sane_offset(%struct.bpf_verifier_env* %201, %struct.bpf_reg_state* %202, i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %200, %181
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %657

212:                                              ; preds = %200
  %213 = load i32, i32* %25, align 4
  switch i32 %213, label %574 [
    i32 143, label %214
    i32 140, label %376
    i32 142, label %562
    i32 141, label %562
    i32 139, label %562
  ]

214:                                              ; preds = %212
  %215 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %216 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %217 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %218 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %219 = load i64, i64* %15, align 8
  %220 = icmp slt i64 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 @sanitize_ptr_alu(%struct.bpf_verifier_env* %215, %struct.bpf_insn* %216, %struct.bpf_reg_state* %217, %struct.bpf_reg_state* %218, i32 %221)
  store i32 %222, i32* %26, align 4
  %223 = load i32, i32* %26, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %214
  %226 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %227 = load i64, i64* %23, align 8
  %228 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %226, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %227)
  %229 = load i32, i32* %26, align 4
  store i32 %229, i32* %5, align 4
  br label %657

230:                                              ; preds = %214
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %278

233:                                              ; preds = %230
  %234 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %235 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %15, align 8
  %238 = add nsw i64 %236, %237
  %239 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %240 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %15, align 8
  %243 = add nsw i64 %241, %242
  %244 = trunc i64 %243 to i32
  %245 = sext i32 %244 to i64
  %246 = icmp eq i64 %238, %245
  br i1 %246, label %247, label %278

247:                                              ; preds = %233
  %248 = load i64, i64* %17, align 8
  %249 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %250 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  %251 = load i64, i64* %18, align 8
  %252 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %253 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %252, i32 0, i32 1
  store i64 %251, i64* %253, align 8
  %254 = load i64, i64* %21, align 8
  %255 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %256 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  %257 = load i64, i64* %22, align 8
  %258 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %259 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %258, i32 0, i32 3
  store i64 %257, i64* %259, align 8
  %260 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %261 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %260, i32 0, i32 6
  %262 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %263 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %262, i32 0, i32 6
  %264 = bitcast %struct.TYPE_8__* %261 to i8*
  %265 = bitcast %struct.TYPE_8__* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 8 %265, i64 8, i1 false)
  %266 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %267 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %15, align 8
  %270 = add nsw i64 %268, %269
  %271 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %272 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %271, i32 0, i32 5
  store i64 %270, i64* %272, align 8
  %273 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %274 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %277 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 8
  br label %586

278:                                              ; preds = %233, %230
  %279 = load i64, i64* %17, align 8
  %280 = load i64, i64* %15, align 8
  %281 = call i32 @signed_add_overflows(i64 %279, i64 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %278
  %284 = load i64, i64* %18, align 8
  %285 = load i64, i64* %16, align 8
  %286 = call i32 @signed_add_overflows(i64 %284, i64 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %283, %278
  %289 = load i8*, i8** @S64_MIN, align 8
  %290 = ptrtoint i8* %289 to i64
  %291 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %292 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  %293 = load i8*, i8** @S64_MAX, align 8
  %294 = ptrtoint i8* %293 to i64
  %295 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %296 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %295, i32 0, i32 1
  store i64 %294, i64* %296, align 8
  br label %308

297:                                              ; preds = %283
  %298 = load i64, i64* %17, align 8
  %299 = load i64, i64* %15, align 8
  %300 = add nsw i64 %298, %299
  %301 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %302 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  %303 = load i64, i64* %18, align 8
  %304 = load i64, i64* %16, align 8
  %305 = add nsw i64 %303, %304
  %306 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %307 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %306, i32 0, i32 1
  store i64 %305, i64* %307, align 8
  br label %308

308:                                              ; preds = %297, %288
  %309 = load i64, i64* %21, align 8
  %310 = load i64, i64* %19, align 8
  %311 = add nsw i64 %309, %310
  %312 = load i64, i64* %21, align 8
  %313 = icmp slt i64 %311, %312
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load i64, i64* %22, align 8
  %316 = load i64, i64* %20, align 8
  %317 = add nsw i64 %315, %316
  %318 = load i64, i64* %22, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %314, %308
  %321 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %322 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %321, i32 0, i32 2
  store i64 0, i64* %322, align 8
  %323 = load i8*, i8** @U64_MAX, align 8
  %324 = ptrtoint i8* %323 to i64
  %325 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %326 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %325, i32 0, i32 3
  store i64 %324, i64* %326, align 8
  br label %338

327:                                              ; preds = %314
  %328 = load i64, i64* %21, align 8
  %329 = load i64, i64* %19, align 8
  %330 = add nsw i64 %328, %329
  %331 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %332 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %331, i32 0, i32 2
  store i64 %330, i64* %332, align 8
  %333 = load i64, i64* %22, align 8
  %334 = load i64, i64* %20, align 8
  %335 = add nsw i64 %333, %334
  %336 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %337 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %336, i32 0, i32 3
  store i64 %335, i64* %337, align 8
  br label %338

338:                                              ; preds = %327, %320
  %339 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %340 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %339, i32 0, i32 6
  %341 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %342 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %341, i32 0, i32 6
  %343 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %344 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %343, i32 0, i32 6
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = call i64 @tnum_add(i64 %346, i64 %348)
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i64 %349, i64* %350, align 8
  %351 = bitcast %struct.TYPE_8__* %340 to i8*
  %352 = bitcast %struct.TYPE_8__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %351, i8* align 8 %352, i64 8, i1 false)
  %353 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %354 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %357 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %356, i32 0, i32 5
  store i64 %355, i64* %357, align 8
  %358 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %359 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %358, i32 0, i32 7
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %362 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %361, i32 0, i32 7
  store i32 %360, i32* %362, align 8
  %363 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %364 = call i32 @reg_is_pkt_pointer(%struct.bpf_reg_state* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %338
  %367 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %368 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 4
  %371 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %372 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %371, i32 0, i32 8
  store i32 %370, i32* %372, align 4
  %373 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %374 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %373, i32 0, i32 7
  store i32 0, i32* %374, align 8
  br label %375

375:                                              ; preds = %366, %338
  br label %586

376:                                              ; preds = %212
  %377 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %378 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %379 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %380 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %381 = load i64, i64* %15, align 8
  %382 = icmp slt i64 %381, 0
  %383 = zext i1 %382 to i32
  %384 = call i32 @sanitize_ptr_alu(%struct.bpf_verifier_env* %377, %struct.bpf_insn* %378, %struct.bpf_reg_state* %379, %struct.bpf_reg_state* %380, i32 %383)
  store i32 %384, i32* %26, align 4
  %385 = load i32, i32* %26, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %376
  %388 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %389 = load i64, i64* %23, align 8
  %390 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %388, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %389)
  %391 = load i32, i32* %26, align 4
  store i32 %391, i32* %5, align 4
  br label %657

392:                                              ; preds = %376
  %393 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %394 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %395 = icmp eq %struct.bpf_reg_state* %393, %394
  br i1 %395, label %396, label %402

396:                                              ; preds = %392
  %397 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %398 = load i64, i64* %23, align 8
  %399 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %397, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %398)
  %400 = load i32, i32* @EACCES, align 4
  %401 = sub nsw i32 0, %400
  store i32 %401, i32* %5, align 4
  br label %657

402:                                              ; preds = %392
  %403 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %404 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 8
  %406 = sext i32 %405 to i64
  %407 = load i64, i64* @PTR_TO_STACK, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %415

409:                                              ; preds = %402
  %410 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %411 = load i64, i64* %23, align 8
  %412 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %410, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64 %411)
  %413 = load i32, i32* @EACCES, align 4
  %414 = sub nsw i32 0, %413
  store i32 %414, i32* %5, align 4
  br label %657

415:                                              ; preds = %402
  %416 = load i32, i32* %14, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %468

418:                                              ; preds = %415
  %419 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %420 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %419, i32 0, i32 5
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* %15, align 8
  %423 = sub nsw i64 %421, %422
  %424 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %425 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* %15, align 8
  %428 = sub nsw i64 %426, %427
  %429 = trunc i64 %428 to i32
  %430 = sext i32 %429 to i64
  %431 = icmp eq i64 %423, %430
  br i1 %431, label %432, label %468

432:                                              ; preds = %418
  %433 = load i64, i64* %17, align 8
  %434 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %435 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %434, i32 0, i32 0
  store i64 %433, i64* %435, align 8
  %436 = load i64, i64* %18, align 8
  %437 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %438 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %437, i32 0, i32 1
  store i64 %436, i64* %438, align 8
  %439 = load i64, i64* %21, align 8
  %440 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %441 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %440, i32 0, i32 2
  store i64 %439, i64* %441, align 8
  %442 = load i64, i64* %22, align 8
  %443 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %444 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %443, i32 0, i32 3
  store i64 %442, i64* %444, align 8
  %445 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %446 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %445, i32 0, i32 6
  %447 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %448 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %447, i32 0, i32 6
  %449 = bitcast %struct.TYPE_8__* %446 to i8*
  %450 = bitcast %struct.TYPE_8__* %448 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %449, i8* align 8 %450, i64 8, i1 false)
  %451 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %452 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %451, i32 0, i32 8
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %455 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %454, i32 0, i32 8
  store i32 %453, i32* %455, align 4
  %456 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %457 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %456, i32 0, i32 5
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* %15, align 8
  %460 = sub nsw i64 %458, %459
  %461 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %462 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %461, i32 0, i32 5
  store i64 %460, i64* %462, align 8
  %463 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %464 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %463, i32 0, i32 7
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %467 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %466, i32 0, i32 7
  store i32 %465, i32* %467, align 8
  br label %586

468:                                              ; preds = %418, %415
  %469 = load i64, i64* %17, align 8
  %470 = load i64, i64* %16, align 8
  %471 = call i32 @signed_sub_overflows(i64 %469, i64 %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %468
  %474 = load i64, i64* %18, align 8
  %475 = load i64, i64* %15, align 8
  %476 = call i32 @signed_sub_overflows(i64 %474, i64 %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %487

478:                                              ; preds = %473, %468
  %479 = load i8*, i8** @S64_MIN, align 8
  %480 = ptrtoint i8* %479 to i64
  %481 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %482 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %481, i32 0, i32 0
  store i64 %480, i64* %482, align 8
  %483 = load i8*, i8** @S64_MAX, align 8
  %484 = ptrtoint i8* %483 to i64
  %485 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %486 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %485, i32 0, i32 1
  store i64 %484, i64* %486, align 8
  br label %498

487:                                              ; preds = %473
  %488 = load i64, i64* %17, align 8
  %489 = load i64, i64* %16, align 8
  %490 = sub nsw i64 %488, %489
  %491 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %492 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %491, i32 0, i32 0
  store i64 %490, i64* %492, align 8
  %493 = load i64, i64* %18, align 8
  %494 = load i64, i64* %15, align 8
  %495 = sub nsw i64 %493, %494
  %496 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %497 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %496, i32 0, i32 1
  store i64 %495, i64* %497, align 8
  br label %498

498:                                              ; preds = %487, %478
  %499 = load i64, i64* %21, align 8
  %500 = load i64, i64* %20, align 8
  %501 = icmp slt i64 %499, %500
  br i1 %501, label %502, label %509

502:                                              ; preds = %498
  %503 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %504 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %503, i32 0, i32 2
  store i64 0, i64* %504, align 8
  %505 = load i8*, i8** @U64_MAX, align 8
  %506 = ptrtoint i8* %505 to i64
  %507 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %508 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %507, i32 0, i32 3
  store i64 %506, i64* %508, align 8
  br label %520

509:                                              ; preds = %498
  %510 = load i64, i64* %21, align 8
  %511 = load i64, i64* %20, align 8
  %512 = sub nsw i64 %510, %511
  %513 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %514 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %513, i32 0, i32 2
  store i64 %512, i64* %514, align 8
  %515 = load i64, i64* %22, align 8
  %516 = load i64, i64* %19, align 8
  %517 = sub nsw i64 %515, %516
  %518 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %519 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %518, i32 0, i32 3
  store i64 %517, i64* %519, align 8
  br label %520

520:                                              ; preds = %509, %502
  %521 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %522 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %521, i32 0, i32 6
  %523 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %524 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %523, i32 0, i32 6
  %525 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %526 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %525, i32 0, i32 6
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = call i64 @tnum_sub(i64 %528, i64 %530)
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 %531, i64* %532, align 8
  %533 = bitcast %struct.TYPE_8__* %522 to i8*
  %534 = bitcast %struct.TYPE_8__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %533, i8* align 8 %534, i64 8, i1 false)
  %535 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %536 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %535, i32 0, i32 5
  %537 = load i64, i64* %536, align 8
  %538 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %539 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %538, i32 0, i32 5
  store i64 %537, i64* %539, align 8
  %540 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %541 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %540, i32 0, i32 7
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %544 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %543, i32 0, i32 7
  store i32 %542, i32* %544, align 8
  %545 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %546 = call i32 @reg_is_pkt_pointer(%struct.bpf_reg_state* %545)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %561

548:                                              ; preds = %520
  %549 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %550 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %550, align 4
  %553 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %554 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %553, i32 0, i32 8
  store i32 %552, i32* %554, align 4
  %555 = load i64, i64* %15, align 8
  %556 = icmp slt i64 %555, 0
  br i1 %556, label %557, label %560

557:                                              ; preds = %548
  %558 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %559 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %558, i32 0, i32 7
  store i32 0, i32* %559, align 8
  br label %560

560:                                              ; preds = %557, %548
  br label %561

561:                                              ; preds = %560, %520
  br label %586

562:                                              ; preds = %212, %212, %212
  %563 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %564 = load i64, i64* %23, align 8
  %565 = load i32*, i32** @bpf_alu_string, align 8
  %566 = load i32, i32* %25, align 4
  %567 = ashr i32 %566, 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %565, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %563, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i64 %564, i32 %570)
  %572 = load i32, i32* @EACCES, align 4
  %573 = sub nsw i32 0, %572
  store i32 %573, i32* %5, align 4
  br label %657

574:                                              ; preds = %212
  %575 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %576 = load i64, i64* %23, align 8
  %577 = load i32*, i32** @bpf_alu_string, align 8
  %578 = load i32, i32* %25, align 4
  %579 = ashr i32 %578, 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %577, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %575, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i64 %576, i32 %582)
  %584 = load i32, i32* @EACCES, align 4
  %585 = sub nsw i32 0, %584
  store i32 %585, i32* %5, align 4
  br label %657

586:                                              ; preds = %561, %432, %375, %247
  %587 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %588 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %589 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %590 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = sext i32 %591 to i64
  %593 = call i32 @check_reg_sane_offset(%struct.bpf_verifier_env* %587, %struct.bpf_reg_state* %588, i64 %592)
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %586
  %596 = load i32, i32* @EINVAL, align 4
  %597 = sub nsw i32 0, %596
  store i32 %597, i32* %5, align 4
  br label %657

598:                                              ; preds = %586
  %599 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %600 = call i32 @__update_reg_bounds(%struct.bpf_reg_state* %599)
  %601 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %602 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %601)
  %603 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %604 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %603)
  %605 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %606 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %656, label %609

609:                                              ; preds = %598
  %610 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %611 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %610, i32 0, i32 4
  %612 = load i32, i32* %611, align 8
  %613 = icmp eq i32 %612, 137
  br i1 %613, label %614, label %628

614:                                              ; preds = %609
  %615 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %616 = load i64, i64* %23, align 8
  %617 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %618 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %617, i32 0, i32 5
  %619 = load i64, i64* %618, align 8
  %620 = call i64 @check_map_access(%struct.bpf_verifier_env* %615, i64 %616, i64 %619, i32 1, i32 0)
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %628

622:                                              ; preds = %614
  %623 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %624 = load i64, i64* %23, align 8
  %625 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %623, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0), i64 %624)
  %626 = load i32, i32* @EACCES, align 4
  %627 = sub nsw i32 0, %626
  store i32 %627, i32* %5, align 4
  br label %657

628:                                              ; preds = %614, %609
  %629 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %630 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %629, i32 0, i32 4
  %631 = load i32, i32* %630, align 8
  %632 = sext i32 %631 to i64
  %633 = load i64, i64* @PTR_TO_STACK, align 8
  %634 = icmp eq i64 %632, %633
  br i1 %634, label %635, label %654

635:                                              ; preds = %628
  %636 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %637 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %638 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %639 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %638, i32 0, i32 5
  %640 = load i64, i64* %639, align 8
  %641 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %642 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %641, i32 0, i32 6
  %643 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = add nsw i64 %640, %644
  %646 = call i64 @check_stack_access(%struct.bpf_verifier_env* %636, %struct.bpf_reg_state* %637, i64 %645, i32 1)
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %648, label %654

648:                                              ; preds = %635
  %649 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %650 = load i64, i64* %23, align 8
  %651 = call i32 (%struct.bpf_verifier_env*, i8*, i64, ...) @verbose(%struct.bpf_verifier_env* %649, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.11, i64 0, i64 0), i64 %650)
  %652 = load i32, i32* @EACCES, align 4
  %653 = sub nsw i32 0, %652
  store i32 %653, i32* %5, align 4
  br label %657

654:                                              ; preds = %635, %628
  br label %655

655:                                              ; preds = %654
  br label %656

656:                                              ; preds = %655, %598
  store i32 0, i32* %5, align 4
  br label %657

657:                                              ; preds = %656, %648, %622, %595, %574, %562, %409, %396, %387, %225, %209, %174, %136, %123, %113, %103
  %658 = load i32, i32* %5, align 4
  ret i32 %658
}

declare dso_local i32 @tnum_is_const(i64) #1

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @__mark_reg_unknown(%struct.bpf_reg_state*) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i64, ...) #1

declare dso_local i32 @check_reg_sane_offset(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

declare dso_local i32 @sanitize_ptr_alu(%struct.bpf_verifier_env*, %struct.bpf_insn*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @signed_add_overflows(i64, i64) #1

declare dso_local i64 @tnum_add(i64, i64) #1

declare dso_local i32 @reg_is_pkt_pointer(%struct.bpf_reg_state*) #1

declare dso_local i32 @signed_sub_overflows(i64, i64) #1

declare dso_local i64 @tnum_sub(i64, i64) #1

declare dso_local i32 @__update_reg_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_deduce_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_bound_offset(%struct.bpf_reg_state*) #1

declare dso_local i64 @check_map_access(%struct.bpf_verifier_env*, i64, i64, i32, i32) #1

declare dso_local i64 @check_stack_access(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
