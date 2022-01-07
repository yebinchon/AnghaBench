; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_is_state_visited.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_is_state_visited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.bpf_verifier_state_list*, %struct.TYPE_7__*, i32, i64, %struct.bpf_verifier_state* }
%struct.bpf_verifier_state_list = type { i32, i32, %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state }
%struct.bpf_verifier_state = type { i32, i32, i32, i32, %struct.bpf_func_state**, %struct.bpf_verifier_state*, i32 }
%struct.bpf_func_state = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"infinite loop detected at insn %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_LIVE_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"BUG live_done but branches_to_explore %d\0A\00", align 1
@BPF_COMPLEXITY_LIMIT_STATES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"BUG is_state_visited:branches_to_explore=%d insn %d\0A\00", align 1
@BPF_REG_6 = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i32 0, align 4
@REG_LIVE_NONE = common dso_local global i8* null, align 8
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32)* @is_state_visited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_state_visited(%struct.bpf_verifier_env* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_state_list*, align 8
  %7 = alloca %struct.bpf_verifier_state_list*, align 8
  %8 = alloca %struct.bpf_verifier_state_list**, align 8
  %9 = alloca %struct.bpf_verifier_state*, align 8
  %10 = alloca %struct.bpf_verifier_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_func_state*, align 8
  %18 = alloca %struct.bpf_func_state*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %19, i32 0, i32 12
  %21 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %20, align 8
  store %struct.bpf_verifier_state* %21, %struct.bpf_verifier_state** %9, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %15, align 4
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %29 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %32 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %33, i32 0, i32 9
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %490

43:                                               ; preds = %2
  %44 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %45 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %48 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %54 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %57 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = icmp sge i32 %59, 8
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %52, %43
  %63 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env* %63, i32 %64)
  store %struct.bpf_verifier_state_list** %65, %struct.bpf_verifier_state_list*** %8, align 8
  %66 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %8, align 8
  %67 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %66, align 8
  store %struct.bpf_verifier_state_list* %67, %struct.bpf_verifier_state_list** %7, align 8
  %68 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %71 = call i32 @clean_live_states(%struct.bpf_verifier_env* %68, i32 %69, %struct.bpf_verifier_state* %70)
  br label %72

72:                                               ; preds = %242, %238, %62
  %73 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %74 = icmp ne %struct.bpf_verifier_state_list* %73, null
  br i1 %74, label %75, label %247

75:                                               ; preds = %72
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  %78 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %79 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %242

85:                                               ; preds = %75
  %86 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %87 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %133

91:                                               ; preds = %85
  %92 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %93 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %92, i32 0, i32 3
  %94 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %95 = call i64 @states_maybe_looping(%struct.bpf_verifier_state* %93, %struct.bpf_verifier_state* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %91
  %98 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %99 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %100 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %99, i32 0, i32 3
  %101 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %102 = call i64 @states_equal(%struct.bpf_verifier_env* %98, %struct.bpf_verifier_state* %100, %struct.bpf_verifier_state* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %105, i32 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @verbose(%struct.bpf_verifier_env* %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %490

113:                                              ; preds = %97, %91
  %114 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %115 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %118 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = icmp slt i32 %120, 20
  br i1 %121, label %122, label %132

122:                                              ; preds = %113
  %123 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %124 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %127 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = icmp slt i32 %129, 100
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %131, %122, %113
  br label %175

133:                                              ; preds = %85
  %134 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %135 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %136 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %135, i32 0, i32 3
  %137 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %138 = call i64 @states_equal(%struct.bpf_verifier_env* %134, %struct.bpf_verifier_state* %136, %struct.bpf_verifier_state* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %174

140:                                              ; preds = %133
  %141 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %142 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %146 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %147 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %146, i32 0, i32 3
  %148 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %149 = call i32 @propagate_liveness(%struct.bpf_verifier_env* %145, %struct.bpf_verifier_state* %147, %struct.bpf_verifier_state* %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %157

153:                                              ; preds = %140
  %154 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %155 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %156 = call i32 @push_jmp_history(%struct.bpf_verifier_env* %154, %struct.bpf_verifier_state* %155)
  br label %157

157:                                              ; preds = %153, %152
  %158 = phi i32 [ %150, %152 ], [ %156, %153 ]
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %167

162:                                              ; preds = %157
  %163 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %164 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %165 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %164, i32 0, i32 3
  %166 = call i32 @propagate_precision(%struct.bpf_verifier_env* %163, %struct.bpf_verifier_state* %165)
  br label %167

167:                                              ; preds = %162, %161
  %168 = phi i32 [ %159, %161 ], [ %166, %162 ]
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %3, align 4
  br label %490

173:                                              ; preds = %167
  store i32 1, i32* %3, align 4
  br label %490

174:                                              ; preds = %133
  br label %175

175:                                              ; preds = %174, %132
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %180 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %178, %175
  %184 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %185 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %188 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %189, 3
  %191 = add nsw i32 %190, 3
  %192 = icmp sgt i32 %186, %191
  br i1 %192, label %193, label %241

193:                                              ; preds = %183
  %194 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %195 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %194, i32 0, i32 2
  %196 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %195, align 8
  %197 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %8, align 8
  store %struct.bpf_verifier_state_list* %196, %struct.bpf_verifier_state_list** %197, align 8
  %198 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %199 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %199, i32 0, i32 4
  %201 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %200, align 8
  %202 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %201, i64 0
  %203 = load %struct.bpf_func_state*, %struct.bpf_func_state** %202, align 8
  %204 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %203, i32 0, i32 2
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @REG_LIVE_DONE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %193
  %213 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %214 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = call i32 (i32, i8*, i32, ...) @WARN_ONCE(i32 %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  %220 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %221 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %220, i32 0, i32 3
  %222 = call i32 @free_verifier_state(%struct.bpf_verifier_state* %221, i32 0)
  %223 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %224 = call i32 @kfree(%struct.bpf_verifier_state_list* %223)
  %225 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %226 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %226, align 4
  br label %238

229:                                              ; preds = %193
  %230 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %231 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %230, i32 0, i32 8
  %232 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %231, align 8
  %233 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %234 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %233, i32 0, i32 2
  store %struct.bpf_verifier_state_list* %232, %struct.bpf_verifier_state_list** %234, align 8
  %235 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %236 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %237 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %236, i32 0, i32 8
  store %struct.bpf_verifier_state_list* %235, %struct.bpf_verifier_state_list** %237, align 8
  br label %238

238:                                              ; preds = %229, %212
  %239 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %8, align 8
  %240 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %239, align 8
  store %struct.bpf_verifier_state_list* %240, %struct.bpf_verifier_state_list** %7, align 8
  br label %72

241:                                              ; preds = %183
  br label %242

242:                                              ; preds = %241, %84
  %243 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %244 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %243, i32 0, i32 2
  store %struct.bpf_verifier_state_list** %244, %struct.bpf_verifier_state_list*** %8, align 8
  %245 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %8, align 8
  %246 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %245, align 8
  store %struct.bpf_verifier_state_list* %246, %struct.bpf_verifier_state_list** %7, align 8
  br label %72

247:                                              ; preds = %72
  %248 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %249 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %247
  %254 = load i32, i32* %14, align 4
  %255 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %256 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %253, %247
  %258 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %259 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %14, align 4
  %264 = load i32, i32* @BPF_COMPLEXITY_LIMIT_STATES, align 4
  %265 = icmp sgt i32 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %262
  %267 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %268 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %269 = call i32 @push_jmp_history(%struct.bpf_verifier_env* %267, %struct.bpf_verifier_state* %268)
  store i32 %269, i32* %3, align 4
  br label %490

270:                                              ; preds = %262, %257
  %271 = load i32, i32* %15, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %275 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %276 = call i32 @push_jmp_history(%struct.bpf_verifier_env* %274, %struct.bpf_verifier_state* %275)
  store i32 %276, i32* %3, align 4
  br label %490

277:                                              ; preds = %270
  %278 = load i32, i32* @GFP_KERNEL, align 4
  %279 = call %struct.bpf_verifier_state_list* @kzalloc(i32 56, i32 %278)
  store %struct.bpf_verifier_state_list* %279, %struct.bpf_verifier_state_list** %6, align 8
  %280 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %6, align 8
  %281 = icmp ne %struct.bpf_verifier_state_list* %280, null
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %3, align 4
  br label %490

285:                                              ; preds = %277
  %286 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %287 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 8
  %290 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %291 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %295 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %298 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %297, i32 0, i32 1
  store i32 %296, i32* %298, align 4
  %299 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %300 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %303 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 4
  %304 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %6, align 8
  %305 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %304, i32 0, i32 3
  store %struct.bpf_verifier_state* %305, %struct.bpf_verifier_state** %10, align 8
  %306 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %307 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %308 = call i32 @copy_verifier_state(%struct.bpf_verifier_state* %306, %struct.bpf_verifier_state* %307)
  store i32 %308, i32* %13, align 4
  %309 = load i32, i32* %13, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %285
  %312 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %313 = call i32 @free_verifier_state(%struct.bpf_verifier_state* %312, i32 0)
  %314 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %6, align 8
  %315 = call i32 @kfree(%struct.bpf_verifier_state_list* %314)
  %316 = load i32, i32* %13, align 4
  store i32 %316, i32* %3, align 4
  br label %490

317:                                              ; preds = %285
  %318 = load i32, i32* %5, align 4
  %319 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %320 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %322 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 1
  %325 = zext i1 %324 to i32
  %326 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %327 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %5, align 4
  %330 = call i32 (i32, i8*, i32, ...) @WARN_ONCE(i32 %325, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %328, i32 %329)
  %331 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %332 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %333 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %332, i32 0, i32 5
  store %struct.bpf_verifier_state* %331, %struct.bpf_verifier_state** %333, align 8
  %334 = load i32, i32* %5, align 4
  %335 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %336 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  %337 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %338 = call i32 @clear_jmp_history(%struct.bpf_verifier_state* %337)
  %339 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %340 = load i32, i32* %5, align 4
  %341 = call %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env* %339, i32 %340)
  %342 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %341, align 8
  %343 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %6, align 8
  %344 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %343, i32 0, i32 2
  store %struct.bpf_verifier_state_list* %342, %struct.bpf_verifier_state_list** %344, align 8
  %345 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %6, align 8
  %346 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %347 = load i32, i32* %5, align 4
  %348 = call %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env* %346, i32 %347)
  store %struct.bpf_verifier_state_list* %345, %struct.bpf_verifier_state_list** %348, align 8
  store i32 0, i32* %12, align 4
  br label %349

349:                                              ; preds = %424, %317
  %350 = load i32, i32* %12, align 4
  %351 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %352 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = icmp sle i32 %350, %353
  br i1 %354, label %355, label %427

355:                                              ; preds = %349
  %356 = load i32, i32* %12, align 4
  %357 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %358 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %355
  %362 = load i32, i32* @BPF_REG_6, align 4
  br label %364

363:                                              ; preds = %355
  br label %364

364:                                              ; preds = %363, %361
  %365 = phi i32 [ %362, %361 ], [ 0, %363 ]
  store i32 %365, i32* %11, align 4
  br label %366

366:                                              ; preds = %396, %364
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* @BPF_REG_FP, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %399

370:                                              ; preds = %366
  %371 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %372 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %371, i32 0, i32 4
  %373 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %372, align 8
  %374 = load i32, i32* %12, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %373, i64 %375
  %377 = load %struct.bpf_func_state*, %struct.bpf_func_state** %376, align 8
  %378 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %377, i32 0, i32 2
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %378, align 8
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i64 %381
  %383 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %384 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %383, i32 0, i32 4
  %385 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %384, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %385, i64 %387
  %389 = load %struct.bpf_func_state*, %struct.bpf_func_state** %388, align 8
  %390 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %389, i32 0, i32 2
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %390, align 8
  %392 = load i32, i32* %11, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 1
  store %struct.TYPE_8__* %382, %struct.TYPE_8__** %395, align 8
  br label %396

396:                                              ; preds = %370
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %11, align 4
  br label %366

399:                                              ; preds = %366
  store i32 0, i32* %11, align 4
  br label %400

400:                                              ; preds = %420, %399
  %401 = load i32, i32* %11, align 4
  %402 = load i32, i32* @BPF_REG_FP, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %423

404:                                              ; preds = %400
  %405 = load i8*, i8** @REG_LIVE_NONE, align 8
  %406 = ptrtoint i8* %405 to i32
  %407 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %408 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %407, i32 0, i32 4
  %409 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %408, align 8
  %410 = load i32, i32* %12, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %409, i64 %411
  %413 = load %struct.bpf_func_state*, %struct.bpf_func_state** %412, align 8
  %414 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %413, i32 0, i32 2
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = load i32, i32* %11, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  store i32 %406, i32* %419, align 8
  br label %420

420:                                              ; preds = %404
  %421 = load i32, i32* %11, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %11, align 4
  br label %400

423:                                              ; preds = %400
  br label %424

424:                                              ; preds = %423
  %425 = load i32, i32* %12, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %12, align 4
  br label %349

427:                                              ; preds = %349
  store i32 0, i32* %12, align 4
  br label %428

428:                                              ; preds = %486, %427
  %429 = load i32, i32* %12, align 4
  %430 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %431 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp sle i32 %429, %432
  br i1 %433, label %434, label %489

434:                                              ; preds = %428
  %435 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %9, align 8
  %436 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %435, i32 0, i32 4
  %437 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %436, align 8
  %438 = load i32, i32* %12, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %437, i64 %439
  %441 = load %struct.bpf_func_state*, %struct.bpf_func_state** %440, align 8
  store %struct.bpf_func_state* %441, %struct.bpf_func_state** %17, align 8
  %442 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %443 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %442, i32 0, i32 4
  %444 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %443, align 8
  %445 = load i32, i32* %12, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %444, i64 %446
  %448 = load %struct.bpf_func_state*, %struct.bpf_func_state** %447, align 8
  store %struct.bpf_func_state* %448, %struct.bpf_func_state** %18, align 8
  store i32 0, i32* %11, align 4
  br label %449

449:                                              ; preds = %482, %434
  %450 = load i32, i32* %11, align 4
  %451 = load %struct.bpf_func_state*, %struct.bpf_func_state** %17, align 8
  %452 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @BPF_REG_SIZE, align 4
  %455 = sdiv i32 %453, %454
  %456 = icmp slt i32 %450, %455
  br i1 %456, label %457, label %485

457:                                              ; preds = %449
  %458 = load i8*, i8** @REG_LIVE_NONE, align 8
  %459 = load %struct.bpf_func_state*, %struct.bpf_func_state** %17, align 8
  %460 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %459, i32 0, i32 1
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %460, align 8
  %462 = load i32, i32* %11, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 1
  store i8* %458, i8** %466, align 8
  %467 = load %struct.bpf_func_state*, %struct.bpf_func_state** %18, align 8
  %468 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %467, i32 0, i32 1
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %468, align 8
  %470 = load i32, i32* %11, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 0
  %474 = load %struct.bpf_func_state*, %struct.bpf_func_state** %17, align 8
  %475 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %474, i32 0, i32 1
  %476 = load %struct.TYPE_6__*, %struct.TYPE_6__** %475, align 8
  %477 = load i32, i32* %11, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 0
  store %struct.TYPE_5__* %473, %struct.TYPE_5__** %481, align 8
  br label %482

482:                                              ; preds = %457
  %483 = load i32, i32* %11, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %11, align 4
  br label %449

485:                                              ; preds = %449
  br label %486

486:                                              ; preds = %485
  %487 = load i32, i32* %12, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %12, align 4
  br label %428

489:                                              ; preds = %428
  store i32 0, i32* %3, align 4
  br label %490

490:                                              ; preds = %489, %311, %282, %273, %266, %173, %171, %104, %42
  %491 = load i32, i32* %3, align 4
  ret i32 %491
}

declare dso_local %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @clean_live_states(%struct.bpf_verifier_env*, i32, %struct.bpf_verifier_state*) #1

declare dso_local i64 @states_maybe_looping(%struct.bpf_verifier_state*, %struct.bpf_verifier_state*) #1

declare dso_local i64 @states_equal(%struct.bpf_verifier_env*, %struct.bpf_verifier_state*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @verbose_linfo(%struct.bpf_verifier_env*, i32, i8*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32) #1

declare dso_local i32 @propagate_liveness(%struct.bpf_verifier_env*, %struct.bpf_verifier_state*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @push_jmp_history(%struct.bpf_verifier_env*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @propagate_precision(%struct.bpf_verifier_env*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, ...) #1

declare dso_local i32 @free_verifier_state(%struct.bpf_verifier_state*, i32) #1

declare dso_local i32 @kfree(%struct.bpf_verifier_state_list*) #1

declare dso_local %struct.bpf_verifier_state_list* @kzalloc(i32, i32) #1

declare dso_local i32 @copy_verifier_state(%struct.bpf_verifier_state*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @clear_jmp_history(%struct.bpf_verifier_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
