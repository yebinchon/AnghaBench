; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_alu_op.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_alu_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64 }
%struct.bpf_insn = type { i64, i64, i64, i64, i32 }
%struct.bpf_reg_state = type { i64, i64, i32 }

@BPF_END = common dso_local global i64 0, align 8
@BPF_NEG = common dso_local global i64 0, align 8
@BPF_REG_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"BPF_NEG uses reserved fields\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_ALU64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"BPF_END uses reserved fields\0A\00", align 1
@SRC_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"R%d pointer arithmetic prohibited\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@DST_OP = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i64 0, align 8
@BPF_X = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"BPF_MOV uses reserved fields\0A\00", align 1
@DST_OP_NO_MARK = common dso_local global i32 0, align 4
@REG_LIVE_WRITTEN = common dso_local global i32 0, align 4
@DEF_NOT_SUBREG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"R%d partial copy of pointer\0A\00", align 1
@SCALAR_VALUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"invalid BPF_ALU opcode %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"BPF_ALU uses reserved fields\0A\00", align 1
@BPF_MOD = common dso_local global i64 0, align 8
@BPF_DIV = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"div by zero\0A\00", align 1
@BPF_LSH = common dso_local global i64 0, align 8
@BPF_RSH = common dso_local global i64 0, align 8
@BPF_ARSH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"invalid shift %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*)* @check_alu_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_alu_op(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %13 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %12)
  store %struct.bpf_reg_state* %13, %struct.bpf_reg_state** %6, align 8
  %14 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @BPF_OP(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BPF_END, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @BPF_NEG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %134

25:                                               ; preds = %21, %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @BPF_NEG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @BPF_SRC(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %29
  %36 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BPF_REG_0, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %48 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41, %35, %29
  %52 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %53 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %490

56:                                               ; preds = %46
  br label %96

57:                                               ; preds = %25
  %58 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %59 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BPF_REG_0, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %90, label %63

63:                                               ; preds = %57
  %64 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %63
  %69 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %70 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 16
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %75 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 32
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %80 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 64
  br i1 %82, label %90, label %83

83:                                               ; preds = %78, %73, %68
  %84 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @BPF_CLASS(i32 %86)
  %88 = load i64, i64* @BPF_ALU64, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83, %78, %63, %57
  %91 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %92 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %490

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %98 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %99 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @SRC_OP, align 4
  %102 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %97, i64 %100, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %490

107:                                              ; preds = %96
  %108 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %109 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %110 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %108, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %116 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %117 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* @EACCES, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %490

122:                                              ; preds = %107
  %123 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %124 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %125 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @DST_OP, align 4
  %128 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %123, i64 %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %490

133:                                              ; preds = %122
  br label %489

134:                                              ; preds = %21
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @BPF_MOV, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %328

138:                                              ; preds = %134
  %139 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %140 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @BPF_SRC(i32 %141)
  %143 = load i64, i64* @BPF_X, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %138
  %146 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %147 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %152 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150, %145
  %156 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %157 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %490

160:                                              ; preds = %150
  %161 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %162 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %163 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @SRC_OP, align 4
  %166 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %161, i64 %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %3, align 4
  br label %490

171:                                              ; preds = %160
  br label %189

172:                                              ; preds = %138
  %173 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %174 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @BPF_REG_0, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %172
  %179 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %180 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178, %172
  %184 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %185 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %3, align 4
  br label %490

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %171
  %190 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %191 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %192 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @DST_OP_NO_MARK, align 4
  %195 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %190, i64 %193, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %490

200:                                              ; preds = %189
  %201 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %202 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @BPF_SRC(i32 %203)
  %205 = load i64, i64* @BPF_X, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %286

207:                                              ; preds = %200
  %208 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %209 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %210 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %208, i64 %211
  store %struct.bpf_reg_state* %212, %struct.bpf_reg_state** %9, align 8
  %213 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %214 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %215 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %213, i64 %216
  store %struct.bpf_reg_state* %217, %struct.bpf_reg_state** %10, align 8
  %218 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %219 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @BPF_CLASS(i32 %220)
  %222 = load i64, i64* @BPF_ALU64, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %207
  %225 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %226 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %227 = bitcast %struct.bpf_reg_state* %225 to i8*
  %228 = bitcast %struct.bpf_reg_state* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %227, i8* align 8 %228, i64 24, i1 false)
  %229 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %230 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %231 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load i64, i64* @DEF_NOT_SUBREG, align 8
  %235 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %236 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %235, i32 0, i32 1
  store i64 %234, i64* %236, align 8
  br label %285

237:                                              ; preds = %207
  %238 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %239 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %240 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %238, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %246 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %247 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %245, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %248)
  %250 = load i32, i32* @EACCES, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %3, align 4
  br label %490

252:                                              ; preds = %237
  %253 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %254 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @SCALAR_VALUE, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %274

258:                                              ; preds = %252
  %259 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %260 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %261 = bitcast %struct.bpf_reg_state* %259 to i8*
  %262 = bitcast %struct.bpf_reg_state* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 24, i1 false)
  %263 = load i32, i32* @REG_LIVE_WRITTEN, align 4
  %264 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %265 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %269 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  %272 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %273 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %272, i32 0, i32 1
  store i64 %271, i64* %273, align 8
  br label %281

274:                                              ; preds = %252
  %275 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %276 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %277 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %278 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %275, %struct.bpf_reg_state* %276, i64 %279)
  br label %281

281:                                              ; preds = %274, %258
  br label %282

282:                                              ; preds = %281
  %283 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %284 = call i32 @coerce_reg_to_size(%struct.bpf_reg_state* %283, i32 4)
  br label %285

285:                                              ; preds = %282, %224
  br label %327

286:                                              ; preds = %200
  %287 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %288 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %289 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %290 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @mark_reg_unknown(%struct.bpf_verifier_env* %287, %struct.bpf_reg_state* %288, i64 %291)
  %293 = load i64, i64* @SCALAR_VALUE, align 8
  %294 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %295 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %296 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %294, i64 %297
  %299 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %298, i32 0, i32 0
  store i64 %293, i64* %299, align 8
  %300 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %301 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @BPF_CLASS(i32 %302)
  %304 = load i64, i64* @BPF_ALU64, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %316

306:                                              ; preds = %286
  %307 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %308 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %309 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %307, i64 %310
  %312 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %313 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %311, i64 %314)
  br label %326

316:                                              ; preds = %286
  %317 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %318 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %319 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %317, i64 %320
  %322 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %323 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @__mark_reg_known(%struct.bpf_reg_state* %321, i64 %324)
  br label %326

326:                                              ; preds = %316, %306
  br label %327

327:                                              ; preds = %326, %285
  br label %488

328:                                              ; preds = %134
  %329 = load i64, i64* %7, align 8
  %330 = load i64, i64* @BPF_END, align 8
  %331 = icmp sgt i64 %329, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %328
  %333 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %334 = load i64, i64* %7, align 8
  %335 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %333, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %334)
  %336 = load i32, i32* @EINVAL, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %3, align 4
  br label %490

338:                                              ; preds = %328
  %339 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %340 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = call i64 @BPF_SRC(i32 %341)
  %343 = load i64, i64* @BPF_X, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %372

345:                                              ; preds = %338
  %346 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %347 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %345
  %351 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %352 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %350, %345
  %356 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %357 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %356, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %3, align 4
  br label %490

360:                                              ; preds = %350
  %361 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %362 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %363 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i32, i32* @SRC_OP, align 4
  %366 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %361, i64 %364, i32 %365)
  store i32 %366, i32* %8, align 4
  %367 = load i32, i32* %8, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %360
  %370 = load i32, i32* %8, align 4
  store i32 %370, i32* %3, align 4
  br label %490

371:                                              ; preds = %360
  br label %389

372:                                              ; preds = %338
  %373 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %374 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @BPF_REG_0, align 8
  %377 = icmp ne i64 %375, %376
  br i1 %377, label %383, label %378

378:                                              ; preds = %372
  %379 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %380 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %378, %372
  %384 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %385 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %384, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %386 = load i32, i32* @EINVAL, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %3, align 4
  br label %490

388:                                              ; preds = %378
  br label %389

389:                                              ; preds = %388, %371
  %390 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %391 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %392 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = load i32, i32* @SRC_OP, align 4
  %395 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %390, i64 %393, i32 %394)
  store i32 %395, i32* %8, align 4
  %396 = load i32, i32* %8, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %389
  %399 = load i32, i32* %8, align 4
  store i32 %399, i32* %3, align 4
  br label %490

400:                                              ; preds = %389
  %401 = load i64, i64* %7, align 8
  %402 = load i64, i64* @BPF_MOD, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = load i64, i64* %7, align 8
  %406 = load i64, i64* @BPF_DIV, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %425

408:                                              ; preds = %404, %400
  %409 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %410 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = call i64 @BPF_SRC(i32 %411)
  %413 = load i64, i64* @BPF_K, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %408
  %416 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %417 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %415
  %421 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %422 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %421, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %423 = load i32, i32* @EINVAL, align 4
  %424 = sub nsw i32 0, %423
  store i32 %424, i32* %3, align 4
  br label %490

425:                                              ; preds = %415, %408, %404
  %426 = load i64, i64* %7, align 8
  %427 = load i64, i64* @BPF_LSH, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %437, label %429

429:                                              ; preds = %425
  %430 = load i64, i64* %7, align 8
  %431 = load i64, i64* @BPF_RSH, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %437, label %433

433:                                              ; preds = %429
  %434 = load i64, i64* %7, align 8
  %435 = load i64, i64* @BPF_ARSH, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %473

437:                                              ; preds = %433, %429, %425
  %438 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %439 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 8
  %441 = call i64 @BPF_SRC(i32 %440)
  %442 = load i64, i64* @BPF_K, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %473

444:                                              ; preds = %437
  %445 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %446 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = call i64 @BPF_CLASS(i32 %447)
  %449 = load i64, i64* @BPF_ALU64, align 8
  %450 = icmp eq i64 %448, %449
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i32 64, i32 32
  store i32 %452, i32* %11, align 4
  %453 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %454 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = icmp slt i64 %455, 0
  br i1 %456, label %464, label %457

457:                                              ; preds = %444
  %458 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %459 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = load i32, i32* %11, align 4
  %462 = sext i32 %461 to i64
  %463 = icmp sge i64 %460, %462
  br i1 %463, label %464, label %472

464:                                              ; preds = %457, %444
  %465 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %466 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %467 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %466, i32 0, i32 2
  %468 = load i64, i64* %467, align 8
  %469 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %465, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %468)
  %470 = load i32, i32* @EINVAL, align 4
  %471 = sub nsw i32 0, %470
  store i32 %471, i32* %3, align 4
  br label %490

472:                                              ; preds = %457
  br label %473

473:                                              ; preds = %472, %437, %433
  %474 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %475 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %476 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %475, i32 0, i32 3
  %477 = load i64, i64* %476, align 8
  %478 = load i32, i32* @DST_OP_NO_MARK, align 4
  %479 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %474, i64 %477, i32 %478)
  store i32 %479, i32* %8, align 4
  %480 = load i32, i32* %8, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %473
  %483 = load i32, i32* %8, align 4
  store i32 %483, i32* %3, align 4
  br label %490

484:                                              ; preds = %473
  %485 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %486 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %487 = call i32 @adjust_reg_min_max_vals(%struct.bpf_verifier_env* %485, %struct.bpf_insn* %486)
  store i32 %487, i32* %3, align 4
  br label %490

488:                                              ; preds = %327
  br label %489

489:                                              ; preds = %488, %133
  store i32 0, i32* %3, align 4
  br label %490

490:                                              ; preds = %489, %484, %482, %464, %420, %398, %383, %369, %355, %332, %244, %198, %183, %169, %155, %131, %114, %105, %90, %51
  %491 = load i32, i32* %3, align 4
  ret i32 %491
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i64 @BPF_OP(i32) #1

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i64 @is_pointer_value(%struct.bpf_verifier_env*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mark_reg_unknown(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

declare dso_local i32 @coerce_reg_to_size(%struct.bpf_reg_state*, i32) #1

declare dso_local i32 @__mark_reg_known(%struct.bpf_reg_state*, i64) #1

declare dso_local i32 @adjust_reg_min_max_vals(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
