; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tcpnotify_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tcpnotify_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.perf_buffer_opts = type { i32 }
%struct.tcpnotify_globals = type { i32, i32 }
%struct.perf_buffer = type { i32 }
%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"test_tcpnotify_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCK_OPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"FAILED: load_bpf_file failed for: %s\0A\00", align 1
@BPF_CGROUP_SOCK_OPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"FAILED: bpf_prog_attach: %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"perf_event_map\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"FAIL:map '%s' not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"global_map\00", align 1
@dummyfn = common dso_local global i32 0, align 4
@tid = common dso_local global i32 0, align 4
@poller_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"iptables -A INPUT -p tcp --dport %d -j DROP\00", align 1
@TESTPORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"nc 127.0.0.1 %d < /etc/passwd > /dev/null 2>&1 \00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"iptables -D INPUT -p tcp --dport %d -j DROP\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"FAILED: bpf_map_lookup_elem returns %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"FAILED: Wrong stats Expected %d calls, got %d\0A\00", align 1
@rx_callbacks = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"PASSED!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpf_map*, align 8
  %8 = alloca %struct.bpf_map*, align 8
  %9 = alloca %struct.perf_buffer_opts, align 4
  %10 = alloca %struct.tcpnotify_globals, align 4
  %11 = alloca %struct.perf_buffer*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_object*, align 8
  %18 = alloca [80 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %21 = bitcast %struct.perf_buffer_opts* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = bitcast %struct.tcpnotify_globals* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  store %struct.perf_buffer* null, %struct.perf_buffer** %11, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  store i32 -1, i32* %15, align 4
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %23, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %24 = call i32 @CPU_ZERO(i32* %19)
  %25 = call i32 @CPU_SET(i32 0, i32* %19)
  %26 = call i32 (...) @pthread_self()
  %27 = call i32 @pthread_setaffinity_np(i32 %26, i32 4, i32* %19)
  %28 = call i64 (...) @setup_cgroup_environment()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %124

31:                                               ; preds = %2
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @create_and_get_cgroup(i8* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %124

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @join_cgroup(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %124

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @BPF_PROG_TYPE_SOCK_OPS, align 4
  %45 = call i64 @bpf_prog_load(i8* %43, i32 %44, %struct.bpf_object** %17, i32* %13)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %124

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @BPF_CGROUP_SOCK_OPS, align 4
  %54 = call i32 @bpf_prog_attach(i32 %51, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i8* @strerror(i32 %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %58, i8* %60)
  br label %124

62:                                               ; preds = %50
  %63 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %64 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store %struct.bpf_map* %64, %struct.bpf_map** %7, align 8
  %65 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %66 = icmp ne %struct.bpf_map* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %124

69:                                               ; preds = %62
  %70 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %71 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store %struct.bpf_map* %71, %struct.bpf_map** %8, align 8
  %72 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %73 = icmp ne %struct.bpf_map* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %139

76:                                               ; preds = %69
  %77 = load i32, i32* @dummyfn, align 4
  %78 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %9, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.bpf_map*, %struct.bpf_map** %7, align 8
  %80 = call i32 @bpf_map__fd(%struct.bpf_map* %79)
  %81 = call %struct.perf_buffer* @perf_buffer__new(i32 %80, i32 8, %struct.perf_buffer_opts* %9)
  store %struct.perf_buffer* %81, %struct.perf_buffer** %11, align 8
  %82 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %83 = call i64 @IS_ERR(%struct.perf_buffer* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %124

86:                                               ; preds = %76
  %87 = load i32, i32* @poller_thread, align 4
  %88 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %89 = call i32 @pthread_create(i32* @tid, i32* null, i32 %87, %struct.perf_buffer* %88)
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %91 = load i32, i32* @TESTPORT, align 4
  %92 = call i32 @sprintf(i8* %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %94 = call i32 @system(i8* %93)
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %96 = load i32, i32* @TESTPORT, align 4
  %97 = call i32 @sprintf(i8* %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %99 = call i32 @system(i8* %98)
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %101 = load i32, i32* @TESTPORT, align 4
  %102 = call i32 @sprintf(i8* %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %104 = call i32 @system(i8* %103)
  %105 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %106 = call i32 @bpf_map__fd(%struct.bpf_map* %105)
  %107 = call i32 @bpf_map_lookup_elem(i32 %106, i32* %20, %struct.tcpnotify_globals* %10)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %86
  %111 = load i32, i32* %14, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  br label %124

113:                                              ; preds = %86
  %114 = call i32 @sleep(i32 10)
  %115 = call i64 @verify_result(%struct.tcpnotify_globals* %10)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.tcpnotify_globals, %struct.tcpnotify_globals* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @rx_callbacks, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %119, i32 %120)
  br label %124

122:                                              ; preds = %113
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %122, %117, %110, %85, %67, %57, %47, %41, %36, %30
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @BPF_CGROUP_SOCK_OPS, align 4
  %127 = call i32 @bpf_prog_detach(i32 %125, i32 %126)
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @close(i32 %128)
  %130 = call i32 (...) @cleanup_cgroup_environment()
  %131 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %132 = call i32 @IS_ERR_OR_NULL(%struct.perf_buffer* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %124
  %135 = load %struct.perf_buffer*, %struct.perf_buffer** %11, align 8
  %136 = call i32 @perf_buffer__free(%struct.perf_buffer* %135)
  br label %137

137:                                              ; preds = %134, %124
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %74
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CPU_ZERO(i32*) #2

declare dso_local i32 @CPU_SET(i32, i32*) #2

declare dso_local i32 @pthread_setaffinity_np(i32, i32, i32*) #2

declare dso_local i32 @pthread_self(...) #2

declare dso_local i64 @setup_cgroup_environment(...) #2

declare dso_local i32 @create_and_get_cgroup(i8*) #2

declare dso_local i64 @join_cgroup(i8*) #2

declare dso_local i64 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #2

declare dso_local %struct.perf_buffer* @perf_buffer__new(i32, i32, %struct.perf_buffer_opts*) #2

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #2

declare dso_local i64 @IS_ERR(%struct.perf_buffer*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.perf_buffer*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, %struct.tcpnotify_globals*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i64 @verify_result(%struct.tcpnotify_globals*) #2

declare dso_local i32 @bpf_prog_detach(i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @cleanup_cgroup_environment(...) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.perf_buffer*) #2

declare dso_local i32 @perf_buffer__free(%struct.perf_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
