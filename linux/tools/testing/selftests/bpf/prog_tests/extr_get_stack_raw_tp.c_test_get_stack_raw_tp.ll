; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_get_stack_raw_tp.c_test_get_stack_raw_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_get_stack_raw_tp.c_test_get_stack_raw_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.perf_buffer_opts = type { i32 }
%struct.perf_buffer = type { i32 }
%struct.bpf_link = type opaque
%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"./test_get_stack_rawtp.o\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"raw_tracepoint/sys_enter\00", align 1
@MAX_CNT_RAWTP = common dso_local global i32 0, align 4
@__const.test_get_stack_raw_tp.tv = private unnamed_addr constant %struct.timespec { i32 0, i32 10 }, align 4
@BPF_PROG_TYPE_RAW_TRACEPOINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"prog_load raw tp\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"find_probe\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"prog '%s' not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"perfmap\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bpf_find_map\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"load_kallsyms\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"set_affinity\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"err %d, errno %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"sys_enter\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"attach_raw_tp\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"err %ld\0A\00", align 1
@get_stack_print_output = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"perf_buf__new\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pb__poll\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_get_stack_raw_tp() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_buffer_opts, align 4
  %8 = alloca %struct.perf_buffer*, align 8
  %9 = alloca %struct.bpf_link*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.bpf_program*, align 8
  %12 = alloca %struct.bpf_object*, align 8
  %13 = alloca %struct.bpf_map*, align 8
  %14 = alloca i32, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %15 = load i32, i32* @MAX_CNT_RAWTP, align 4
  store i32 %15, i32* %6, align 4
  %16 = bitcast %struct.perf_buffer_opts* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store %struct.perf_buffer* null, %struct.perf_buffer** %8, align 8
  store %struct.bpf_link* null, %struct.bpf_link** %9, align 8
  %17 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.timespec* @__const.test_get_stack_raw_tp.tv to i8*), i64 8, i1 false)
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  %20 = call i32 @bpf_prog_load(i8* %18, i32 %19, %struct.bpf_object** %12, i32* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  br label %147

27:                                               ; preds = %0
  %28 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %28, i8* %29)
  store %struct.bpf_program* %30, %struct.bpf_program** %11, align 8
  %31 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %32 = icmp ne %struct.bpf_program* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %128

39:                                               ; preds = %27
  %40 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %41 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store %struct.bpf_map* %41, %struct.bpf_map** %13, align 8
  %42 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %43 = icmp ne %struct.bpf_map* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %128

49:                                               ; preds = %39
  %50 = call i32 (...) @load_kallsyms()
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %128

59:                                               ; preds = %49
  %60 = call i32 @CPU_ZERO(i32* %14)
  %61 = call i32 @CPU_SET(i32 0, i32* %14)
  %62 = call i32 (...) @pthread_self()
  %63 = call i32 @pthread_setaffinity_np(i32 %62, i32 4, i32* %14)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %128

70:                                               ; preds = %59
  %71 = load %struct.bpf_program*, %struct.bpf_program** %11, align 8
  %72 = call %struct.perf_buffer* @bpf_program__attach_raw_tracepoint(%struct.bpf_program* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %73 = bitcast %struct.perf_buffer* %72 to %struct.bpf_link*
  store %struct.bpf_link* %73, %struct.bpf_link** %9, align 8
  %74 = load %struct.bpf_link*, %struct.bpf_link** %9, align 8
  %75 = bitcast %struct.bpf_link* %74 to %struct.perf_buffer*
  %76 = call i32 @IS_ERR(%struct.perf_buffer* %75)
  %77 = load %struct.bpf_link*, %struct.bpf_link** %9, align 8
  %78 = bitcast %struct.bpf_link* %77 to %struct.perf_buffer*
  %79 = call i32 @PTR_ERR(%struct.perf_buffer* %78)
  %80 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %128

83:                                               ; preds = %70
  %84 = load i32, i32* @get_stack_print_output, align 4
  %85 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %7, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = load %struct.bpf_map*, %struct.bpf_map** %13, align 8
  %87 = call i32 @bpf_map__fd(%struct.bpf_map* %86)
  %88 = call %struct.perf_buffer* @perf_buffer__new(i32 %87, i32 8, %struct.perf_buffer_opts* %7)
  store %struct.perf_buffer* %88, %struct.perf_buffer** %8, align 8
  %89 = load %struct.perf_buffer*, %struct.perf_buffer** %8, align 8
  %90 = call i32 @IS_ERR(%struct.perf_buffer* %89)
  %91 = load %struct.perf_buffer*, %struct.perf_buffer** %8, align 8
  %92 = call i32 @PTR_ERR(%struct.perf_buffer* %91)
  %93 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %128

96:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %103, %96
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @MAX_CNT_RAWTP, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = call i32 @nanosleep(%struct.timespec* %10, i32* null)
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %97

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i32, i32* %6, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.perf_buffer*, %struct.perf_buffer** %8, align 8
  %112 = call i32 @perf_buffer__poll(%struct.perf_buffer* %111, i32 100)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %4, align 4
  %120 = call i64 (i32, i8*, i8*, ...) @CHECK(i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %128

123:                                              ; preds = %115, %110
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %107

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127, %122, %95, %82, %69, %58, %48, %38
  %129 = load %struct.bpf_link*, %struct.bpf_link** %9, align 8
  %130 = bitcast %struct.bpf_link* %129 to %struct.perf_buffer*
  %131 = call i32 @IS_ERR_OR_NULL(%struct.perf_buffer* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load %struct.bpf_link*, %struct.bpf_link** %9, align 8
  %135 = bitcast %struct.bpf_link* %134 to %struct.perf_buffer*
  %136 = call i32 @bpf_link__destroy(%struct.perf_buffer* %135)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.perf_buffer*, %struct.perf_buffer** %8, align 8
  %139 = call i32 @IS_ERR_OR_NULL(%struct.perf_buffer* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load %struct.perf_buffer*, %struct.perf_buffer** %8, align 8
  %143 = call i32 @perf_buffer__free(%struct.perf_buffer* %142)
  br label %144

144:                                              ; preds = %141, %137
  %145 = load %struct.bpf_object*, %struct.bpf_object** %12, align 8
  %146 = call i32 @bpf_object__close(%struct.bpf_object* %145)
  br label %147

147:                                              ; preds = %144, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #2

declare dso_local i64 @CHECK(i32, i8*, i8*, ...) #2

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #2

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #2

declare dso_local i32 @load_kallsyms(...) #2

declare dso_local i32 @CPU_ZERO(i32*) #2

declare dso_local i32 @CPU_SET(i32, i32*) #2

declare dso_local i32 @pthread_setaffinity_np(i32, i32, i32*) #2

declare dso_local i32 @pthread_self(...) #2

declare dso_local %struct.perf_buffer* @bpf_program__attach_raw_tracepoint(%struct.bpf_program*, i8*) #2

declare dso_local i32 @IS_ERR(%struct.perf_buffer*) #2

declare dso_local i32 @PTR_ERR(%struct.perf_buffer*) #2

declare dso_local %struct.perf_buffer* @perf_buffer__new(i32, i32, %struct.perf_buffer_opts*) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #2

declare dso_local i32 @perf_buffer__poll(%struct.perf_buffer*, i32) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.perf_buffer*) #2

declare dso_local i32 @bpf_link__destroy(%struct.perf_buffer*) #2

declare dso_local i32 @perf_buffer__free(%struct.perf_buffer*) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
