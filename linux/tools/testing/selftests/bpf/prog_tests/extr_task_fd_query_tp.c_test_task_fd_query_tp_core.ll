; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_task_fd_query_tp.c_test_task_fd_query_tp_core.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_task_fd_query_tp.c_test_task_fd_query_tp_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }
%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"./test_tracepoint.o\00", align 1
@BPF_PROG_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bpf_prog_load\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@errno = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"/sys/kernel/debug/tracing/events/%s/id\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"bytes %d errno %d\0A\00", align 1
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@__NR_perf_event_open = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"perf_event_open\00", align 1
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"perf_event_ioc_enable\00", align 1
@PERF_EVENT_IOC_SET_BPF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"perf_event_ioc_set_bpf\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bpf_task_fd_query\00", align 1
@BPF_FD_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"check_results\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"fd_type %d tp_name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_task_fd_query_tp_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_task_fd_query_tp_core(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_event_attr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bpf_object*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %20 = bitcast %struct.perf_event_attr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 20, i1 false)
  store %struct.bpf_object* null, %struct.bpf_object** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @BPF_PROG_TYPE_TRACEPOINT, align 4
  %23 = call i32 @bpf_prog_load(i8* %21, i32 %22, %struct.bpf_object** %17, i32* %9)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** @errno, align 8
  %27 = call i64 @CHECK(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %143

30:                                               ; preds = %2
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @snprintf(i8* %31, i32 256, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = call i32 @open(i8* %34, i32 %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** @errno, align 8
  %42 = call i64 @CHECK(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %143

45:                                               ; preds = %30
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %48 = call i32 @read(i32 %46, i8* %47, i32 256)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 256
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i1 [ true, %45 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** @errno, align 8
  %62 = call i64 @CHECK(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %143

65:                                               ; preds = %57
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %67 = call i32 @strtol(i8* %66, i32* null, i32 0)
  %68 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %72 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %11, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @__NR_perf_event_open, align 4
  %76 = call i32 @syscall(i32 %75, %struct.perf_event_attr* %11, i32 -1, i32 0, i32 -1, i32 0)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i8*, i8** @errno, align 8
  %80 = call i64 @CHECK(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %140

83:                                               ; preds = %65
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %86 = call i32 @ioctl(i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i8*, i8** @errno, align 8
  %90 = call i64 @CHECK(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %140

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @PERF_EVENT_IOC_SET_BPF, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ioctl(i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** @errno, align 8
  %101 = call i64 @CHECK(i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %140

104:                                              ; preds = %93
  store i32 256, i32* %14, align 4
  %105 = call i32 (...) @getpid()
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %108 = call i32 @bpf_task_fd_query(i32 %105, i32 %106, i32 0, i8* %107, i32* %14, i32* %15, i32* %16, i32* %12, i32* %13)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %6, align 4
  %113 = load i8*, i8** @errno, align 8
  %114 = call i64 @CHECK(i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %140

117:                                              ; preds = %104
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @BPF_FD_TYPE_TRACEPOINT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @strcmp(i8* %122, i8* %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i1 [ false, %117 ], [ %126, %121 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %16, align 4
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %136 = call i64 @CHECK(i32 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %134, i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %140

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %138, %116, %103, %92, %82
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @close(i32 %141)
  br label %143

143:                                              ; preds = %140, %64, %44, %29
  %144 = load %struct.bpf_object*, %struct.bpf_object** %17, align 8
  %145 = call i32 @bpf_object__close(%struct.bpf_object* %144)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #2

declare dso_local i64 @CHECK(i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @syscall(i32, %struct.perf_event_attr*, i32, i32, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, i32) #2

declare dso_local i32 @bpf_task_fd_query(i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
