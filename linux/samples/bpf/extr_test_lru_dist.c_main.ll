; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@BPF_F_NO_COMMON_LRU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Usage: %s <dist-file> <lru-size> <nr-tasks>\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@nr_cpus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nr_cpus:%d\0A\0A\00", align 1
@dist_keys = common dso_local global i32 0, align 4
@dist_key_counts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%s has no key\0A\00", align 1
@BPF_MAP_TYPE_LRU_HASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %13 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %15 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* @BPF_F_NO_COMMON_LRU, align 4
  store i32 %18, i32* %17, align 4
  store i32 1, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %3, align 4
  br label %105

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @setbuf(i32 %38, i32* null)
  %40 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %41 = call i32 @setrlimit(i32 %40, %struct.rlimit* %6)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 @time(i32* null)
  %47 = call i32 @srand(i32 %46)
  %48 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %48, i32* @nr_cpus, align 4
  %49 = load i32, i32* @nr_cpus, align 4
  %50 = icmp ne i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @nr_cpus, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @nr_cpus, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @read_keys(i8* %58, i32* @dist_keys)
  store i32 %59, i32* @dist_key_counts, align 4
  %60 = load i32, i32* @dist_key_counts, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %26
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  store i32 -1, i32* %3, align 4
  br label %105

65:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 2
  br i1 %69, label %70, label %102

70:                                               ; preds = %66
  %71 = load i32, i32* @BPF_MAP_TYPE_LRU_HASH, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @test_lru_loss0(i32 %71, i32 %75)
  %77 = load i32, i32* @BPF_MAP_TYPE_LRU_HASH, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @test_lru_loss1(i32 %77, i32 %81)
  %83 = load i32, i32* @BPF_MAP_TYPE_LRU_HASH, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @test_parallel_lru_loss(i32 %83, i32 %87, i32 %88)
  %90 = load i32, i32* @BPF_MAP_TYPE_LRU_HASH, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @test_parallel_lru_dist(i32 %90, i32 %94, i32 %95, i32 %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %70
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %66

102:                                              ; preds = %66
  %103 = load i32, i32* @dist_keys, align 4
  %104 = call i32 @free(i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %62, %21
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @bpf_num_possible_cpus(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @read_keys(i8*, i32*) #1

declare dso_local i32 @test_lru_loss0(i32, i32) #1

declare dso_local i32 @test_lru_loss1(i32, i32) #1

declare dso_local i32 @test_parallel_lru_loss(i32, i32, i32) #1

declare dso_local i32 @test_parallel_lru_dist(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
