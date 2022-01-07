; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_func_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_func_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_call_arg_meta = type { i64, i32, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_reg_state = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_2__*, i64 }

@ARG_DONTCARE = common dso_local global i32 0, align 4
@SRC_OP = common dso_local global i32 0, align 4
@ARG_ANYTHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"R%d leaks addr into helper function\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"helper access to the packet is not allowed\0A\00", align 1
@ARG_PTR_TO_MAP_KEY = common dso_local global i32 0, align 4
@ARG_PTR_TO_MAP_VALUE = common dso_local global i32 0, align 4
@ARG_PTR_TO_UNINIT_MAP_VALUE = common dso_local global i32 0, align 4
@ARG_PTR_TO_MAP_VALUE_OR_NULL = common dso_local global i32 0, align 4
@PTR_TO_STACK = common dso_local global i32 0, align 4
@PTR_TO_MAP_VALUE = common dso_local global i32 0, align 4
@ARG_CONST_SIZE = common dso_local global i32 0, align 4
@ARG_CONST_SIZE_OR_ZERO = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i32 0, align 4
@ARG_CONST_MAP_PTR = common dso_local global i32 0, align 4
@CONST_PTR_TO_MAP = common dso_local global i32 0, align 4
@ARG_PTR_TO_CTX = common dso_local global i32 0, align 4
@PTR_TO_CTX = common dso_local global i32 0, align 4
@ARG_PTR_TO_SOCK_COMMON = common dso_local global i32 0, align 4
@PTR_TO_SOCK_COMMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"verifier internal error: more than one arg with ref_obj_id R%d %u %u\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ARG_PTR_TO_SOCKET = common dso_local global i32 0, align 4
@PTR_TO_SOCKET = common dso_local global i32 0, align 4
@ARG_PTR_TO_SPIN_LOCK = common dso_local global i32 0, align 4
@BPF_FUNC_spin_lock = common dso_local global i64 0, align 8
@BPF_FUNC_spin_unlock = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"verifier internal error\0A\00", align 1
@ARG_PTR_TO_MEM_OR_NULL = common dso_local global i32 0, align 4
@ARG_PTR_TO_UNINIT_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported arg_type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"invalid map_ptr to access map->key\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"invalid map_ptr to access map->value\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"R%d min value is negative, either use unsigned or 'var &= const'\0A\00", align 1
@BPF_MAX_VAR_SIZ = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [71 x i8] c"R%d unbounded memory access, use 'var &= const' or 'if (var < const)'\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"R%d type=%s expected=%s\0A\00", align 1
@reg_type_str = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i32, %struct.bpf_call_arg_meta*)* @check_func_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_func_arg(%struct.bpf_verifier_env* %0, i64 %1, i32 %2, %struct.bpf_call_arg_meta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_call_arg_meta*, align 8
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca %struct.bpf_reg_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bpf_call_arg_meta* %3, %struct.bpf_call_arg_meta** %9, align 8
  %17 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %18 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %17)
  store %struct.bpf_reg_state* %18, %struct.bpf_reg_state** %10, align 8
  %19 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i64 %20
  store %struct.bpf_reg_state* %21, %struct.bpf_reg_state** %11, align 8
  %22 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %23 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ARG_DONTCARE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %516

29:                                               ; preds = %4
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @SRC_OP, align 4
  %33 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %30, i64 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %516

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ARG_ANYTHING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EACCES, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %516

53:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %516

54:                                               ; preds = %38
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @type_is_pkt_pointer(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %60 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %61 = load i32, i32* @BPF_READ, align 4
  %62 = call i32 @may_access_direct_pkt_data(%struct.bpf_verifier_env* %59, %struct.bpf_call_arg_meta* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %66 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %516

69:                                               ; preds = %58, %54
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ARG_PTR_TO_MAP_KEY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @ARG_PTR_TO_MAP_VALUE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ARG_PTR_TO_UNINIT_MAP_VALUE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ARG_PTR_TO_MAP_VALUE_OR_NULL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %81, %77, %73, %69
  %86 = load i32, i32* @PTR_TO_STACK, align 4
  store i32 %86, i32* %12, align 4
  %87 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %88 = call i64 @register_is_null(%struct.bpf_reg_state* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ARG_PTR_TO_MAP_VALUE_OR_NULL, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %109

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %13, align 4
  %97 = call i64 @type_is_pkt_pointer(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %500

108:                                              ; preds = %103, %99, %95
  br label %109

109:                                              ; preds = %108, %94
  br label %315

110:                                              ; preds = %81
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @ARG_CONST_SIZE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @ARG_CONST_SIZE_OR_ZERO, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @SCALAR_VALUE, align 4
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %500

124:                                              ; preds = %118
  br label %314

125:                                              ; preds = %114
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @ARG_CONST_MAP_PTR, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32, i32* @CONST_PTR_TO_MAP, align 4
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %500

135:                                              ; preds = %129
  br label %313

136:                                              ; preds = %125
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @ARG_PTR_TO_CTX, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load i32, i32* @PTR_TO_CTX, align 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %500

146:                                              ; preds = %140
  %147 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %148 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @check_ctx_reg(%struct.bpf_verifier_env* %147, %struct.bpf_reg_state* %148, i64 %149)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %5, align 4
  br label %516

155:                                              ; preds = %146
  br label %312

156:                                              ; preds = %136
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @ARG_PTR_TO_SOCK_COMMON, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %195

160:                                              ; preds = %156
  %161 = load i32, i32* @PTR_TO_SOCK_COMMON, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @type_is_sk_pointer(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %500

166:                                              ; preds = %160
  %167 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %168 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %173 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %180 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %183 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %177, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %178, i64 %181, i64 %184)
  %186 = load i32, i32* @EFAULT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %516

188:                                              ; preds = %171
  %189 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %190 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %193 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %192, i32 0, i32 5
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %188, %166
  br label %311

195:                                              ; preds = %156
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @ARG_PTR_TO_SOCKET, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = load i32, i32* @PTR_TO_SOCKET, align 4
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %500

205:                                              ; preds = %199
  br label %310

206:                                              ; preds = %195
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @ARG_PTR_TO_SPIN_LOCK, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %247

210:                                              ; preds = %206
  %211 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %212 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @BPF_FUNC_spin_lock, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %218 = load i64, i64* %7, align 8
  %219 = call i64 @process_spin_lock(%struct.bpf_verifier_env* %217, i64 %218, i32 1)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32, i32* @EACCES, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %5, align 4
  br label %516

224:                                              ; preds = %216
  br label %246

225:                                              ; preds = %210
  %226 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %227 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @BPF_FUNC_spin_unlock, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %225
  %232 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @process_spin_lock(%struct.bpf_verifier_env* %232, i64 %233, i32 0)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32, i32* @EACCES, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %5, align 4
  br label %516

239:                                              ; preds = %231
  br label %245

240:                                              ; preds = %225
  %241 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %242 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %241, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %243 = load i32, i32* @EFAULT, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %5, align 4
  br label %516

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245, %224
  br label %309

247:                                              ; preds = %206
  %248 = load i32, i32* %8, align 4
  %249 = call i64 @arg_type_is_mem_ptr(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %282

251:                                              ; preds = %247
  %252 = load i32, i32* @PTR_TO_STACK, align 4
  store i32 %252, i32* %12, align 4
  %253 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %254 = call i64 @register_is_null(%struct.bpf_reg_state* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @ARG_PTR_TO_MEM_OR_NULL, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %275

261:                                              ; preds = %256, %251
  %262 = load i32, i32* %13, align 4
  %263 = call i64 @type_is_pkt_pointer(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = load i32, i32* %13, align 4
  %271 = load i32, i32* %12, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %500

274:                                              ; preds = %269, %265, %261
  br label %275

275:                                              ; preds = %274, %260
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* @ARG_PTR_TO_UNINIT_MEM, align 4
  %278 = icmp eq i32 %276, %277
  %279 = zext i1 %278 to i32
  %280 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %281 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 8
  br label %308

282:                                              ; preds = %247
  %283 = load i32, i32* %8, align 4
  %284 = call i64 @arg_type_is_int_ptr(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %282
  %287 = load i32, i32* @PTR_TO_STACK, align 4
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %13, align 4
  %289 = call i64 @type_is_pkt_pointer(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %300, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %291
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %500

300:                                              ; preds = %295, %291, %286
  br label %307

301:                                              ; preds = %282
  %302 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %303 = load i32, i32* %8, align 4
  %304 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %302, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* @EFAULT, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %5, align 4
  br label %516

307:                                              ; preds = %300
  br label %308

308:                                              ; preds = %307, %275
  br label %309

309:                                              ; preds = %308, %246
  br label %310

310:                                              ; preds = %309, %205
  br label %311

311:                                              ; preds = %310, %194
  br label %312

312:                                              ; preds = %311, %155
  br label %313

313:                                              ; preds = %312, %135
  br label %314

314:                                              ; preds = %313, %124
  br label %315

315:                                              ; preds = %314, %109
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* @ARG_CONST_MAP_PTR, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %321 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %320, i32 0, i32 6
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %324 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %323, i32 0, i32 4
  store %struct.TYPE_2__* %322, %struct.TYPE_2__** %324, align 8
  br label %498

325:                                              ; preds = %315
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @ARG_PTR_TO_MAP_KEY, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %348

329:                                              ; preds = %325
  %330 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %331 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %330, i32 0, i32 4
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** %331, align 8
  %333 = icmp ne %struct.TYPE_2__* %332, null
  br i1 %333, label %339, label %334

334:                                              ; preds = %329
  %335 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %336 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %335, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %337 = load i32, i32* @EACCES, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %5, align 4
  br label %516

339:                                              ; preds = %329
  %340 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %341 = load i64, i64* %7, align 8
  %342 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %343 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %342, i32 0, i32 4
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @check_helper_mem_access(%struct.bpf_verifier_env* %340, i64 %341, i32 %346, i32 0, %struct.bpf_call_arg_meta* null)
  store i32 %347, i32* %14, align 4
  br label %497

348:                                              ; preds = %325
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* @ARG_PTR_TO_MAP_VALUE, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %364, label %352

352:                                              ; preds = %348
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @ARG_PTR_TO_MAP_VALUE_OR_NULL, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %352
  %357 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %358 = call i64 @register_is_null(%struct.bpf_reg_state* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %356, %352
  %361 = load i32, i32* %8, align 4
  %362 = load i32, i32* @ARG_PTR_TO_UNINIT_MAP_VALUE, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %390

364:                                              ; preds = %360, %356, %348
  %365 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %366 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %365, i32 0, i32 4
  %367 = load %struct.TYPE_2__*, %struct.TYPE_2__** %366, align 8
  %368 = icmp ne %struct.TYPE_2__* %367, null
  br i1 %368, label %374, label %369

369:                                              ; preds = %364
  %370 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %371 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %370, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %372 = load i32, i32* @EACCES, align 4
  %373 = sub nsw i32 0, %372
  store i32 %373, i32* %5, align 4
  br label %516

374:                                              ; preds = %364
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* @ARG_PTR_TO_UNINIT_MAP_VALUE, align 4
  %377 = icmp eq i32 %375, %376
  %378 = zext i1 %377 to i32
  %379 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %380 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %379, i32 0, i32 1
  store i32 %378, i32* %380, align 8
  %381 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %382 = load i64, i64* %7, align 8
  %383 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %384 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %383, i32 0, i32 4
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %389 = call i32 @check_helper_mem_access(%struct.bpf_verifier_env* %381, i64 %382, i32 %387, i32 0, %struct.bpf_call_arg_meta* %388)
  store i32 %389, i32* %14, align 4
  br label %496

390:                                              ; preds = %360
  %391 = load i32, i32* %8, align 4
  %392 = call i64 @arg_type_is_mem_size(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %473

394:                                              ; preds = %390
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* @ARG_CONST_SIZE_OR_ZERO, align 4
  %397 = icmp eq i32 %395, %396
  %398 = zext i1 %397 to i32
  store i32 %398, i32* %15, align 4
  %399 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %400 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %403 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %402, i32 0, i32 3
  store i32 %401, i32* %403, align 8
  %404 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %405 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %408 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %407, i32 0, i32 2
  store i64 %406, i64* %408, align 8
  %409 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %410 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = call i32 @tnum_is_const(i32 %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %415, label %414

414:                                              ; preds = %394
  store %struct.bpf_call_arg_meta* null, %struct.bpf_call_arg_meta** %9, align 8
  br label %415

415:                                              ; preds = %414, %394
  %416 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %417 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp slt i64 %418, 0
  br i1 %419, label %420, label %426

420:                                              ; preds = %415
  %421 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %422 = load i64, i64* %7, align 8
  %423 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %421, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i64 %422)
  %424 = load i32, i32* @EACCES, align 4
  %425 = sub nsw i32 0, %424
  store i32 %425, i32* %5, align 4
  br label %516

426:                                              ; preds = %415
  %427 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %428 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %427, i32 0, i32 3
  %429 = load i64, i64* %428, align 8
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %443

431:                                              ; preds = %426
  %432 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %433 = load i64, i64* %7, align 8
  %434 = sub i64 %433, 1
  %435 = load i32, i32* %15, align 4
  %436 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %437 = call i32 @check_helper_mem_access(%struct.bpf_verifier_env* %432, i64 %434, i32 0, i32 %435, %struct.bpf_call_arg_meta* %436)
  store i32 %437, i32* %14, align 4
  %438 = load i32, i32* %14, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %431
  %441 = load i32, i32* %14, align 4
  store i32 %441, i32* %5, align 4
  br label %516

442:                                              ; preds = %431
  br label %443

443:                                              ; preds = %442, %426
  %444 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %445 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @BPF_MAX_VAR_SIZ, align 8
  %448 = icmp sge i64 %446, %447
  br i1 %448, label %449, label %455

449:                                              ; preds = %443
  %450 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %451 = load i64, i64* %7, align 8
  %452 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %450, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0), i64 %451)
  %453 = load i32, i32* @EACCES, align 4
  %454 = sub nsw i32 0, %453
  store i32 %454, i32* %5, align 4
  br label %516

455:                                              ; preds = %443
  %456 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %457 = load i64, i64* %7, align 8
  %458 = sub i64 %457, 1
  %459 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %460 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = trunc i64 %461 to i32
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %465 = call i32 @check_helper_mem_access(%struct.bpf_verifier_env* %456, i64 %458, i32 %462, i32 %463, %struct.bpf_call_arg_meta* %464)
  store i32 %465, i32* %14, align 4
  %466 = load i32, i32* %14, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %472, label %468

468:                                              ; preds = %455
  %469 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %470 = load i64, i64* %7, align 8
  %471 = call i32 @mark_chain_precision(%struct.bpf_verifier_env* %469, i64 %470)
  store i32 %471, i32* %14, align 4
  br label %472

472:                                              ; preds = %468, %455
  br label %495

473:                                              ; preds = %390
  %474 = load i32, i32* %8, align 4
  %475 = call i64 @arg_type_is_int_ptr(i32 %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %494

477:                                              ; preds = %473
  %478 = load i32, i32* %8, align 4
  %479 = call i32 @int_ptr_type_to_size(i32 %478)
  store i32 %479, i32* %16, align 4
  %480 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %481 = load i64, i64* %7, align 8
  %482 = load i32, i32* %16, align 4
  %483 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %9, align 8
  %484 = call i32 @check_helper_mem_access(%struct.bpf_verifier_env* %480, i64 %481, i32 %482, i32 0, %struct.bpf_call_arg_meta* %483)
  store i32 %484, i32* %14, align 4
  %485 = load i32, i32* %14, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %477
  %488 = load i32, i32* %14, align 4
  store i32 %488, i32* %5, align 4
  br label %516

489:                                              ; preds = %477
  %490 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %491 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %11, align 8
  %492 = load i32, i32* %16, align 4
  %493 = call i32 @check_ptr_alignment(%struct.bpf_verifier_env* %490, %struct.bpf_reg_state* %491, i32 0, i32 %492, i32 1)
  store i32 %493, i32* %14, align 4
  br label %494

494:                                              ; preds = %489, %473
  br label %495

495:                                              ; preds = %494, %472
  br label %496

496:                                              ; preds = %495, %374
  br label %497

497:                                              ; preds = %496, %339
  br label %498

498:                                              ; preds = %497, %319
  %499 = load i32, i32* %14, align 4
  store i32 %499, i32* %5, align 4
  br label %516

500:                                              ; preds = %299, %273, %204, %165, %145, %134, %123, %107
  %501 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %502 = load i64, i64* %7, align 8
  %503 = load i64*, i64** @reg_type_str, align 8
  %504 = load i32, i32* %13, align 4
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds i64, i64* %503, i64 %505
  %507 = load i64, i64* %506, align 8
  %508 = load i64*, i64** @reg_type_str, align 8
  %509 = load i32, i32* %12, align 4
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds i64, i64* %508, i64 %510
  %512 = load i64, i64* %511, align 8
  %513 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %501, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64 %502, i64 %507, i64 %512)
  %514 = load i32, i32* @EACCES, align 4
  %515 = sub nsw i32 0, %514
  store i32 %515, i32* %5, align 4
  br label %516

516:                                              ; preds = %500, %498, %487, %449, %440, %420, %369, %334, %301, %240, %236, %221, %176, %153, %64, %53, %47, %36, %28
  %517 = load i32, i32* %5, align 4
  ret i32 %517
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i64 @is_pointer_value(%struct.bpf_verifier_env*, i64) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @type_is_pkt_pointer(i32) #1

declare dso_local i32 @may_access_direct_pkt_data(%struct.bpf_verifier_env*, %struct.bpf_call_arg_meta*, i32) #1

declare dso_local i64 @register_is_null(%struct.bpf_reg_state*) #1

declare dso_local i32 @check_ctx_reg(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64) #1

declare dso_local i32 @type_is_sk_pointer(i32) #1

declare dso_local i64 @process_spin_lock(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i64 @arg_type_is_mem_ptr(i32) #1

declare dso_local i64 @arg_type_is_int_ptr(i32) #1

declare dso_local i32 @check_helper_mem_access(%struct.bpf_verifier_env*, i64, i32, i32, %struct.bpf_call_arg_meta*) #1

declare dso_local i64 @arg_type_is_mem_size(i32) #1

declare dso_local i32 @tnum_is_const(i32) #1

declare dso_local i32 @mark_chain_precision(%struct.bpf_verifier_env*, i64) #1

declare dso_local i32 @int_ptr_type_to_size(i32) #1

declare dso_local i32 @check_ptr_alignment(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
