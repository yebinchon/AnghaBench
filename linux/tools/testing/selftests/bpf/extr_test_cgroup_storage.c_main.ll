; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_storage.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_storage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.bpf_cgroup_storage_key = type { i32 }

@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_2 = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_FUNC_get_local_storage = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_AND = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Not enough memory for per-cpu area (%d cpus)\0A\00", align 1
@BPF_MAP_TYPE_CGROUP_STORAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to create map: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to load bpf program: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to setup cgroup environment\0A\00", align 1
@TEST_CGROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to create test cgroup\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to join cgroup\0A\00", align 1
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to attach bpf program\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Failed to get the first key in cgroup storage\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to lookup cgroup storage 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Failed to update the data in the cgroup storage\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"ping localhost -c 1 -W 1 -q > /dev/null\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Failed to lookup cgroup storage\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Unexpected data in the cgroup storage: %llu\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Failed to lookup the cgroup storage\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Failed to lookup the per-cpu cgroup storage\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Unexpected data in the per-cpu cgroup storage\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"test_cgroup_storage:PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [15 x %struct.bpf_insn], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_cgroup_storage_key, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = getelementptr inbounds [15 x %struct.bpf_insn], [15 x %struct.bpf_insn]* %6, i64 0, i64 0
  %19 = load i32, i32* @BPF_REG_1, align 4
  %20 = call i32 @BPF_LD_MAP_FD(i32 %19, i32 0)
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i64 1
  %23 = load i32, i32* @BPF_REG_2, align 4
  %24 = call i32 @BPF_MOV64_IMM(i32 %23, i32 0)
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %22, i64 1
  %27 = load i32, i32* @BPF_JMP, align 4
  %28 = load i32, i32* @BPF_CALL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BPF_FUNC_get_local_storage, align 4
  %31 = call i32 @BPF_RAW_INSN(i32 %29, i32 0, i32 0, i32 0, i32 %30)
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %26, i64 1
  %34 = load i32, i32* @BPF_DW, align 4
  %35 = load i32, i32* @BPF_REG_3, align 4
  %36 = load i32, i32* @BPF_REG_0, align 4
  %37 = call i32 @BPF_LDX_MEM(i32 %34, i32 %35, i32 %36, i32 0)
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %33, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %33, i64 1
  %40 = load i32, i32* @BPF_ADD, align 4
  %41 = load i32, i32* @BPF_REG_3, align 4
  %42 = call i32 @BPF_ALU64_IMM(i32 %40, i32 %41, i32 1)
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %39, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %39, i64 1
  %45 = load i32, i32* @BPF_DW, align 4
  %46 = load i32, i32* @BPF_REG_0, align 4
  %47 = load i32, i32* @BPF_REG_3, align 4
  %48 = call i32 @BPF_STX_MEM(i32 %45, i32 %46, i32 %47, i32 0)
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i64 1
  %51 = load i32, i32* @BPF_REG_1, align 4
  %52 = call i32 @BPF_LD_MAP_FD(i32 %51, i32 0)
  %53 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %50, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %50, i64 1
  %55 = load i32, i32* @BPF_REG_2, align 4
  %56 = call i32 @BPF_MOV64_IMM(i32 %55, i32 0)
  %57 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %54, i64 1
  %59 = load i32, i32* @BPF_JMP, align 4
  %60 = load i32, i32* @BPF_CALL, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @BPF_FUNC_get_local_storage, align 4
  %63 = call i32 @BPF_RAW_INSN(i32 %61, i32 0, i32 0, i32 0, i32 %62)
  %64 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %58, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %58, i64 1
  %66 = load i32, i32* @BPF_REG_1, align 4
  %67 = call i32 @BPF_MOV64_IMM(i32 %66, i32 1)
  %68 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %65, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %65, i64 1
  %70 = load i32, i32* @BPF_DW, align 4
  %71 = load i32, i32* @BPF_REG_0, align 4
  %72 = load i32, i32* @BPF_REG_1, align 4
  %73 = call i32 @BPF_STX_XADD(i32 %70, i32 %71, i32 %72, i32 0)
  %74 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %69, i64 1
  %76 = load i32, i32* @BPF_DW, align 4
  %77 = load i32, i32* @BPF_REG_1, align 4
  %78 = load i32, i32* @BPF_REG_0, align 4
  %79 = call i32 @BPF_LDX_MEM(i32 %76, i32 %77, i32 %78, i32 0)
  %80 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i64 1
  %82 = load i32, i32* @BPF_AND, align 4
  %83 = load i32, i32* @BPF_REG_1, align 4
  %84 = call i32 @BPF_ALU64_IMM(i32 %82, i32 %83, i32 1)
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i64 1
  %87 = load i32, i32* @BPF_REG_0, align 4
  %88 = load i32, i32* @BPF_REG_1, align 4
  %89 = call i32 @BPF_MOV64_REG(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %86, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %86, i64 1
  %92 = call i32 (...) @BPF_EXIT_INSN()
  %93 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %91, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  store i64 15, i64* %7, align 8
  %94 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %94, i32* %8, align 4
  %95 = call i32 (...) @get_nprocs_conf()
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 8, %97
  %99 = trunc i64 %98 to i32
  %100 = call i64* @malloc(i32 %99)
  store i64* %100, i64** %15, align 8
  %101 = load i64*, i64** %15, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %2
  %104 = load i32, i32* %17, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %299

106:                                              ; preds = %2
  %107 = load i32, i32* @BPF_MAP_TYPE_CGROUP_STORAGE, align 4
  %108 = call i32 @bpf_create_map(i32 %107, i32 4, i32 8, i32 0, i32 0)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @errno, align 4
  %113 = call i8* @strerror(i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  br label %303

115:                                              ; preds = %106
  %116 = load i32, i32* @BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE, align 4
  %117 = call i32 @bpf_create_map(i32 %116, i32 4, i32 8, i32 0, i32 0)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @errno, align 4
  %122 = call i8* @strerror(i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  br label %303

124:                                              ; preds = %115
  %125 = load i32, i32* %10, align 4
  %126 = getelementptr inbounds [15 x %struct.bpf_insn], [15 x %struct.bpf_insn]* %6, i64 0, i64 0
  %127 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 16
  %128 = load i32, i32* %9, align 4
  %129 = getelementptr inbounds [15 x %struct.bpf_insn], [15 x %struct.bpf_insn]* %6, i64 0, i64 7
  %130 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  %132 = getelementptr inbounds [15 x %struct.bpf_insn], [15 x %struct.bpf_insn]* %6, i64 0, i64 0
  %133 = load i64, i64* %7, align 8
  %134 = load i8*, i8** @bpf_log_buf, align 8
  %135 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  %136 = call i32 @bpf_load_program(i32 %131, %struct.bpf_insn* %132, i64 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* %134, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %124
  %140 = load i8*, i8** @bpf_log_buf, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %303

142:                                              ; preds = %124
  %143 = call i64 (...) @setup_cgroup_environment()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %299

147:                                              ; preds = %142
  %148 = load i32, i32* @TEST_CGROUP, align 4
  %149 = call i32 @create_and_get_cgroup(i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %299

154:                                              ; preds = %147
  %155 = load i32, i32* @TEST_CGROUP, align 4
  %156 = call i64 @join_cgroup(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %299

160:                                              ; preds = %154
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %164 = call i64 @bpf_prog_attach(i32 %161, i32 %162, i32 %163, i32 0)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %299

168:                                              ; preds = %160
  %169 = load i32, i32* %9, align 4
  %170 = call i64 @bpf_map_get_next_key(i32 %169, i32* null, %struct.bpf_cgroup_storage_key* %13)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %299

174:                                              ; preds = %168
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @bpf_map_lookup_elem(i32 %175, %struct.bpf_cgroup_storage_key* %13, i64* %14)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %299

180:                                              ; preds = %174
  store i32 0, i32* %16, align 4
  br label %181

181:                                              ; preds = %190, %180
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load i64*, i64** %15, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  store i64 1000, i64* %189, align 8
  br label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %181

193:                                              ; preds = %181
  %194 = load i32, i32* %10, align 4
  %195 = load i64*, i64** %15, align 8
  %196 = call i64 @bpf_map_update_elem(i32 %194, %struct.bpf_cgroup_storage_key* %13, i64* %195, i32 0)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %299

200:                                              ; preds = %193
  %201 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %206 = call i32 @assert(i32 %205)
  %207 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %208 = icmp eq i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i32, i32* %9, align 4
  %212 = call i64 @bpf_map_lookup_elem(i32 %211, %struct.bpf_cgroup_storage_key* %13, i64* %14)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %200
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %299

216:                                              ; preds = %200
  %217 = load i64, i64* %14, align 8
  %218 = icmp ne i64 %217, 3
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %14, align 8
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i64 %220)
  br label %299

222:                                              ; preds = %216
  %223 = load i64, i64* %14, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %14, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i64 @bpf_map_update_elem(i32 %225, %struct.bpf_cgroup_storage_key* %13, i64* %14, i32 0)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %299

230:                                              ; preds = %222
  %231 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %232 = icmp eq i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %236 = call i32 @assert(i32 %235)
  %237 = call i32 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load i32, i32* %9, align 4
  %242 = call i64 @bpf_map_lookup_elem(i32 %241, %struct.bpf_cgroup_storage_key* %13, i64* %14)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %230
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %299

246:                                              ; preds = %230
  %247 = load i64, i64* %14, align 8
  %248 = icmp ne i64 %247, 7
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i64, i64* %14, align 8
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i64 %250)
  br label %299

252:                                              ; preds = %246
  store i32 0, i32* %16, align 4
  br label %253

253:                                              ; preds = %262, %252
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %253
  %258 = load i64*, i64** %15, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  store i64 0, i64* %261, align 8
  br label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %16, align 4
  br label %253

265:                                              ; preds = %253
  %266 = load i32, i32* %10, align 4
  %267 = load i64*, i64** %15, align 8
  %268 = call i64 @bpf_map_lookup_elem(i32 %266, %struct.bpf_cgroup_storage_key* %13, i64* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  br label %299

272:                                              ; preds = %265
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %273

273:                                              ; preds = %285, %272
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* %17, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %273
  %278 = load i64*, i64** %15, align 8
  %279 = load i32, i32* %16, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %14, align 8
  %284 = add i64 %283, %282
  store i64 %284, i64* %14, align 8
  br label %285

285:                                              ; preds = %277
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %16, align 4
  br label %273

288:                                              ; preds = %273
  %289 = load i64, i64* %14, align 8
  %290 = load i32, i32* %17, align 4
  %291 = mul nsw i32 %290, 1000
  %292 = add nsw i32 %291, 6
  %293 = sext i32 %292 to i64
  %294 = icmp ne i64 %289, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  br label %299

297:                                              ; preds = %288
  store i32 0, i32* %8, align 4
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %295, %270, %249, %244, %228, %219, %214, %198, %178, %172, %166, %158, %152, %145, %103
  %300 = call i32 (...) @cleanup_cgroup_environment()
  %301 = load i64*, i64** %15, align 8
  %302 = call i32 @free(i64* %301)
  br label %303

303:                                              ; preds = %299, %139, %120, %111
  %304 = load i32, i32* %8, align 4
  ret i32 %304
}

declare dso_local i32 @BPF_LD_MAP_FD(i32, i32) #1

declare dso_local i32 @BPF_MOV64_IMM(i32, i32) #1

declare dso_local i32 @BPF_RAW_INSN(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_STX_XADD(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @get_nprocs_conf(...) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @bpf_load_program(i32, %struct.bpf_insn*, i64, i8*, i32, i8*, i32) #1

declare dso_local i64 @setup_cgroup_environment(...) #1

declare dso_local i32 @create_and_get_cgroup(i32) #1

declare dso_local i64 @join_cgroup(i32) #1

declare dso_local i64 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i32*, %struct.bpf_cgroup_storage_key*) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, %struct.bpf_cgroup_storage_key*, i64*) #1

declare dso_local i64 @bpf_map_update_elem(i32, %struct.bpf_cgroup_storage_key*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @cleanup_cgroup_environment(...) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
