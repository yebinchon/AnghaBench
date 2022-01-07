; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_output_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_output_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer_opts = type { i32 }
%struct.perf_buffer = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@print_bpf_output = common dso_local global i32 0, align 4
@map_fd = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to setup perf_buffer: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"taskset 1 dd if=/dev/zero of=/dev/null\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@start_time = common dso_local global i32 0, align 4
@cnt = common dso_local global i64 0, align 8
@MAX_CNT = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.perf_buffer_opts, align 4
  %7 = alloca %struct.perf_buffer*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.perf_buffer_opts* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @snprintf(i8* %12, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %18 = call i64 @load_bpf_file(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** @bpf_log_buf, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 1, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load i32, i32* @print_bpf_output, align 4
  %25 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** @map_fd, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.perf_buffer* @perf_buffer__new(i32 %28, i32 8, %struct.perf_buffer_opts* %6)
  store %struct.perf_buffer* %29, %struct.perf_buffer** %7, align 8
  %30 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %31 = call i32 @libbpf_get_error(%struct.perf_buffer* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 1, i32* %3, align 4
  br label %56

37:                                               ; preds = %23
  %38 = call i32* @popen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 (...) @time_get_ns()
  store i32 %40, i32* @start_time, align 4
  br label %41

41:                                               ; preds = %51, %37
  %42 = load %struct.perf_buffer*, %struct.perf_buffer** %7, align 8
  %43 = call i32 @perf_buffer__poll(%struct.perf_buffer* %42, i32 1000)
  store i32 %43, i32* %10, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* @cnt, align 8
  %47 = load i64, i64* @MAX_CNT, align 8
  %48 = icmp slt i64 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ false, %41 ], [ %48, %45 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %41

52:                                               ; preds = %49
  %53 = load i32, i32* @SIGINT, align 4
  %54 = call i32 @kill(i32 0, i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %34, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @load_bpf_file(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local %struct.perf_buffer* @perf_buffer__new(i32, i32, %struct.perf_buffer_opts*) #2

declare dso_local i32 @libbpf_get_error(%struct.perf_buffer*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @time_get_ns(...) #2

declare dso_local i32 @perf_buffer__poll(%struct.perf_buffer*, i32) #2

declare dso_local i32 @kill(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
