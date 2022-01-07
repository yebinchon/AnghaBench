; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_prog_load_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_prog_load_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }

@map_fd = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to create map '%s'\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_CGROUP_STORAGE = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_REG_10 = common dso_local global i32 0, align 4
@BPF_REG_2 = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_FUNC_map_lookup_elem = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@BPF_STX = common dso_local global i32 0, align 4
@BPF_XADD = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@BPF_FUNC_get_local_storage = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Loading program\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Output from verifier:\0A%s\0A-------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @prog_load_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_load_cnt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [22 x %struct.bpf_insn], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @map_fd, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @BPF_MAP_TYPE_ARRAY, align 4
  %15 = call i8* @bpf_create_map(i32 %14, i32 4, i32 8, i32 1, i32 0)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* @map_fd, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i64, i64* @map_fd, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %3, align 4
  br label %186

24:                                               ; preds = %17
  %25 = load i32, i32* @BPF_MAP_TYPE_CGROUP_STORAGE, align 4
  %26 = call i8* @bpf_create_map(i32 %25, i32 4, i32 8, i32 0, i32 0)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %3, align 4
  br label %186

34:                                               ; preds = %24
  %35 = load i32, i32* @BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE, align 4
  %36 = call i8* @bpf_create_map(i32 %35, i32 4, i32 8, i32 0, i32 0)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @strerror(i32 %41)
  %43 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %3, align 4
  br label %186

44:                                               ; preds = %34
  %45 = getelementptr inbounds [22 x %struct.bpf_insn], [22 x %struct.bpf_insn]* %8, i64 0, i64 0
  %46 = load i32, i32* @BPF_REG_0, align 4
  %47 = call i32 @BPF_MOV32_IMM(i32 %46, i32 0)
  %48 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %45, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %45, i64 1
  %50 = load i32, i32* @BPF_W, align 4
  %51 = load i32, i32* @BPF_REG_10, align 4
  %52 = load i32, i32* @BPF_REG_0, align 4
  %53 = call i32 @BPF_STX_MEM(i32 %50, i32 %51, i32 %52, i32 -4)
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %49, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %49, i64 1
  %56 = load i32, i32* @BPF_REG_2, align 4
  %57 = load i32, i32* @BPF_REG_10, align 4
  %58 = call i32 @BPF_MOV64_REG(i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %55, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %55, i64 1
  %61 = load i32, i32* @BPF_ADD, align 4
  %62 = load i32, i32* @BPF_REG_2, align 4
  %63 = call i32 @BPF_ALU64_IMM(i32 %61, i32 %62, i32 -4)
  %64 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %60, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %60, i64 1
  %66 = load i32, i32* @BPF_REG_1, align 4
  %67 = load i64, i64* @map_fd, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @BPF_LD_MAP_FD(i32 %66, i32 %68)
  %70 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %65, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %65, i64 1
  %72 = load i32, i32* @BPF_JMP, align 4
  %73 = load i32, i32* @BPF_CALL, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %76 = call i32 @BPF_RAW_INSN(i32 %74, i32 0, i32 0, i32 0, i32 %75)
  %77 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %71, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %71, i64 1
  %79 = load i32, i32* @BPF_JEQ, align 4
  %80 = load i32, i32* @BPF_REG_0, align 4
  %81 = call i32 @BPF_JMP_IMM(i32 %79, i32 %80, i32 0, i32 2)
  %82 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %78, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %78, i64 1
  %84 = load i32, i32* @BPF_REG_1, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @BPF_MOV64_IMM(i32 %84, i32 %85)
  %87 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %83, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %83, i64 1
  %89 = load i32, i32* @BPF_STX, align 4
  %90 = load i32, i32* @BPF_XADD, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @BPF_DW, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @BPF_REG_0, align 4
  %95 = load i32, i32* @BPF_REG_1, align 4
  %96 = call i32 @BPF_RAW_INSN(i32 %93, i32 %94, i32 %95, i32 0, i32 0)
  %97 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %88, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %88, i64 1
  %99 = load i32, i32* @BPF_REG_1, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @BPF_LD_MAP_FD(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i64 1
  %104 = load i32, i32* @BPF_REG_2, align 4
  %105 = call i32 @BPF_MOV64_IMM(i32 %104, i32 0)
  %106 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %103, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %103, i64 1
  %108 = load i32, i32* @BPF_JMP, align 4
  %109 = load i32, i32* @BPF_CALL, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @BPF_FUNC_get_local_storage, align 4
  %112 = call i32 @BPF_RAW_INSN(i32 %110, i32 0, i32 0, i32 0, i32 %111)
  %113 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %107, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %107, i64 1
  %115 = load i32, i32* @BPF_REG_1, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @BPF_MOV64_IMM(i32 %115, i32 %116)
  %118 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i64 1
  %120 = load i32, i32* @BPF_STX, align 4
  %121 = load i32, i32* @BPF_XADD, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @BPF_W, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @BPF_REG_0, align 4
  %126 = load i32, i32* @BPF_REG_1, align 4
  %127 = call i32 @BPF_RAW_INSN(i32 %124, i32 %125, i32 %126, i32 0, i32 0)
  %128 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %119, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %119, i64 1
  %130 = load i32, i32* @BPF_REG_1, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @BPF_LD_MAP_FD(i32 %130, i32 %131)
  %133 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %129, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %129, i64 1
  %135 = load i32, i32* @BPF_REG_2, align 4
  %136 = call i32 @BPF_MOV64_IMM(i32 %135, i32 0)
  %137 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %134, i32 0, i32 0
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %134, i64 1
  %139 = load i32, i32* @BPF_JMP, align 4
  %140 = load i32, i32* @BPF_CALL, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @BPF_FUNC_get_local_storage, align 4
  %143 = call i32 @BPF_RAW_INSN(i32 %141, i32 0, i32 0, i32 0, i32 %142)
  %144 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %138, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %138, i64 1
  %146 = load i32, i32* @BPF_W, align 4
  %147 = load i32, i32* @BPF_REG_3, align 4
  %148 = load i32, i32* @BPF_REG_0, align 4
  %149 = call i32 @BPF_LDX_MEM(i32 %146, i32 %147, i32 %148, i32 0)
  %150 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %145, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %145, i64 1
  %152 = load i32, i32* @BPF_ADD, align 4
  %153 = load i32, i32* @BPF_REG_3, align 4
  %154 = call i32 @BPF_ALU64_IMM(i32 %152, i32 %153, i32 1)
  %155 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %151, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %151, i64 1
  %157 = load i32, i32* @BPF_W, align 4
  %158 = load i32, i32* @BPF_REG_0, align 4
  %159 = load i32, i32* @BPF_REG_3, align 4
  %160 = call i32 @BPF_STX_MEM(i32 %157, i32 %158, i32 %159, i32 0)
  %161 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %156, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %156, i64 1
  %163 = load i32, i32* @BPF_REG_0, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @BPF_MOV64_IMM(i32 %163, i32 %164)
  %166 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %162, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %162, i64 1
  %168 = call i32 (...) @BPF_EXIT_INSN()
  %169 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %167, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  store i64 22, i64* %9, align 8
  %170 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  %171 = getelementptr inbounds [22 x %struct.bpf_insn], [22 x %struct.bpf_insn]* %8, i64 0, i64 0
  %172 = load i64, i64* %9, align 8
  %173 = load i8*, i8** @bpf_log_buf, align 8
  %174 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  %175 = call i32 @bpf_load_program(i32 %170, %struct.bpf_insn* %171, i64 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %173, i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %44
  %179 = call i32 @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %180 = load i8*, i8** @bpf_log_buf, align 8
  %181 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %180)
  store i32 0, i32* %3, align 4
  br label %186

182:                                              ; preds = %44
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @close(i32 %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %178, %40, %30, %20
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i8* @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @BPF_MOV32_IMM(i32, i32) #1

declare dso_local i32 @BPF_STX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_LD_MAP_FD(i32, i32) #1

declare dso_local i32 @BPF_RAW_INSN(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_MOV64_IMM(i32, i32) #1

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @bpf_load_program(i32, %struct.bpf_insn*, i64, i8*, i32, i8*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
