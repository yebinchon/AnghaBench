; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_convert_ctx_accesses.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_convert_ctx_accesses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_prog*, %struct.TYPE_2__*, i64, %struct.bpf_verifier_ops* }
%struct.bpf_prog = type { i32, %struct.bpf_insn*, i32 }
%struct.bpf_insn = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.bpf_verifier_ops = type { i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)*, i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)* }
%struct.bpf_insn.0 = type opaque
%struct.bpf_prog.1 = type opaque
%struct.bpf_insn.2 = type opaque
%struct.bpf_prog.3 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"bpf verifier is misconfigured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_LDX = common dso_local global i64 0, align 8
@BPF_MEM = common dso_local global i64 0, align 8
@BPF_B = common dso_local global i64 0, align 8
@BPF_H = common dso_local global i64 0, align 8
@BPF_W = common dso_local global i64 0, align 8
@BPF_DW = common dso_local global i64 0, align 8
@BPF_READ = common dso_local global i32 0, align 4
@BPF_STX = common dso_local global i64 0, align 8
@BPF_WRITE = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"bpf verifier narrow ctx access misconfigured\0A\00", align 1
@BPF_RSH = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @convert_ctx_accesses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_ctx_accesses(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_verifier_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x %struct.bpf_insn], align 16
  %12 = alloca %struct.bpf_insn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bpf_prog*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)*, align 8
  %20 = alloca [2 x %struct.bpf_insn], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.bpf_insn, align 8
  %24 = alloca %struct.bpf_insn, align 8
  %25 = alloca %struct.bpf_insn, align 8
  %26 = alloca %struct.bpf_insn, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %27 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %28 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %27, i32 0, i32 3
  %29 = load %struct.bpf_verifier_ops*, %struct.bpf_verifier_ops** %28, align 8
  store %struct.bpf_verifier_ops* %29, %struct.bpf_verifier_ops** %4, align 8
  store i32 0, i32* %9, align 4
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %30, i32 0, i32 0
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %31, align 8
  %33 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.bpf_verifier_ops*, %struct.bpf_verifier_ops** %4, align 8
  %36 = getelementptr inbounds %struct.bpf_verifier_ops, %struct.bpf_verifier_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)*, i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)** %36, align 8
  %38 = icmp ne i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %1
  %40 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %100

44:                                               ; preds = %39, %1
  %45 = load %struct.bpf_verifier_ops*, %struct.bpf_verifier_ops** %4, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_ops, %struct.bpf_verifier_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)*, i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)** %46, align 8
  %48 = icmp ne i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %51 = call i32 @verbose(%struct.bpf_verifier_env* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %531

54:                                               ; preds = %44
  %55 = load %struct.bpf_verifier_ops*, %struct.bpf_verifier_ops** %4, align 8
  %56 = getelementptr inbounds %struct.bpf_verifier_ops, %struct.bpf_verifier_ops* %55, i32 0, i32 0
  %57 = load i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)*, i32 (%struct.bpf_insn.0*, i64, %struct.bpf_prog.1*)** %56, align 8
  %58 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 0
  %59 = bitcast %struct.bpf_insn* %58 to %struct.bpf_insn.0*
  %60 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %61 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %64 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %63, i32 0, i32 0
  %65 = load %struct.bpf_prog*, %struct.bpf_prog** %64, align 8
  %66 = bitcast %struct.bpf_prog* %65 to %struct.bpf_prog.1*
  %67 = call i32 %57(%struct.bpf_insn.0* %59, i64 %62, %struct.bpf_prog.1* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 0
  %70 = call i32 @ARRAY_SIZE(%struct.bpf_insn* %69)
  %71 = icmp sge i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %74 = call i32 @verbose(%struct.bpf_verifier_env* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %531

77:                                               ; preds = %54
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %82 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 0
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env* %81, i32 0, %struct.bpf_insn* %82, i32 %83)
  store %struct.bpf_prog* %84, %struct.bpf_prog** %16, align 8
  %85 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %86 = icmp ne %struct.bpf_prog* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %531

90:                                               ; preds = %80
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %92 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %93 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %92, i32 0, i32 0
  store %struct.bpf_prog* %91, %struct.bpf_prog** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %90, %77
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %39
  %101 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %102 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %101, i32 0, i32 0
  %103 = load %struct.bpf_prog*, %struct.bpf_prog** %102, align 8
  %104 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @bpf_prog_is_dev_bound(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %531

109:                                              ; preds = %100
  %110 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %111 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %110, i32 0, i32 0
  %112 = load %struct.bpf_prog*, %struct.bpf_prog** %111, align 8
  %113 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %112, i32 0, i32 1
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i64 %116
  store %struct.bpf_insn* %117, %struct.bpf_insn** %12, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %525, %109
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %530

122:                                              ; preds = %118
  %123 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %124 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @BPF_LDX, align 8
  %127 = load i64, i64* @BPF_MEM, align 8
  %128 = or i64 %126, %127
  %129 = load i64, i64* @BPF_B, align 8
  %130 = or i64 %128, %129
  %131 = icmp eq i64 %125, %130
  br i1 %131, label %162, label %132

132:                                              ; preds = %122
  %133 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %134 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @BPF_LDX, align 8
  %137 = load i64, i64* @BPF_MEM, align 8
  %138 = or i64 %136, %137
  %139 = load i64, i64* @BPF_H, align 8
  %140 = or i64 %138, %139
  %141 = icmp eq i64 %135, %140
  br i1 %141, label %162, label %142

142:                                              ; preds = %132
  %143 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %144 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @BPF_LDX, align 8
  %147 = load i64, i64* @BPF_MEM, align 8
  %148 = or i64 %146, %147
  %149 = load i64, i64* @BPF_W, align 8
  %150 = or i64 %148, %149
  %151 = icmp eq i64 %145, %150
  br i1 %151, label %162, label %152

152:                                              ; preds = %142
  %153 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %154 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BPF_LDX, align 8
  %157 = load i64, i64* @BPF_MEM, align 8
  %158 = or i64 %156, %157
  %159 = load i64, i64* @BPF_DW, align 8
  %160 = or i64 %158, %159
  %161 = icmp eq i64 %155, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152, %142, %132, %122
  %163 = load i32, i32* @BPF_READ, align 4
  store i32 %163, i32* %17, align 4
  br label %208

164:                                              ; preds = %152
  %165 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %166 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @BPF_STX, align 8
  %169 = load i64, i64* @BPF_MEM, align 8
  %170 = or i64 %168, %169
  %171 = load i64, i64* @BPF_B, align 8
  %172 = or i64 %170, %171
  %173 = icmp eq i64 %167, %172
  br i1 %173, label %204, label %174

174:                                              ; preds = %164
  %175 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %176 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @BPF_STX, align 8
  %179 = load i64, i64* @BPF_MEM, align 8
  %180 = or i64 %178, %179
  %181 = load i64, i64* @BPF_H, align 8
  %182 = or i64 %180, %181
  %183 = icmp eq i64 %177, %182
  br i1 %183, label %204, label %184

184:                                              ; preds = %174
  %185 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %186 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @BPF_STX, align 8
  %189 = load i64, i64* @BPF_MEM, align 8
  %190 = or i64 %188, %189
  %191 = load i64, i64* @BPF_W, align 8
  %192 = or i64 %190, %191
  %193 = icmp eq i64 %187, %192
  br i1 %193, label %204, label %194

194:                                              ; preds = %184
  %195 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %196 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @BPF_STX, align 8
  %199 = load i64, i64* @BPF_MEM, align 8
  %200 = or i64 %198, %199
  %201 = load i64, i64* @BPF_DW, align 8
  %202 = or i64 %200, %201
  %203 = icmp eq i64 %197, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %194, %184, %174, %164
  %205 = load i32, i32* @BPF_WRITE, align 4
  store i32 %205, i32* %17, align 4
  br label %207

206:                                              ; preds = %194
  br label %525

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %207, %162
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* @BPF_WRITE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %279

212:                                              ; preds = %208
  %213 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %214 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %213, i32 0, i32 1
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %279

224:                                              ; preds = %212
  %225 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %20, i64 0, i64 0
  %226 = load i64, i64* @BPF_DW, align 8
  %227 = load i32, i32* @BPF_REG_FP, align 4
  %228 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %229 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %228, i32 0, i32 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = call { i64, i64 } @BPF_ST_MEM(i64 %226, i32 %227, i64 %237, i32 0)
  %239 = bitcast %struct.bpf_insn* %225 to { i64, i64 }*
  %240 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 0
  %241 = extractvalue { i64, i64 } %238, 0
  store i64 %241, i64* %240, align 16
  %242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 1
  %243 = extractvalue { i64, i64 } %238, 1
  store i64 %243, i64* %242, align 8
  %244 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %225, i64 1
  %245 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %246 = bitcast %struct.bpf_insn* %244 to i8*
  %247 = bitcast %struct.bpf_insn* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %246, i8* align 8 %247, i64 16, i1 false)
  %248 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %20, i64 0, i64 0
  %249 = call i32 @ARRAY_SIZE(%struct.bpf_insn* %248)
  store i32 %249, i32* %6, align 4
  %250 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %251, %252
  %254 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %20, i64 0, i64 0
  %255 = load i32, i32* %6, align 4
  %256 = call %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env* %250, i32 %253, %struct.bpf_insn* %254, i32 %255)
  store %struct.bpf_prog* %256, %struct.bpf_prog** %16, align 8
  %257 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %258 = icmp ne %struct.bpf_prog* %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %224
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %2, align 4
  br label %531

262:                                              ; preds = %224
  %263 = load i32, i32* %6, align 4
  %264 = sub nsw i32 %263, 1
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %9, align 4
  %267 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %268 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %269 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %268, i32 0, i32 0
  store %struct.bpf_prog* %267, %struct.bpf_prog** %269, align 8
  %270 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %271 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %270, i32 0, i32 1
  %272 = load %struct.bpf_insn*, %struct.bpf_insn** %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %272, i64 %274
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %275, i64 %277
  store %struct.bpf_insn* %278, %struct.bpf_insn** %12, align 8
  br label %525

279:                                              ; preds = %212, %208
  %280 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %281 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %280, i32 0, i32 1
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  switch i32 %289, label %304 [
    i32 132, label %290
    i32 131, label %301
    i32 130, label %301
    i32 129, label %302
    i32 128, label %303
  ]

290:                                              ; preds = %279
  %291 = load %struct.bpf_verifier_ops*, %struct.bpf_verifier_ops** %4, align 8
  %292 = getelementptr inbounds %struct.bpf_verifier_ops, %struct.bpf_verifier_ops* %291, i32 0, i32 1
  %293 = load i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)*, i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)** %292, align 8
  %294 = icmp ne i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)* %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %290
  br label %525

296:                                              ; preds = %290
  %297 = load %struct.bpf_verifier_ops*, %struct.bpf_verifier_ops** %4, align 8
  %298 = getelementptr inbounds %struct.bpf_verifier_ops, %struct.bpf_verifier_ops* %297, i32 0, i32 1
  %299 = load i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)*, i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)** %298, align 8
  %300 = bitcast i32 (i32, %struct.bpf_insn.2*, %struct.bpf_insn.2*, %struct.bpf_prog.3*, i32*)* %299 to i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)*
  store i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)* %300, i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)** %19, align 8
  br label %305

301:                                              ; preds = %279, %279
  store i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)* @bpf_sock_convert_ctx_access, i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)** %19, align 8
  br label %305

302:                                              ; preds = %279
  store i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)* @bpf_tcp_sock_convert_ctx_access, i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)** %19, align 8
  br label %305

303:                                              ; preds = %279
  store i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)* @bpf_xdp_sock_convert_ctx_access, i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)** %19, align 8
  br label %305

304:                                              ; preds = %279
  br label %525

305:                                              ; preds = %303, %302, %301, %296
  %306 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %307 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %306, i32 0, i32 1
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* %9, align 4
  %311 = add nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %8, align 4
  %316 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %317 = call i32 @BPF_LDST_BYTES(%struct.bpf_insn* %316)
  store i32 %317, i32* %7, align 4
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp slt i32 %318, %319
  %321 = zext i1 %320 to i32
  store i32 %321, i32* %18, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @bpf_ctx_off_adjust_machine(i32 %322)
  store i32 %323, i32* %14, align 4
  %324 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %325 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %18, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %365

329:                                              ; preds = %305
  %330 = load i32, i32* %17, align 4
  %331 = load i32, i32* @BPF_WRITE, align 4
  %332 = icmp eq i32 %330, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  %334 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %335 = call i32 @verbose(%struct.bpf_verifier_env* %334, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %336 = load i32, i32* @EINVAL, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %2, align 4
  br label %531

338:                                              ; preds = %329
  %339 = load i64, i64* @BPF_H, align 8
  store i64 %339, i64* %21, align 8
  %340 = load i32, i32* %8, align 4
  %341 = icmp eq i32 %340, 4
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = load i64, i64* @BPF_W, align 8
  store i64 %343, i64* %21, align 8
  br label %350

344:                                              ; preds = %338
  %345 = load i32, i32* %8, align 4
  %346 = icmp eq i32 %345, 8
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = load i64, i64* @BPF_DW, align 8
  store i64 %348, i64* %21, align 8
  br label %349

349:                                              ; preds = %347, %344
  br label %350

350:                                              ; preds = %349, %342
  %351 = load i32, i32* %15, align 4
  %352 = load i32, i32* %14, align 4
  %353 = sub nsw i32 %352, 1
  %354 = xor i32 %353, -1
  %355 = and i32 %351, %354
  %356 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %357 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 8
  %358 = load i64, i64* @BPF_LDX, align 8
  %359 = load i64, i64* @BPF_MEM, align 8
  %360 = or i64 %358, %359
  %361 = load i64, i64* %21, align 8
  %362 = or i64 %360, %361
  %363 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %364 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %363, i32 0, i32 0
  store i64 %362, i64* %364, align 8
  br label %365

365:                                              ; preds = %350, %305
  store i32 0, i32* %13, align 4
  %366 = load i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)*, i32 (i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*)** %19, align 8
  %367 = load i32, i32* %17, align 4
  %368 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %369 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 0
  %370 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %371 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %370, i32 0, i32 0
  %372 = load %struct.bpf_prog*, %struct.bpf_prog** %371, align 8
  %373 = call i32 %366(i32 %367, %struct.bpf_insn* %368, %struct.bpf_insn* %369, %struct.bpf_prog* %372, i32* %13)
  store i32 %373, i32* %6, align 4
  %374 = load i32, i32* %6, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %387, label %376

376:                                              ; preds = %365
  %377 = load i32, i32* %6, align 4
  %378 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 0
  %379 = call i32 @ARRAY_SIZE(%struct.bpf_insn* %378)
  %380 = icmp sge i32 %377, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %376
  %382 = load i32, i32* %8, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %381
  %385 = load i32, i32* %13, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %384, %376, %365
  %388 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %389 = call i32 @verbose(%struct.bpf_verifier_env* %388, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %390 = load i32, i32* @EINVAL, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %2, align 4
  br label %531

392:                                              ; preds = %384, %381
  %393 = load i32, i32* %18, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %495

395:                                              ; preds = %392
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* %13, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %495

399:                                              ; preds = %395
  %400 = load i32, i32* %15, align 4
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %14, align 4
  %403 = call i32 @bpf_ctx_narrow_access_offset(i32 %400, i32 %401, i32 %402)
  %404 = mul nsw i32 %403, 8
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %22, align 8
  %406 = load i32, i32* %8, align 4
  %407 = icmp sle i32 %406, 4
  br i1 %407, label %408, label %451

408:                                              ; preds = %399
  %409 = load i64, i64* %22, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %430

411:                                              ; preds = %408
  %412 = load i32, i32* %6, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %6, align 4
  %414 = sext i32 %412 to i64
  %415 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 %414
  %416 = load i32, i32* @BPF_RSH, align 4
  %417 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %418 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = load i64, i64* %22, align 8
  %421 = trunc i64 %420 to i32
  %422 = call { i64, i64 } @BPF_ALU32_IMM(i32 %416, i32 %419, i32 %421)
  %423 = bitcast %struct.bpf_insn* %23 to { i64, i64 }*
  %424 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %423, i32 0, i32 0
  %425 = extractvalue { i64, i64 } %422, 0
  store i64 %425, i64* %424, align 8
  %426 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %423, i32 0, i32 1
  %427 = extractvalue { i64, i64 } %422, 1
  store i64 %427, i64* %426, align 8
  %428 = bitcast %struct.bpf_insn* %415 to i8*
  %429 = bitcast %struct.bpf_insn* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %428, i8* align 8 %429, i64 16, i1 false)
  br label %430

430:                                              ; preds = %411, %408
  %431 = load i32, i32* %6, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %6, align 4
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 %433
  %435 = load i32, i32* @BPF_AND, align 4
  %436 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %437 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %7, align 4
  %440 = mul nsw i32 %439, 8
  %441 = shl i32 1, %440
  %442 = sub nsw i32 %441, 1
  %443 = call { i64, i64 } @BPF_ALU32_IMM(i32 %435, i32 %438, i32 %442)
  %444 = bitcast %struct.bpf_insn* %24 to { i64, i64 }*
  %445 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %444, i32 0, i32 0
  %446 = extractvalue { i64, i64 } %443, 0
  store i64 %446, i64* %445, align 8
  %447 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %444, i32 0, i32 1
  %448 = extractvalue { i64, i64 } %443, 1
  store i64 %448, i64* %447, align 8
  %449 = bitcast %struct.bpf_insn* %434 to i8*
  %450 = bitcast %struct.bpf_insn* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %449, i8* align 8 %450, i64 16, i1 false)
  br label %494

451:                                              ; preds = %399
  %452 = load i64, i64* %22, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %472

454:                                              ; preds = %451
  %455 = load i32, i32* %6, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %6, align 4
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 %457
  %459 = load i32, i32* @BPF_RSH, align 4
  %460 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %461 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 4
  %463 = load i64, i64* %22, align 8
  %464 = call { i64, i64 } @BPF_ALU64_IMM(i32 %459, i32 %462, i64 %463)
  %465 = bitcast %struct.bpf_insn* %25 to { i64, i64 }*
  %466 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 0
  %467 = extractvalue { i64, i64 } %464, 0
  store i64 %467, i64* %466, align 8
  %468 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 1
  %469 = extractvalue { i64, i64 } %464, 1
  store i64 %469, i64* %468, align 8
  %470 = bitcast %struct.bpf_insn* %458 to i8*
  %471 = bitcast %struct.bpf_insn* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %470, i8* align 8 %471, i64 16, i1 false)
  br label %472

472:                                              ; preds = %454, %451
  %473 = load i32, i32* %6, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %6, align 4
  %475 = sext i32 %473 to i64
  %476 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 %475
  %477 = load i32, i32* @BPF_AND, align 4
  %478 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %479 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* %7, align 4
  %482 = mul nsw i32 %481, 8
  %483 = zext i32 %482 to i64
  %484 = shl i64 1, %483
  %485 = sub i64 %484, 1
  %486 = call { i64, i64 } @BPF_ALU64_IMM(i32 %477, i32 %480, i64 %485)
  %487 = bitcast %struct.bpf_insn* %26 to { i64, i64 }*
  %488 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %487, i32 0, i32 0
  %489 = extractvalue { i64, i64 } %486, 0
  store i64 %489, i64* %488, align 8
  %490 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %487, i32 0, i32 1
  %491 = extractvalue { i64, i64 } %486, 1
  store i64 %491, i64* %490, align 8
  %492 = bitcast %struct.bpf_insn* %476 to i8*
  %493 = bitcast %struct.bpf_insn* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %492, i8* align 8 %493, i64 16, i1 false)
  br label %494

494:                                              ; preds = %472, %430
  br label %495

495:                                              ; preds = %494, %395, %392
  %496 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %497 = load i32, i32* %5, align 4
  %498 = load i32, i32* %9, align 4
  %499 = add nsw i32 %497, %498
  %500 = getelementptr inbounds [16 x %struct.bpf_insn], [16 x %struct.bpf_insn]* %11, i64 0, i64 0
  %501 = load i32, i32* %6, align 4
  %502 = call %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env* %496, i32 %499, %struct.bpf_insn* %500, i32 %501)
  store %struct.bpf_prog* %502, %struct.bpf_prog** %16, align 8
  %503 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %504 = icmp ne %struct.bpf_prog* %503, null
  br i1 %504, label %508, label %505

505:                                              ; preds = %495
  %506 = load i32, i32* @ENOMEM, align 4
  %507 = sub nsw i32 0, %506
  store i32 %507, i32* %2, align 4
  br label %531

508:                                              ; preds = %495
  %509 = load i32, i32* %6, align 4
  %510 = sub nsw i32 %509, 1
  %511 = load i32, i32* %9, align 4
  %512 = add nsw i32 %511, %510
  store i32 %512, i32* %9, align 4
  %513 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %514 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %515 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %514, i32 0, i32 0
  store %struct.bpf_prog* %513, %struct.bpf_prog** %515, align 8
  %516 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %517 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %516, i32 0, i32 1
  %518 = load %struct.bpf_insn*, %struct.bpf_insn** %517, align 8
  %519 = load i32, i32* %5, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %518, i64 %520
  %522 = load i32, i32* %9, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %521, i64 %523
  store %struct.bpf_insn* %524, %struct.bpf_insn** %12, align 8
  br label %525

525:                                              ; preds = %508, %304, %295, %262, %206
  %526 = load i32, i32* %5, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %5, align 4
  %528 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %529 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %528, i32 1
  store %struct.bpf_insn* %529, %struct.bpf_insn** %12, align 8
  br label %118

530:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %531

531:                                              ; preds = %530, %505, %387, %333, %259, %108, %87, %72, %49
  %532 = load i32, i32* %2, align 4
  ret i32 %532
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bpf_insn*) #1

declare dso_local %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env*, i32, %struct.bpf_insn*, i32) #1

declare dso_local i64 @bpf_prog_is_dev_bound(i32) #1

declare dso_local { i64, i64 } @BPF_ST_MEM(i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bpf_sock_convert_ctx_access(i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*) #1

declare dso_local i32 @bpf_tcp_sock_convert_ctx_access(i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*) #1

declare dso_local i32 @bpf_xdp_sock_convert_ctx_access(i32, %struct.bpf_insn*, %struct.bpf_insn*, %struct.bpf_prog*, i32*) #1

declare dso_local i32 @BPF_LDST_BYTES(%struct.bpf_insn*) #1

declare dso_local i32 @bpf_ctx_off_adjust_machine(i32) #1

declare dso_local i32 @bpf_ctx_narrow_access_offset(i32, i32, i32) #1

declare dso_local { i64, i64 } @BPF_ALU32_IMM(i32, i32, i32) #1

declare dso_local { i64, i64 } @BPF_ALU64_IMM(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
