; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__new_raw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_perf_buffer__new_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_buffer = type { i32 }
%struct.perf_buffer_raw_opts = type { i32, i32, i32, i32, i32, i32 }
%struct.perf_buffer_params = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_buffer* @perf_buffer__new_raw(i32 %0, i64 %1, %struct.perf_buffer_raw_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_buffer_raw_opts*, align 8
  %7 = alloca %struct.perf_buffer_params, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.perf_buffer_raw_opts* %2, %struct.perf_buffer_raw_opts** %6, align 8
  %8 = bitcast %struct.perf_buffer_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.perf_buffer_raw_opts*, %struct.perf_buffer_raw_opts** %6, align 8
  %10 = getelementptr inbounds %struct.perf_buffer_raw_opts, %struct.perf_buffer_raw_opts* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load %struct.perf_buffer_raw_opts*, %struct.perf_buffer_raw_opts** %6, align 8
  %14 = getelementptr inbounds %struct.perf_buffer_raw_opts, %struct.perf_buffer_raw_opts* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load %struct.perf_buffer_raw_opts*, %struct.perf_buffer_raw_opts** %6, align 8
  %18 = getelementptr inbounds %struct.perf_buffer_raw_opts, %struct.perf_buffer_raw_opts* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.perf_buffer_raw_opts*, %struct.perf_buffer_raw_opts** %6, align 8
  %22 = getelementptr inbounds %struct.perf_buffer_raw_opts, %struct.perf_buffer_raw_opts* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.perf_buffer_raw_opts*, %struct.perf_buffer_raw_opts** %6, align 8
  %26 = getelementptr inbounds %struct.perf_buffer_raw_opts, %struct.perf_buffer_raw_opts* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.perf_buffer_raw_opts*, %struct.perf_buffer_raw_opts** %6, align 8
  %30 = getelementptr inbounds %struct.perf_buffer_raw_opts, %struct.perf_buffer_raw_opts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.perf_buffer_params, %struct.perf_buffer_params* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call %struct.perf_buffer* @__perf_buffer__new(i32 %33, i64 %34, %struct.perf_buffer_params* %7)
  ret %struct.perf_buffer* %35
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
