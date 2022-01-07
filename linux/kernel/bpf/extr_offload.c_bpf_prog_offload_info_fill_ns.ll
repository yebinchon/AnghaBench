; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_info_fill_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_prog_offload_info_fill_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.ns_get_path_bpf_prog_args = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.bpf_prog_aux* }
%struct.bpf_prog_aux = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.net = type { %struct.ns_common }

@bpf_devs_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (i8*)* @bpf_prog_offload_info_fill_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @bpf_prog_offload_info_fill_ns(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ns_get_path_bpf_prog_args*, align 8
  %4 = alloca %struct.bpf_prog_aux*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.net*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ns_get_path_bpf_prog_args*
  store %struct.ns_get_path_bpf_prog_args* %8, %struct.ns_get_path_bpf_prog_args** %3, align 8
  %9 = load %struct.ns_get_path_bpf_prog_args*, %struct.ns_get_path_bpf_prog_args** %3, align 8
  %10 = getelementptr inbounds %struct.ns_get_path_bpf_prog_args, %struct.ns_get_path_bpf_prog_args* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %12, align 8
  store %struct.bpf_prog_aux* %13, %struct.bpf_prog_aux** %4, align 8
  %14 = call i32 (...) @rtnl_lock()
  %15 = call i32 @down_read(i32* @bpf_devs_lock)
  %16 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ns_get_path_bpf_prog_args*, %struct.ns_get_path_bpf_prog_args** %3, align 8
  %29 = getelementptr inbounds %struct.ns_get_path_bpf_prog_args, %struct.ns_get_path_bpf_prog_args* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  %32 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %4, align 8
  %33 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call %struct.net* @dev_net(%struct.TYPE_8__* %36)
  store %struct.net* %37, %struct.net** %6, align 8
  %38 = load %struct.net*, %struct.net** %6, align 8
  %39 = call i32 @get_net(%struct.net* %38)
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = getelementptr inbounds %struct.net, %struct.net* %40, i32 0, i32 0
  store %struct.ns_common* %41, %struct.ns_common** %5, align 8
  br label %47

42:                                               ; preds = %1
  %43 = load %struct.ns_get_path_bpf_prog_args*, %struct.ns_get_path_bpf_prog_args** %3, align 8
  %44 = getelementptr inbounds %struct.ns_get_path_bpf_prog_args, %struct.ns_get_path_bpf_prog_args* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  store %struct.ns_common* null, %struct.ns_common** %5, align 8
  br label %47

47:                                               ; preds = %42, %20
  %48 = call i32 @up_read(i32* @bpf_devs_lock)
  %49 = call i32 (...) @rtnl_unlock()
  %50 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  ret %struct.ns_common* %50
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_8__*) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
