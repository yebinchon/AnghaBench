; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer = type { i32 }
%struct.perf_buffer_opts = type { i32*, i32*, i32* }
%struct.perf_buffer_params = type { i32*, i32*, i32*, %struct.perf_event_attr* }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32 }

@PERF_COUNT_SW_BPF_OUTPUT = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_buffer* @perf_buffer__new(i32 %0, i64 %1, %struct.perf_buffer_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_buffer_opts*, align 8
  %7 = alloca %struct.perf_buffer_params, align 8
  %8 = alloca %struct.perf_event_attr, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.perf_buffer_opts* %2, %struct.perf_buffer_opts** %6, align 8
  %9 = bitcast %struct.perf_buffer_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = bitcast %struct.perf_event_attr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 24, i1 false)
  %11 = load i32, i32* @PERF_COUNT_SW_BPF_OUTPUT, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 3
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %19, align 8
  %20 = load %struct.perf_buffer_opts*, %struct.perf_buffer_opts** %6, align 8
  %21 = icmp ne %struct.perf_buffer_opts* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.perf_buffer_opts*, %struct.perf_buffer_opts** %6, align 8
  %24 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32* [ %25, %22 ], [ null, %26 ]
  %29 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 2
  store i32* %28, i32** %29, align 8
  %30 = load %struct.perf_buffer_opts*, %struct.perf_buffer_opts** %6, align 8
  %31 = icmp ne %struct.perf_buffer_opts* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.perf_buffer_opts*, %struct.perf_buffer_opts** %6, align 8
  %34 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32* [ %35, %32 ], [ null, %36 ]
  %39 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 1
  store i32* %38, i32** %39, align 8
  %40 = load %struct.perf_buffer_opts*, %struct.perf_buffer_opts** %6, align 8
  %41 = icmp ne %struct.perf_buffer_opts* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.perf_buffer_opts*, %struct.perf_buffer_opts** %6, align 8
  %44 = getelementptr inbounds %struct.perf_buffer_opts, %struct.perf_buffer_opts* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32* [ %45, %42 ], [ null, %46 ]
  %49 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 0
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call %struct.perf_buffer* @__perf_buffer__new(i32 %50, i64 %51, %struct.perf_buffer_params* %7)
  ret %struct.perf_buffer* %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.perf_buffer* @__perf_buffer__new(i32, i64, %struct.perf_buffer_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
