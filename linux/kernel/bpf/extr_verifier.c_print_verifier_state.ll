; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_print_verifier_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_print_verifier_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_func_state = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.bpf_reg_state*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64*, %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_10__, i64, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" frame%d:\00", align 1
@MAX_BPF_REG = common dso_local global i32 0, align 4
@NOT_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" R%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"=%s\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@SCALAR_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@PTR_TO_STACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(id=%d\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c",ref_obj_id=%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",off=%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c",r=%d\00", align 1
@CONST_PTR_TO_MAP = common dso_local global i32 0, align 4
@PTR_TO_MAP_VALUE = common dso_local global i32 0, align 4
@PTR_TO_MAP_VALUE_OR_NULL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c",ks=%d,vs=%d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c",imm=%llx\00", align 1
@S64_MIN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c",smin_value=%lld\00", align 1
@S64_MAX = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c",smax_value=%lld\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c",umin_value=%llu\00", align 1
@U64_MAX = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c",umax_value=%llu\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c",var_off=%s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_INVALID = common dso_local global i64 0, align 8
@slot_type_char = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c" fp%d\00", align 1
@STACK_SPILL = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c" refs=%d\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_func_state*)* @print_verifier_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_verifier_state(%struct.bpf_verifier_env* %0, %struct.bpf_func_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_func_state*, align 8
  %5 = alloca %struct.bpf_reg_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [48 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %4, align 8
  %14 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %20 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %21 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %18, %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %256, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAX_BPF_REG, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %259

29:                                               ; preds = %25
  %30 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %30, i32 0, i32 4
  %32 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %32, i64 %34
  store %struct.bpf_reg_state* %35, %struct.bpf_reg_state** %5, align 8
  %36 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %37 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @NOT_INIT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %256

43:                                               ; preds = %29
  %44 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %49 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @print_liveness(%struct.bpf_verifier_env* %47, i32 %50)
  %52 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %53 = load i32*, i32** @reg_type_str, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SCALAR_VALUE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %43
  %63 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %64 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %69 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %62, %43
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SCALAR_VALUE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @PTR_TO_STACK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74, %70
  %79 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %80 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @tnum_is_const(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %87 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %88 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %92 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %255

96:                                               ; preds = %78, %74
  %97 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %98 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %99 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @reg_type_may_be_refcounted_or_null(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %107 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %108 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %96
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @SCALAR_VALUE, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %117 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %118 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115, %111
  %122 = load i32, i32* %6, align 4
  %123 = call i64 @type_is_pkt_pointer(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %127 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %128 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %157

131:                                              ; preds = %121
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @CONST_PTR_TO_MAP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @PTR_TO_MAP_VALUE_OR_NULL, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %139, %135, %131
  %144 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %145 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %146 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %145, i32 0, i32 9
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %151 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %150, i32 0, i32 9
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %149, i32 %154)
  br label %156

156:                                              ; preds = %143, %139
  br label %157

157:                                              ; preds = %156, %125
  %158 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %159 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @tnum_is_const(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %166 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %167 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %169)
  br label %252

171:                                              ; preds = %157
  %172 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %173 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %176 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %171
  %180 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %181 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @S64_MIN, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %187 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %188 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %189)
  br label %191

191:                                              ; preds = %185, %179, %171
  %192 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %193 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %196 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %194, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %191
  %200 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %201 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @S64_MAX, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %207 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %208 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i64 %209)
  br label %211

211:                                              ; preds = %205, %199, %191
  %212 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %213 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %218 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %219 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i64 %220)
  br label %222

222:                                              ; preds = %216, %211
  %223 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %224 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @U64_MAX, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %222
  %229 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %230 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %231 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %232)
  br label %234

234:                                              ; preds = %228, %222
  %235 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %236 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @tnum_is_unknown(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %251, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %243 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %244 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @tnum_strn(i8* %242, i32 48, i32 %246)
  %248 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %249 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %250 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %241, %234
  br label %252

252:                                              ; preds = %251, %164
  %253 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %254 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %253, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %85
  br label %256

256:                                              ; preds = %255, %42
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %25

259:                                              ; preds = %25
  store i32 0, i32* %7, align 4
  br label %260

260:                                              ; preds = %414, %259
  %261 = load i32, i32* %7, align 4
  %262 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %263 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @BPF_REG_SIZE, align 4
  %266 = sdiv i32 %264, %265
  %267 = icmp slt i32 %261, %266
  br i1 %267, label %268, label %417

268:                                              ; preds = %260
  %269 = load i32, i32* @BPF_REG_SIZE, align 4
  %270 = add nsw i32 %269, 1
  %271 = zext i32 %270 to i64
  %272 = call i8* @llvm.stacksave()
  store i8* %272, i8** %9, align 8
  %273 = alloca i8, i64 %271, align 16
  store i64 %271, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %274

274:                                              ; preds = %313, %268
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* @BPF_REG_SIZE, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %316

278:                                              ; preds = %274
  %279 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %280 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %279, i32 0, i32 3
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i64*, i64** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @STACK_INVALID, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %278
  store i32 1, i32* %11, align 4
  br label %294

294:                                              ; preds = %293, %278
  %295 = load i8*, i8** @slot_type_char, align 8
  %296 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %297 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %296, i32 0, i32 3
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 8
  %299 = load i32, i32* %7, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds i8, i8* %295, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = load i32, i32* %12, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %273, i64 %311
  store i8 %309, i8* %312, align 1
  br label %313

313:                                              ; preds = %294
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %12, align 4
  br label %274

316:                                              ; preds = %274
  %317 = load i32, i32* @BPF_REG_SIZE, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %273, i64 %318
  store i8 0, i8* %319, align 1
  %320 = load i32, i32* %11, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %316
  store i32 7, i32* %13, align 4
  br label %410

323:                                              ; preds = %316
  %324 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sub nsw i32 0, %325
  %327 = sub nsw i32 %326, 1
  %328 = load i32, i32* @BPF_REG_SIZE, align 4
  %329 = mul nsw i32 %327, %328
  %330 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %329)
  %331 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %332 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %333 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %332, i32 0, i32 3
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @print_liveness(%struct.bpf_verifier_env* %331, i32 %340)
  %342 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %343 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %342, i32 0, i32 3
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %343, align 8
  %345 = load i32, i32* %7, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load i64*, i64** %348, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @STACK_SPILL, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %406

354:                                              ; preds = %323
  %355 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %356 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %355, i32 0, i32 3
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %356, align 8
  %358 = load i32, i32* %7, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 1
  store %struct.bpf_reg_state* %361, %struct.bpf_reg_state** %5, align 8
  %362 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %363 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* %6, align 4
  %365 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %366 = load i32*, i32** @reg_type_str, align 8
  %367 = load i32, i32* %6, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %365, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* %6, align 4
  %373 = load i32, i32* @SCALAR_VALUE, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %383

375:                                              ; preds = %354
  %376 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %377 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %376, i32 0, i32 7
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %382 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %381, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %375, %354
  %384 = load i32, i32* %6, align 4
  %385 = load i32, i32* @SCALAR_VALUE, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %405

387:                                              ; preds = %383
  %388 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %389 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %388, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i64 @tnum_is_const(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %405

394:                                              ; preds = %387
  %395 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %396 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %397 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %396, i32 0, i32 6
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %401 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %399, %402
  %404 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %395, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %403)
  br label %405

405:                                              ; preds = %394, %387, %383
  br label %409

406:                                              ; preds = %323
  %407 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %408 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %273)
  br label %409

409:                                              ; preds = %406, %405
  store i32 0, i32* %13, align 4
  br label %410

410:                                              ; preds = %409, %322
  %411 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %411)
  %412 = load i32, i32* %13, align 4
  switch i32 %412, label %474 [
    i32 0, label %413
    i32 7, label %414
  ]

413:                                              ; preds = %410
  br label %414

414:                                              ; preds = %413, %410
  %415 = load i32, i32* %7, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %7, align 4
  br label %260

417:                                              ; preds = %260
  %418 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %419 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %471

422:                                              ; preds = %417
  %423 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %424 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %423, i32 0, i32 2
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i64 0
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %471

430:                                              ; preds = %422
  %431 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %432 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %433 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %432, i32 0, i32 2
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i64 0
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %431, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %437)
  store i32 1, i32* %7, align 4
  br label %439

439:                                              ; preds = %467, %430
  %440 = load i32, i32* %7, align 4
  %441 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %442 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = icmp slt i32 %440, %443
  br i1 %444, label %445, label %470

445:                                              ; preds = %439
  %446 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %447 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %446, i32 0, i32 2
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %447, align 8
  %449 = load i32, i32* %7, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %466

455:                                              ; preds = %445
  %456 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %457 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %458 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %457, i32 0, i32 2
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %458, align 8
  %460 = load i32, i32* %7, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %456, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %464)
  br label %466

466:                                              ; preds = %455, %445
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %7, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %7, align 4
  br label %439

470:                                              ; preds = %439
  br label %471

471:                                              ; preds = %470, %422, %417
  %472 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %473 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %472, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  ret void

474:                                              ; preds = %410
  unreachable
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @print_liveness(%struct.bpf_verifier_env*, i32) #1

declare dso_local i64 @tnum_is_const(i32) #1

declare dso_local i64 @reg_type_may_be_refcounted_or_null(i32) #1

declare dso_local i64 @type_is_pkt_pointer(i32) #1

declare dso_local i32 @tnum_is_unknown(i32) #1

declare dso_local i32 @tnum_strn(i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
