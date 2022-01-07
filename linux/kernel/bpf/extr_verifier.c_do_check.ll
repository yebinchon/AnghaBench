; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_do_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_do_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.bpf_verifier_state*, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_12__*, %struct.bpf_insn* }
%struct.TYPE_12__ = type { i32 }
%struct.bpf_insn = type { i32, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.bpf_verifier_state = type { i64, i32, i32, i64, i8** }
%struct.TYPE_7__ = type { i32 }
%struct.bpf_reg_state = type { i32 }
%struct.bpf_insn_cbs = type { %struct.bpf_verifier_env*, i32 (%struct.bpf_verifier_env*, i8*, i64)* }
%struct.TYPE_11__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_MAIN_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid insn idx %d insn_cnt %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@BPF_COMPLEXITY_LIMIT_INSNS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"BPF program is too large. Processed %d insn\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@BPF_LOG_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"\0Afrom %d to %d%s: safe\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" (speculative execution)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%d: safe\0A\00", align 1
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BPF_LOG_LEVEL2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\0Afrom %d to %d%s:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@BPF_ALU = common dso_local global i64 0, align 8
@BPF_ALU64 = common dso_local global i64 0, align 8
@BPF_LDX = common dso_local global i64 0, align 8
@SRC_OP = common dso_local global i32 0, align 4
@DST_OP_NO_MARK = common dso_local global i32 0, align 4
@BPF_READ = common dso_local global i32 0, align 4
@NOT_INIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"same insn cannot be used with different pointers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_STX = common dso_local global i64 0, align 8
@BPF_XADD = common dso_local global i64 0, align 8
@BPF_WRITE = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i64 0, align 8
@BPF_MEM = common dso_local global i64 0, align 8
@BPF_REG_0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"BPF_ST uses reserved fields\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"BPF_ST stores into R%d %s is not allowed\0A\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@EACCES = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i64 0, align 8
@BPF_JMP32 = common dso_local global i64 0, align 8
@BPF_CALL = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@BPF_PSEUDO_CALL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"BPF_CALL uses reserved fields\0A\00", align 1
@BPF_FUNC_spin_unlock = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [53 x i8] c"function calls are not allowed while holding a lock\0A\00", align 1
@BPF_JA = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [29 x i8] c"BPF_JA uses reserved fields\0A\00", align 1
@BPF_EXIT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [31 x i8] c"BPF_EXIT uses reserved fields\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"bpf_spin_unlock is missing\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"R0 leaks addr as return value\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BPF_LD = common dso_local global i64 0, align 8
@BPF_ABS = common dso_local global i64 0, align 8
@BPF_IND = common dso_local global i64 0, align 8
@BPF_IMM = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"invalid BPF_LD mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"unknown insn class %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @do_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_check(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_verifier_state*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_insn_cbs, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %20 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %20, i32 0, i32 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %23, align 8
  store %struct.bpf_insn* %24, %struct.bpf_insn** %5, align 8
  %25 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %25, i32 0, i32 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %30, i32 0, i32 10
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 32, i32 %32)
  %34 = bitcast i8* %33 to %struct.bpf_verifier_state*
  store %struct.bpf_verifier_state* %34, %struct.bpf_verifier_state** %4, align 8
  %35 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %36 = icmp ne %struct.bpf_verifier_state* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %985

40:                                               ; preds = %1
  %41 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %44 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kzalloc(i32 4, i32 %47)
  %49 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %50 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %49, i32 0, i32 4
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %48, i8** %52, align 8
  %53 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %54 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %53, i32 0, i32 4
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %40
  %60 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %61 = call i32 @kfree(%struct.bpf_verifier_state* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %985

64:                                               ; preds = %40
  %65 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %66 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %66, i32 0, i32 6
  store %struct.bpf_verifier_state* %65, %struct.bpf_verifier_state** %67, align 8
  %68 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %69 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %70 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @BPF_MAIN_FUNC, align 4
  %75 = call i32 @init_func_state(%struct.bpf_verifier_env* %68, i8* %73, i32 %74, i32 0, i32 0)
  br label %76

76:                                               ; preds = %967, %883, %828, %754, %436, %64
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %79 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %81 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %87 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %88 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %985

94:                                               ; preds = %76
  %95 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %96 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %97 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %95, i64 %99
  store %struct.bpf_insn* %100, %struct.bpf_insn** %10, align 8
  %101 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %102 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @BPF_CLASS(i32 %103)
  store i64 %104, i64* %11, align 8
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %106 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* @BPF_COMPLEXITY_LIMIT_INSNS, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %94
  %112 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %113 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %114 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %112, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @E2BIG, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %985

119:                                              ; preds = %94
  %120 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %121 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %122 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 @is_state_visited(%struct.bpf_verifier_env* %120, i64 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %2, align 4
  br label %985

130:                                              ; preds = %119
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %169

133:                                              ; preds = %130
  %134 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %135 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %133
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %146 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %147 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %150 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %153 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %152, i32 0, i32 6
  %154 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %153, align 8
  %155 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %160 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %151, i8* %159)
  br label %167

161:                                              ; preds = %141
  %162 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %163 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %164 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %161, %144
  br label %168

168:                                              ; preds = %167, %133
  br label %863

169:                                              ; preds = %130
  %170 = load i32, i32* @current, align 4
  %171 = call i64 @signal_pending(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @EAGAIN, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %985

176:                                              ; preds = %169
  %177 = call i64 (...) @need_resched()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 (...) @cond_resched()
  br label %181

181:                                              ; preds = %179, %176
  %182 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %183 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @BPF_LOG_LEVEL2, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %181
  %190 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %191 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %190, i32 0, i32 9
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %242

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %242

200:                                              ; preds = %197, %181
  %201 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %202 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @BPF_LOG_LEVEL2, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %200
  %209 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %210 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %211 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  br label %231

214:                                              ; preds = %200
  %215 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %216 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %217 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %220 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %223 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %222, i32 0, i32 6
  %224 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %223, align 8
  %225 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %230 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %218, i32 %221, i8* %229)
  br label %231

231:                                              ; preds = %214, %208
  %232 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %233 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %234 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %233, i32 0, i32 4
  %235 = load i8**, i8*** %234, align 8
  %236 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %237 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i8*, i8** %235, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @print_verifier_state(%struct.bpf_verifier_env* %232, i8* %240)
  store i32 0, i32* %8, align 4
  br label %242

242:                                              ; preds = %231, %197, %189
  %243 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %244 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %243, i32 0, i32 9
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @BPF_LOG_LEVEL, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %13, i32 0, i32 0
  %252 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_verifier_env* %252, %struct.bpf_verifier_env** %251, align 8
  %253 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %13, i32 0, i32 1
  store i32 (%struct.bpf_verifier_env*, i8*, i64)* bitcast (i32 (%struct.bpf_verifier_env*, i8*, ...)* @verbose to i32 (%struct.bpf_verifier_env*, i8*, i64)*), i32 (%struct.bpf_verifier_env*, i8*, i64)** %253, align 8
  %254 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %255 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %256 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %254, i64 %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %260 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %261 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %262 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %263)
  %265 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %266 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %267 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %266, i32 0, i32 8
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @print_bpf_insn(%struct.bpf_insn_cbs* %13, %struct.bpf_insn* %265, i32 %268)
  br label %270

270:                                              ; preds = %250, %242
  %271 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %272 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %271, i32 0, i32 4
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = call i64 @bpf_prog_is_dev_bound(%struct.TYPE_12__* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %293

278:                                              ; preds = %270
  %279 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %280 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %281 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %285 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @bpf_prog_offload_verify_insn(%struct.bpf_verifier_env* %279, i64 %283, i32 %286)
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %278
  %291 = load i32, i32* %12, align 4
  store i32 %291, i32* %2, align 4
  br label %985

292:                                              ; preds = %278
  br label %293

293:                                              ; preds = %292, %270
  %294 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %295 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %294)
  store %struct.bpf_reg_state* %295, %struct.bpf_reg_state** %6, align 8
  %296 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %297 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %296, i32 0, i32 5
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 8
  %299 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %300 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  store i32 1, i32* %304, align 4
  %305 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %306 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %9, align 4
  %308 = load i64, i64* %11, align 8
  %309 = load i64, i64* @BPF_ALU, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %315, label %311

311:                                              ; preds = %293
  %312 = load i64, i64* %11, align 8
  %313 = load i64, i64* @BPF_ALU64, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %311, %293
  %316 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %317 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %318 = call i32 @check_alu_op(%struct.bpf_verifier_env* %316, %struct.bpf_insn* %317)
  store i32 %318, i32* %12, align 4
  %319 = load i32, i32* %12, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %315
  %322 = load i32, i32* %12, align 4
  store i32 %322, i32* %2, align 4
  br label %985

323:                                              ; preds = %315
  br label %967

324:                                              ; preds = %311
  %325 = load i64, i64* %11, align 8
  %326 = load i64, i64* @BPF_LDX, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %413

328:                                              ; preds = %324
  %329 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %330 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %331 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @SRC_OP, align 4
  %334 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %329, i32 %332, i32 %333)
  store i32 %334, i32* %12, align 4
  %335 = load i32, i32* %12, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %328
  %338 = load i32, i32* %12, align 4
  store i32 %338, i32* %2, align 4
  br label %985

339:                                              ; preds = %328
  %340 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %341 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %342 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @DST_OP_NO_MARK, align 4
  %345 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %340, i32 %343, i32 %344)
  store i32 %345, i32* %12, align 4
  %346 = load i32, i32* %12, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %339
  %349 = load i32, i32* %12, align 4
  store i32 %349, i32* %2, align 4
  br label %985

350:                                              ; preds = %339
  %351 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %352 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %353 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %351, i64 %355
  %357 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %15, align 4
  %359 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %360 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %361 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %364 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sext i32 %365 to i64
  %367 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %368 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %371 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @BPF_SIZE(i32 %372)
  %374 = load i32, i32* @BPF_READ, align 4
  %375 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %376 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @check_mem_access(%struct.bpf_verifier_env* %359, i32 %362, i64 %366, i64 %369, i32 %373, i32 %374, i32 %377, i32 0)
  store i32 %378, i32* %12, align 4
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %350
  %382 = load i32, i32* %12, align 4
  store i32 %382, i32* %2, align 4
  br label %985

383:                                              ; preds = %350
  %384 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %385 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %384, i32 0, i32 5
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %385, align 8
  %387 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %388 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 1
  store i32* %392, i32** %14, align 8
  %393 = load i32*, i32** %14, align 8
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @NOT_INIT, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %383
  %398 = load i32, i32* %15, align 4
  %399 = load i32*, i32** %14, align 8
  store i32 %398, i32* %399, align 4
  br label %412

400:                                              ; preds = %383
  %401 = load i32, i32* %15, align 4
  %402 = load i32*, i32** %14, align 8
  %403 = load i32, i32* %402, align 4
  %404 = call i64 @reg_type_mismatch(i32 %401, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %400
  %407 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %408 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %407, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %409 = load i32, i32* @EINVAL, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %2, align 4
  br label %985

411:                                              ; preds = %400
  br label %412

412:                                              ; preds = %411, %397
  br label %966

413:                                              ; preds = %324
  %414 = load i64, i64* %11, align 8
  %415 = load i64, i64* @BPF_STX, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %526

417:                                              ; preds = %413
  %418 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %419 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = call i64 @BPF_MODE(i32 %420)
  %422 = load i64, i64* @BPF_XADD, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %441

424:                                              ; preds = %417
  %425 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %426 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %427 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %431 = call i32 @check_xadd(%struct.bpf_verifier_env* %425, i64 %429, %struct.bpf_insn* %430)
  store i32 %431, i32* %12, align 4
  %432 = load i32, i32* %12, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %424
  %435 = load i32, i32* %12, align 4
  store i32 %435, i32* %2, align 4
  br label %985

436:                                              ; preds = %424
  %437 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %438 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %438, align 4
  br label %76

441:                                              ; preds = %417
  %442 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %443 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %444 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @SRC_OP, align 4
  %447 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %442, i32 %445, i32 %446)
  store i32 %447, i32* %12, align 4
  %448 = load i32, i32* %12, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %441
  %451 = load i32, i32* %12, align 4
  store i32 %451, i32* %2, align 4
  br label %985

452:                                              ; preds = %441
  %453 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %454 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %455 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @SRC_OP, align 4
  %458 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %453, i32 %456, i32 %457)
  store i32 %458, i32* %12, align 4
  %459 = load i32, i32* %12, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %452
  %462 = load i32, i32* %12, align 4
  store i32 %462, i32* %2, align 4
  br label %985

463:                                              ; preds = %452
  %464 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %465 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %466 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %464, i64 %468
  %470 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %17, align 4
  %472 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %473 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %474 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %477 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %481 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %484 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @BPF_SIZE(i32 %485)
  %487 = load i32, i32* @BPF_WRITE, align 4
  %488 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %489 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @check_mem_access(%struct.bpf_verifier_env* %472, i32 %475, i64 %479, i64 %482, i32 %486, i32 %487, i32 %490, i32 0)
  store i32 %491, i32* %12, align 4
  %492 = load i32, i32* %12, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %463
  %495 = load i32, i32* %12, align 4
  store i32 %495, i32* %2, align 4
  br label %985

496:                                              ; preds = %463
  %497 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %498 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %497, i32 0, i32 5
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** %498, align 8
  %500 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %501 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 1
  store i32* %505, i32** %16, align 8
  %506 = load i32*, i32** %16, align 8
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @NOT_INIT, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %513

510:                                              ; preds = %496
  %511 = load i32, i32* %17, align 4
  %512 = load i32*, i32** %16, align 8
  store i32 %511, i32* %512, align 4
  br label %525

513:                                              ; preds = %496
  %514 = load i32, i32* %17, align 4
  %515 = load i32*, i32** %16, align 8
  %516 = load i32, i32* %515, align 4
  %517 = call i64 @reg_type_mismatch(i32 %514, i32 %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %524

519:                                              ; preds = %513
  %520 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %521 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %520, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %522 = load i32, i32* @EINVAL, align 4
  %523 = sub nsw i32 0, %522
  store i32 %523, i32* %2, align 4
  br label %985

524:                                              ; preds = %513
  br label %525

525:                                              ; preds = %524, %510
  br label %965

526:                                              ; preds = %413
  %527 = load i64, i64* %11, align 8
  %528 = load i64, i64* @BPF_ST, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %607

530:                                              ; preds = %526
  %531 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %532 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %531, i32 0, i32 4
  %533 = load i32, i32* %532, align 8
  %534 = call i64 @BPF_MODE(i32 %533)
  %535 = load i64, i64* @BPF_MEM, align 8
  %536 = icmp ne i64 %534, %535
  br i1 %536, label %543, label %537

537:                                              ; preds = %530
  %538 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %539 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* @BPF_REG_0, align 4
  %542 = icmp ne i32 %540, %541
  br i1 %542, label %543, label %548

543:                                              ; preds = %537, %530
  %544 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %545 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %544, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %546 = load i32, i32* @EINVAL, align 4
  %547 = sub nsw i32 0, %546
  store i32 %547, i32* %2, align 4
  br label %985

548:                                              ; preds = %537
  %549 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %550 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %551 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @SRC_OP, align 4
  %554 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %549, i32 %552, i32 %553)
  store i32 %554, i32* %12, align 4
  %555 = load i32, i32* %12, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %548
  %558 = load i32, i32* %12, align 4
  store i32 %558, i32* %2, align 4
  br label %985

559:                                              ; preds = %548
  %560 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %561 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %562 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = call i64 @is_ctx_reg(%struct.bpf_verifier_env* %560, i32 %563)
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %584

566:                                              ; preds = %559
  %567 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %568 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %569 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load i32*, i32** @reg_type_str, align 8
  %572 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %573 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %574 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = call %struct.TYPE_11__* @reg_state(%struct.bpf_verifier_env* %572, i32 %575)
  %577 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds i32, i32* %571, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %567, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %570, i32 %580)
  %582 = load i32, i32* @EACCES, align 4
  %583 = sub nsw i32 0, %582
  store i32 %583, i32* %2, align 4
  br label %985

584:                                              ; preds = %559
  %585 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %586 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %587 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %590 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = sext i32 %591 to i64
  %593 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %594 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %593, i32 0, i32 2
  %595 = load i64, i64* %594, align 8
  %596 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %597 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %596, i32 0, i32 4
  %598 = load i32, i32* %597, align 8
  %599 = call i32 @BPF_SIZE(i32 %598)
  %600 = load i32, i32* @BPF_WRITE, align 4
  %601 = call i32 @check_mem_access(%struct.bpf_verifier_env* %585, i32 %588, i64 %592, i64 %595, i32 %599, i32 %600, i32 -1, i32 0)
  store i32 %601, i32* %12, align 4
  %602 = load i32, i32* %12, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %584
  %605 = load i32, i32* %12, align 4
  store i32 %605, i32* %2, align 4
  br label %985

606:                                              ; preds = %584
  br label %964

607:                                              ; preds = %526
  %608 = load i64, i64* %11, align 8
  %609 = load i64, i64* @BPF_JMP, align 8
  %610 = icmp eq i64 %608, %609
  br i1 %610, label %615, label %611

611:                                              ; preds = %607
  %612 = load i64, i64* %11, align 8
  %613 = load i64, i64* @BPF_JMP32, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %898

615:                                              ; preds = %611, %607
  %616 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %617 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %616, i32 0, i32 4
  %618 = load i32, i32* %617, align 8
  %619 = call i64 @BPF_OP(i32 %618)
  store i64 %619, i64* %18, align 8
  %620 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %621 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %620, i32 0, i32 7
  %622 = load i32, i32* %621, align 8
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %621, align 8
  %624 = load i64, i64* %18, align 8
  %625 = load i64, i64* @BPF_CALL, align 8
  %626 = icmp eq i64 %624, %625
  br i1 %626, label %627, label %717

627:                                              ; preds = %615
  %628 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %629 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %628, i32 0, i32 4
  %630 = load i32, i32* %629, align 8
  %631 = call i64 @BPF_SRC(i32 %630)
  %632 = load i64, i64* @BPF_K, align 8
  %633 = icmp ne i64 %631, %632
  br i1 %633, label %661, label %634

634:                                              ; preds = %627
  %635 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %636 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %635, i32 0, i32 2
  %637 = load i64, i64* %636, align 8
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %661, label %639

639:                                              ; preds = %634
  %640 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %641 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* @BPF_REG_0, align 4
  %644 = icmp ne i32 %642, %643
  br i1 %644, label %645, label %651

645:                                              ; preds = %639
  %646 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %647 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %646, i32 0, i32 0
  %648 = load i32, i32* %647, align 8
  %649 = load i32, i32* @BPF_PSEUDO_CALL, align 4
  %650 = icmp ne i32 %648, %649
  br i1 %650, label %661, label %651

651:                                              ; preds = %645, %639
  %652 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %653 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @BPF_REG_0, align 4
  %656 = icmp ne i32 %654, %655
  br i1 %656, label %661, label %657

657:                                              ; preds = %651
  %658 = load i64, i64* %11, align 8
  %659 = load i64, i64* @BPF_JMP32, align 8
  %660 = icmp eq i64 %658, %659
  br i1 %660, label %661, label %666

661:                                              ; preds = %657, %651, %645, %634, %627
  %662 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %663 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %662, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %664 = load i32, i32* @EINVAL, align 4
  %665 = sub nsw i32 0, %664
  store i32 %665, i32* %2, align 4
  br label %985

666:                                              ; preds = %657
  %667 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %668 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %667, i32 0, i32 6
  %669 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %668, align 8
  %670 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %669, i32 0, i32 3
  %671 = load i64, i64* %670, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %690

673:                                              ; preds = %666
  %674 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %675 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 8
  %677 = load i32, i32* @BPF_PSEUDO_CALL, align 4
  %678 = icmp eq i32 %676, %677
  br i1 %678, label %685, label %679

679:                                              ; preds = %673
  %680 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %681 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %680, i32 0, i32 3
  %682 = load i64, i64* %681, align 8
  %683 = load i64, i64* @BPF_FUNC_spin_unlock, align 8
  %684 = icmp ne i64 %682, %683
  br i1 %684, label %685, label %690

685:                                              ; preds = %679, %673
  %686 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %687 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %686, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0))
  %688 = load i32, i32* @EINVAL, align 4
  %689 = sub nsw i32 0, %688
  store i32 %689, i32* %2, align 4
  br label %985

690:                                              ; preds = %679, %666
  %691 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %692 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 8
  %694 = load i32, i32* @BPF_PSEUDO_CALL, align 4
  %695 = icmp eq i32 %693, %694
  br i1 %695, label %696, label %702

696:                                              ; preds = %690
  %697 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %698 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %699 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %700 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %699, i32 0, i32 1
  %701 = call i32 @check_func_call(%struct.bpf_verifier_env* %697, %struct.bpf_insn* %698, i32* %700)
  store i32 %701, i32* %12, align 4
  br label %711

702:                                              ; preds = %690
  %703 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %704 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %705 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %704, i32 0, i32 3
  %706 = load i64, i64* %705, align 8
  %707 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %708 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 4
  %710 = call i32 @check_helper_call(%struct.bpf_verifier_env* %703, i64 %706, i32 %709)
  store i32 %710, i32* %12, align 4
  br label %711

711:                                              ; preds = %702, %696
  %712 = load i32, i32* %12, align 4
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %714, label %716

714:                                              ; preds = %711
  %715 = load i32, i32* %12, align 4
  store i32 %715, i32* %2, align 4
  br label %985

716:                                              ; preds = %711
  br label %897

717:                                              ; preds = %615
  %718 = load i64, i64* %18, align 8
  %719 = load i64, i64* @BPF_JA, align 8
  %720 = icmp eq i64 %718, %719
  br i1 %720, label %721, label %765

721:                                              ; preds = %717
  %722 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %723 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %722, i32 0, i32 4
  %724 = load i32, i32* %723, align 8
  %725 = call i64 @BPF_SRC(i32 %724)
  %726 = load i64, i64* @BPF_K, align 8
  %727 = icmp ne i64 %725, %726
  br i1 %727, label %749, label %728

728:                                              ; preds = %721
  %729 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %730 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %729, i32 0, i32 3
  %731 = load i64, i64* %730, align 8
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %749, label %733

733:                                              ; preds = %728
  %734 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %735 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %734, i32 0, i32 0
  %736 = load i32, i32* %735, align 8
  %737 = load i32, i32* @BPF_REG_0, align 4
  %738 = icmp ne i32 %736, %737
  br i1 %738, label %749, label %739

739:                                              ; preds = %733
  %740 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %741 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %740, i32 0, i32 1
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* @BPF_REG_0, align 4
  %744 = icmp ne i32 %742, %743
  br i1 %744, label %749, label %745

745:                                              ; preds = %739
  %746 = load i64, i64* %11, align 8
  %747 = load i64, i64* @BPF_JMP32, align 8
  %748 = icmp eq i64 %746, %747
  br i1 %748, label %749, label %754

749:                                              ; preds = %745, %739, %733, %728, %721
  %750 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %751 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %750, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %752 = load i32, i32* @EINVAL, align 4
  %753 = sub nsw i32 0, %752
  store i32 %753, i32* %2, align 4
  br label %985

754:                                              ; preds = %745
  %755 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %756 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %755, i32 0, i32 2
  %757 = load i64, i64* %756, align 8
  %758 = add nsw i64 %757, 1
  %759 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %760 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %759, i32 0, i32 1
  %761 = load i32, i32* %760, align 4
  %762 = sext i32 %761 to i64
  %763 = add nsw i64 %762, %758
  %764 = trunc i64 %763 to i32
  store i32 %764, i32* %760, align 4
  br label %76

765:                                              ; preds = %717
  %766 = load i64, i64* %18, align 8
  %767 = load i64, i64* @BPF_EXIT, align 8
  %768 = icmp eq i64 %766, %767
  br i1 %768, label %769, label %884

769:                                              ; preds = %765
  %770 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %771 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %770, i32 0, i32 4
  %772 = load i32, i32* %771, align 8
  %773 = call i64 @BPF_SRC(i32 %772)
  %774 = load i64, i64* @BPF_K, align 8
  %775 = icmp ne i64 %773, %774
  br i1 %775, label %797, label %776

776:                                              ; preds = %769
  %777 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %778 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %777, i32 0, i32 3
  %779 = load i64, i64* %778, align 8
  %780 = icmp ne i64 %779, 0
  br i1 %780, label %797, label %781

781:                                              ; preds = %776
  %782 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %783 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %782, i32 0, i32 0
  %784 = load i32, i32* %783, align 8
  %785 = load i32, i32* @BPF_REG_0, align 4
  %786 = icmp ne i32 %784, %785
  br i1 %786, label %797, label %787

787:                                              ; preds = %781
  %788 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %789 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %788, i32 0, i32 1
  %790 = load i32, i32* %789, align 4
  %791 = load i32, i32* @BPF_REG_0, align 4
  %792 = icmp ne i32 %790, %791
  br i1 %792, label %797, label %793

793:                                              ; preds = %787
  %794 = load i64, i64* %11, align 8
  %795 = load i64, i64* @BPF_JMP32, align 8
  %796 = icmp eq i64 %794, %795
  br i1 %796, label %797, label %802

797:                                              ; preds = %793, %787, %781, %776, %769
  %798 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %799 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %798, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %800 = load i32, i32* @EINVAL, align 4
  %801 = sub nsw i32 0, %800
  store i32 %801, i32* %2, align 4
  br label %985

802:                                              ; preds = %793
  %803 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %804 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %803, i32 0, i32 6
  %805 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %804, align 8
  %806 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %805, i32 0, i32 3
  %807 = load i64, i64* %806, align 8
  %808 = icmp ne i64 %807, 0
  br i1 %808, label %809, label %814

809:                                              ; preds = %802
  %810 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %811 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %810, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %812 = load i32, i32* @EINVAL, align 4
  %813 = sub nsw i32 0, %812
  store i32 %813, i32* %2, align 4
  br label %985

814:                                              ; preds = %802
  %815 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %816 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %815, i32 0, i32 0
  %817 = load i64, i64* %816, align 8
  %818 = icmp ne i64 %817, 0
  br i1 %818, label %819, label %829

819:                                              ; preds = %814
  %820 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %821 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %822 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %821, i32 0, i32 1
  %823 = call i32 @prepare_func_exit(%struct.bpf_verifier_env* %820, i32* %822)
  store i32 %823, i32* %12, align 4
  %824 = load i32, i32* %12, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %828

826:                                              ; preds = %819
  %827 = load i32, i32* %12, align 4
  store i32 %827, i32* %2, align 4
  br label %985

828:                                              ; preds = %819
  store i32 1, i32* %8, align 4
  br label %76

829:                                              ; preds = %814
  %830 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %831 = call i32 @check_reference_leak(%struct.bpf_verifier_env* %830)
  store i32 %831, i32* %12, align 4
  %832 = load i32, i32* %12, align 4
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %836

834:                                              ; preds = %829
  %835 = load i32, i32* %12, align 4
  store i32 %835, i32* %2, align 4
  br label %985

836:                                              ; preds = %829
  %837 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %838 = load i32, i32* @BPF_REG_0, align 4
  %839 = load i32, i32* @SRC_OP, align 4
  %840 = call i32 @check_reg_arg(%struct.bpf_verifier_env* %837, i32 %838, i32 %839)
  store i32 %840, i32* %12, align 4
  %841 = load i32, i32* %12, align 4
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %843, label %845

843:                                              ; preds = %836
  %844 = load i32, i32* %12, align 4
  store i32 %844, i32* %2, align 4
  br label %985

845:                                              ; preds = %836
  %846 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %847 = load i32, i32* @BPF_REG_0, align 4
  %848 = call i64 @is_pointer_value(%struct.bpf_verifier_env* %846, i32 %847)
  %849 = icmp ne i64 %848, 0
  br i1 %849, label %850, label %855

850:                                              ; preds = %845
  %851 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %852 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %851, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  %853 = load i32, i32* @EACCES, align 4
  %854 = sub nsw i32 0, %853
  store i32 %854, i32* %2, align 4
  br label %985

855:                                              ; preds = %845
  %856 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %857 = call i32 @check_return_code(%struct.bpf_verifier_env* %856)
  store i32 %857, i32* %12, align 4
  %858 = load i32, i32* %12, align 4
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %860, label %862

860:                                              ; preds = %855
  %861 = load i32, i32* %12, align 4
  store i32 %861, i32* %2, align 4
  br label %985

862:                                              ; preds = %855
  br label %863

863:                                              ; preds = %862, %168
  %864 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %865 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %866 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %865, i32 0, i32 6
  %867 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %866, align 8
  %868 = call i32 @update_branch_counts(%struct.bpf_verifier_env* %864, %struct.bpf_verifier_state* %867)
  %869 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %870 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %871 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %870, i32 0, i32 1
  %872 = call i32 @pop_stack(%struct.bpf_verifier_env* %869, i32* %9, i32* %871)
  store i32 %872, i32* %12, align 4
  %873 = load i32, i32* %12, align 4
  %874 = icmp slt i32 %873, 0
  br i1 %874, label %875, label %883

875:                                              ; preds = %863
  %876 = load i32, i32* %12, align 4
  %877 = load i32, i32* @ENOENT, align 4
  %878 = sub nsw i32 0, %877
  %879 = icmp ne i32 %876, %878
  br i1 %879, label %880, label %882

880:                                              ; preds = %875
  %881 = load i32, i32* %12, align 4
  store i32 %881, i32* %2, align 4
  br label %985

882:                                              ; preds = %875
  br label %972

883:                                              ; preds = %863
  store i32 1, i32* %8, align 4
  br label %76

884:                                              ; preds = %765
  %885 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %886 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %887 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %888 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %887, i32 0, i32 1
  %889 = call i32 @check_cond_jmp_op(%struct.bpf_verifier_env* %885, %struct.bpf_insn* %886, i32* %888)
  store i32 %889, i32* %12, align 4
  %890 = load i32, i32* %12, align 4
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %894

892:                                              ; preds = %884
  %893 = load i32, i32* %12, align 4
  store i32 %893, i32* %2, align 4
  br label %985

894:                                              ; preds = %884
  br label %895

895:                                              ; preds = %894
  br label %896

896:                                              ; preds = %895
  br label %897

897:                                              ; preds = %896, %716
  br label %963

898:                                              ; preds = %611
  %899 = load i64, i64* %11, align 8
  %900 = load i64, i64* @BPF_LD, align 8
  %901 = icmp eq i64 %899, %900
  br i1 %901, label %902, label %956

902:                                              ; preds = %898
  %903 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %904 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %903, i32 0, i32 4
  %905 = load i32, i32* %904, align 8
  %906 = call i64 @BPF_MODE(i32 %905)
  store i64 %906, i64* %19, align 8
  %907 = load i64, i64* %19, align 8
  %908 = load i64, i64* @BPF_ABS, align 8
  %909 = icmp eq i64 %907, %908
  br i1 %909, label %914, label %910

910:                                              ; preds = %902
  %911 = load i64, i64* %19, align 8
  %912 = load i64, i64* @BPF_IND, align 8
  %913 = icmp eq i64 %911, %912
  br i1 %913, label %914, label %923

914:                                              ; preds = %910, %902
  %915 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %916 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %917 = call i32 @check_ld_abs(%struct.bpf_verifier_env* %915, %struct.bpf_insn* %916)
  store i32 %917, i32* %12, align 4
  %918 = load i32, i32* %12, align 4
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %920, label %922

920:                                              ; preds = %914
  %921 = load i32, i32* %12, align 4
  store i32 %921, i32* %2, align 4
  br label %985

922:                                              ; preds = %914
  br label %955

923:                                              ; preds = %910
  %924 = load i64, i64* %19, align 8
  %925 = load i64, i64* @BPF_IMM, align 8
  %926 = icmp eq i64 %924, %925
  br i1 %926, label %927, label %949

927:                                              ; preds = %923
  %928 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %929 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %930 = call i32 @check_ld_imm(%struct.bpf_verifier_env* %928, %struct.bpf_insn* %929)
  store i32 %930, i32* %12, align 4
  %931 = load i32, i32* %12, align 4
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %933, label %935

933:                                              ; preds = %927
  %934 = load i32, i32* %12, align 4
  store i32 %934, i32* %2, align 4
  br label %985

935:                                              ; preds = %927
  %936 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %937 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %936, i32 0, i32 1
  %938 = load i32, i32* %937, align 4
  %939 = add nsw i32 %938, 1
  store i32 %939, i32* %937, align 4
  %940 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %941 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %940, i32 0, i32 5
  %942 = load %struct.TYPE_8__*, %struct.TYPE_8__** %941, align 8
  %943 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %944 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %943, i32 0, i32 1
  %945 = load i32, i32* %944, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %942, i64 %946
  %948 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %947, i32 0, i32 0
  store i32 1, i32* %948, align 4
  br label %954

949:                                              ; preds = %923
  %950 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %951 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %950, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %952 = load i32, i32* @EINVAL, align 4
  %953 = sub nsw i32 0, %952
  store i32 %953, i32* %2, align 4
  br label %985

954:                                              ; preds = %935
  br label %955

955:                                              ; preds = %954, %922
  br label %962

956:                                              ; preds = %898
  %957 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %958 = load i64, i64* %11, align 8
  %959 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %957, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i64 %958)
  %960 = load i32, i32* @EINVAL, align 4
  %961 = sub nsw i32 0, %960
  store i32 %961, i32* %2, align 4
  br label %985

962:                                              ; preds = %955
  br label %963

963:                                              ; preds = %962, %897
  br label %964

964:                                              ; preds = %963, %606
  br label %965

965:                                              ; preds = %964, %525
  br label %966

966:                                              ; preds = %965, %412
  br label %967

967:                                              ; preds = %966, %323
  %968 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %969 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %968, i32 0, i32 1
  %970 = load i32, i32* %969, align 4
  %971 = add nsw i32 %970, 1
  store i32 %971, i32* %969, align 4
  br label %76

972:                                              ; preds = %882
  %973 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %974 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %973, i32 0, i32 3
  %975 = load %struct.TYPE_10__*, %struct.TYPE_10__** %974, align 8
  %976 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %975, i64 0
  %977 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %976, i32 0, i32 0
  %978 = load i32, i32* %977, align 4
  %979 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %980 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %979, i32 0, i32 4
  %981 = load %struct.TYPE_9__*, %struct.TYPE_9__** %980, align 8
  %982 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %981, i32 0, i32 1
  %983 = load %struct.TYPE_12__*, %struct.TYPE_12__** %982, align 8
  %984 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %983, i32 0, i32 0
  store i32 %978, i32* %984, align 4
  store i32 0, i32* %2, align 4
  br label %985

985:                                              ; preds = %972, %956, %949, %933, %920, %892, %880, %860, %850, %843, %834, %826, %809, %797, %749, %714, %685, %661, %604, %566, %557, %543, %519, %494, %461, %450, %434, %406, %381, %348, %337, %321, %290, %173, %128, %111, %85, %59, %37
  %986 = load i32, i32* %2, align 4
  ret i32 %986
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.bpf_verifier_state*) #1

declare dso_local i32 @init_func_state(%struct.bpf_verifier_env*, i8*, i32, i32, i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @BPF_CLASS(i32) #1

declare dso_local i32 @is_state_visited(%struct.bpf_verifier_env*, i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @print_verifier_state(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i32 @verbose_linfo(%struct.bpf_verifier_env*, i64, i8*) #1

declare dso_local i32 @print_bpf_insn(%struct.bpf_insn_cbs*, %struct.bpf_insn*, i32) #1

declare dso_local i64 @bpf_prog_is_dev_bound(%struct.TYPE_12__*) #1

declare dso_local i32 @bpf_prog_offload_verify_insn(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @check_alu_op(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

declare dso_local i32 @check_reg_arg(%struct.bpf_verifier_env*, i32, i32) #1

declare dso_local i32 @check_mem_access(%struct.bpf_verifier_env*, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_SIZE(i32) #1

declare dso_local i64 @reg_type_mismatch(i32, i32) #1

declare dso_local i64 @BPF_MODE(i32) #1

declare dso_local i32 @check_xadd(%struct.bpf_verifier_env*, i64, %struct.bpf_insn*) #1

declare dso_local i64 @is_ctx_reg(%struct.bpf_verifier_env*, i32) #1

declare dso_local %struct.TYPE_11__* @reg_state(%struct.bpf_verifier_env*, i32) #1

declare dso_local i64 @BPF_OP(i32) #1

declare dso_local i64 @BPF_SRC(i32) #1

declare dso_local i32 @check_func_call(%struct.bpf_verifier_env*, %struct.bpf_insn*, i32*) #1

declare dso_local i32 @check_helper_call(%struct.bpf_verifier_env*, i64, i32) #1

declare dso_local i32 @prepare_func_exit(%struct.bpf_verifier_env*, i32*) #1

declare dso_local i32 @check_reference_leak(%struct.bpf_verifier_env*) #1

declare dso_local i64 @is_pointer_value(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @check_return_code(%struct.bpf_verifier_env*) #1

declare dso_local i32 @update_branch_counts(%struct.bpf_verifier_env*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @pop_stack(%struct.bpf_verifier_env*, i32*, i32*) #1

declare dso_local i32 @check_cond_jmp_op(%struct.bpf_verifier_env*, %struct.bpf_insn*, i32*) #1

declare dso_local i32 @check_ld_abs(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

declare dso_local i32 @check_ld_imm(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
