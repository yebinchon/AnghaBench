; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_subprogs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_subprogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.bpf_subprog_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i64, i32, i64 }
%struct.bpf_subprog_info = type { i32 }

@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"function calls to other bpf functions are allowed for root only\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@BPF_LOG_LEVEL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"func#%d @%d\0A\00", align 1
@BPF_JMP32 = common dso_local global i32 0, align 4
@BPF_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"jump out of range from insn %d to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"last insn is not an exit or jmp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @check_subprogs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_subprogs(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_subprog_info*, align 8
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 4
  %16 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %15, align 8
  store %struct.bpf_subprog_info* %16, %struct.bpf_subprog_info** %10, align 8
  %17 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.bpf_insn*, %struct.bpf_insn** %20, align 8
  store %struct.bpf_insn* %21, %struct.bpf_insn** %11, align 8
  %22 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %28 = call i32 @add_subprog(%struct.bpf_verifier_env* %27, i64 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %245

33:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %88, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %34
  %39 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %39, i64 %41
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BPF_JMP, align 4
  %46 = load i32, i32* @BPF_CALL, align 4
  %47 = or i32 %45, %46
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %88

50:                                               ; preds = %38
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i64 %53
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %88

60:                                               ; preds = %50
  %61 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %62 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %67 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %66, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %245

70:                                               ; preds = %60
  %71 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %74, i64 %76
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %73, %79
  %81 = add nsw i64 %80, 1
  %82 = call i32 @add_subprog(%struct.bpf_verifier_env* %71, i64 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %245

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %59, %49
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %34

91:                                               ; preds = %34
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %10, align 8
  %94 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %95 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %93, i64 %96
  %98 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %97, i32 0, i32 0
  store i32 %92, i32* %98, align 4
  %99 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %100 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BPF_LOG_LEVEL2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %124, %106
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %111 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %107
  %115 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %10, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %117, i64 %119
  %121 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %107

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127, %91
  %129 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %129, i64 %131
  %133 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %6, align 4
  %135 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %10, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %135, i64 %138
  %140 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %241, %128
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %244

146:                                              ; preds = %142
  %147 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %147, i64 %149
  %151 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @BPF_CLASS(i32 %153)
  %155 = load i32, i32* @BPF_JMP, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %146
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @BPF_CLASS(i32 %158)
  %160 = load i32, i32* @BPF_JMP32, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %199

163:                                              ; preds = %157, %146
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @BPF_OP(i32 %164)
  %166 = load i32, i32* @BPF_EXIT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @BPF_OP(i32 %169)
  %171 = load i32, i32* @BPF_CALL, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %163
  br label %199

174:                                              ; preds = %168
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %176, i64 %178
  %180 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %175, %181
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %174
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %187, %174
  %192 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %245

198:                                              ; preds = %187
  br label %199

199:                                              ; preds = %198, %173, %162
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %7, align 4
  %202 = sub nsw i32 %201, 1
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %240

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @BPF_JMP, align 4
  %207 = load i32, i32* @BPF_EXIT, align 4
  %208 = or i32 %206, %207
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %221

210:                                              ; preds = %204
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @BPF_JMP, align 4
  %213 = load i32, i32* @BPF_JA, align 4
  %214 = or i32 %212, %213
  %215 = icmp ne i32 %211, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %218 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %245

221:                                              ; preds = %210, %204
  %222 = load i32, i32* %7, align 4
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %228 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ult i64 %226, %229
  br i1 %230, label %231, label %239

231:                                              ; preds = %221
  %232 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %10, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %232, i64 %235
  %237 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %231, %221
  br label %240

240:                                              ; preds = %239, %199
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %4, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %4, align 4
  br label %142

244:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %244, %216, %191, %85, %65, %31
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @add_subprog(%struct.bpf_verifier_env*, i64) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @BPF_CLASS(i32) #1

declare dso_local i32 @BPF_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
