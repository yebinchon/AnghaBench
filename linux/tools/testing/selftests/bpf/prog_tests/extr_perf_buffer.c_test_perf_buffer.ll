; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_perf_buffer.c_test_perf_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_perf_buffer.c_test_perf_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer_opts = type { i32*, i32 }
%struct.bpf_map = type { i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i32 }
%struct.perf_buffer = type { i32 }
%struct.bpf_link = type opaque

@.str = private unnamed_addr constant [21 x i8] c"kprobe/sys_nanosleep\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"./test_perf_buffer.o\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"nr_cpus\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@BPF_PROG_TYPE_KPROBE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"obj_load\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"find_probe\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"prog '%s' not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"perf_buf_map\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"find_perf_buf_map\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"not found\0A\00", align 1
@SYS_NANOSLEEP_KPROBE_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"attach_kprobe\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"err %ld\0A\00", align 1
@on_sample = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"perf_buf__new\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"set_affinity\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"cpu #%d, err %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"perf_buffer__poll\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"seen_cpu_cnt\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"expect %d, seen %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_perf_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_buffer_opts, align 8
  %9 = alloca %struct.bpf_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_program*, align 8
  %13 = alloca %struct.bpf_object*, align 8
  %14 = alloca %struct.perf_buffer*, align 8
  %15 = alloca %struct.bpf_link*, align 8
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %16 = bitcast %struct.perf_buffer_opts* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = call i32 (...) @libbpf_num_possible_cpus()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  br label %142

25:                                               ; preds = %0
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @BPF_PROG_TYPE_KPROBE, align 4
  %28 = call i32 @bpf_prog_load(i8* %26, i32 %27, %struct.bpf_object** %13, i32* %2)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %142

35:                                               ; preds = %25
  %36 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %36, i8* %37)
  store %struct.bpf_program* %38, %struct.bpf_program** %12, align 8
  %39 = load %struct.bpf_program*, %struct.bpf_program** %12, align 8
  %40 = icmp ne %struct.bpf_program* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %139

47:                                               ; preds = %35
  %48 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %49 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store %struct.bpf_map* %49, %struct.bpf_map** %9, align 8
  %50 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %51 = icmp ne %struct.bpf_map* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %139

57:                                               ; preds = %47
  %58 = load %struct.bpf_program*, %struct.bpf_program** %12, align 8
  %59 = load i32, i32* @SYS_NANOSLEEP_KPROBE_NAME, align 4
  %60 = call %struct.perf_buffer* @bpf_program__attach_kprobe(%struct.bpf_program* %58, i32 0, i32 %59)
  %61 = bitcast %struct.perf_buffer* %60 to %struct.bpf_link*
  store %struct.bpf_link* %61, %struct.bpf_link** %15, align 8
  %62 = load %struct.bpf_link*, %struct.bpf_link** %15, align 8
  %63 = bitcast %struct.bpf_link* %62 to %struct.perf_buffer*
  %64 = call i32 @IS_ERR(%struct.perf_buffer* %63)
  %65 = load %struct.bpf_link*, %struct.bpf_link** %15, align 8
  %66 = bitcast %struct.bpf_link* %65 to %struct.perf_buffer*
  %67 = call i32 @PTR_ERR(%struct.perf_buffer* %66)
  %68 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %139

71:                                               ; preds = %57
  %72 = load i32, i32* @on_sample, align 4
  %73 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %8, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %8, i32 0, i32 0
  store i32* %11, i32** %74, align 8
  %75 = load %struct.bpf_map*, %struct.bpf_map** %9, align 8
  %76 = call i32 @bpf_map__fd(%struct.bpf_map* %75)
  %77 = call %struct.perf_buffer* @perf_buffer__new(i32 %76, i32 1, %struct.perf_buffer_opts* %8)
  store %struct.perf_buffer* %77, %struct.perf_buffer** %14, align 8
  %78 = load %struct.perf_buffer*, %struct.perf_buffer** %14, align 8
  %79 = call i32 @IS_ERR(%struct.perf_buffer* %78)
  %80 = load %struct.perf_buffer*, %struct.perf_buffer** %14, align 8
  %81 = call i32 @PTR_ERR(%struct.perf_buffer* %80)
  %82 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %135

85:                                               ; preds = %71
  %86 = call i32 @CPU_ZERO(i32* %11)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %108, %85
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = call i32 @CPU_ZERO(i32* %10)
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @CPU_SET(i32 %93, i32* %10)
  %95 = call i32 (...) @pthread_self()
  %96 = call i32 @pthread_setaffinity_np(i32 %95, i32 4, i32* %10)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %1, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i32, i32* %1, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %135

106:                                              ; preds = %99, %91
  %107 = call i32 @usleep(i32 1)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %87

111:                                              ; preds = %87
  %112 = load %struct.perf_buffer*, %struct.perf_buffer** %14, align 8
  %113 = call i32 @perf_buffer__poll(%struct.perf_buffer* %112, i32 100)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = icmp slt i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %1, align 4
  %118 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %132

121:                                              ; preds = %111
  %122 = call i32 @CPU_COUNT(i32* %11)
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @CPU_COUNT(i32* %11)
  %128 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %132

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %130, %120
  %133 = load %struct.perf_buffer*, %struct.perf_buffer** %14, align 8
  %134 = call i32 @perf_buffer__free(%struct.perf_buffer* %133)
  br label %135

135:                                              ; preds = %132, %105, %84
  %136 = load %struct.bpf_link*, %struct.bpf_link** %15, align 8
  %137 = bitcast %struct.bpf_link* %136 to %struct.perf_buffer*
  %138 = call i32 @bpf_link__destroy(%struct.perf_buffer* %137)
  br label %139

139:                                              ; preds = %135, %70, %56, %46
  %140 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %141 = call i32 @bpf_object__close(%struct.bpf_object* %140)
  br label %142

142:                                              ; preds = %139, %34, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @libbpf_num_possible_cpus(...) #2

declare dso_local i64 @CHECK(i32, i8*, i8*, ...) #2

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #2

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #2

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #2

declare dso_local %struct.perf_buffer* @bpf_program__attach_kprobe(%struct.bpf_program*, i32, i32) #2

declare dso_local i32 @IS_ERR(%struct.perf_buffer*) #2

declare dso_local i32 @PTR_ERR(%struct.perf_buffer*) #2

declare dso_local %struct.perf_buffer* @perf_buffer__new(i32, i32, %struct.perf_buffer_opts*) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i32 @CPU_ZERO(i32*) #2

declare dso_local i32 @CPU_SET(i32, i32*) #2

declare dso_local i32 @pthread_setaffinity_np(i32, i32, i32*) #2

declare dso_local i32 @pthread_self(...) #2

declare dso_local i32 @usleep(i32) #2

declare dso_local i32 @perf_buffer__poll(%struct.perf_buffer*, i32) #2

declare dso_local i32 @CPU_COUNT(i32*) #2

declare dso_local i32 @perf_buffer__free(%struct.perf_buffer*) #2

declare dso_local i32 @bpf_link__destroy(%struct.perf_buffer*) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
