; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_info_fill_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_info_fill_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns_common = type { i32 }
%struct.ns_get_path_bpf_map_args = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.net = type { %struct.ns_common }

@bpf_devs_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ns_common* (i8*)* @bpf_map_offload_info_fill_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ns_common* @bpf_map_offload_info_fill_ns(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ns_get_path_bpf_map_args*, align 8
  %4 = alloca %struct.ns_common*, align 8
  %5 = alloca %struct.net*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ns_get_path_bpf_map_args*
  store %struct.ns_get_path_bpf_map_args* %7, %struct.ns_get_path_bpf_map_args** %3, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = call i32 @down_read(i32* @bpf_devs_lock)
  %10 = load %struct.ns_get_path_bpf_map_args*, %struct.ns_get_path_bpf_map_args** %3, align 8
  %11 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.ns_get_path_bpf_map_args*, %struct.ns_get_path_bpf_map_args** %3, align 8
  %18 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ns_get_path_bpf_map_args*, %struct.ns_get_path_bpf_map_args** %3, align 8
  %25 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = load %struct.ns_get_path_bpf_map_args*, %struct.ns_get_path_bpf_map_args** %3, align 8
  %29 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call %struct.net* @dev_net(%struct.TYPE_6__* %32)
  store %struct.net* %33, %struct.net** %5, align 8
  %34 = load %struct.net*, %struct.net** %5, align 8
  %35 = call i32 @get_net(%struct.net* %34)
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  store %struct.ns_common* %37, %struct.ns_common** %4, align 8
  br label %43

38:                                               ; preds = %1
  %39 = load %struct.ns_get_path_bpf_map_args*, %struct.ns_get_path_bpf_map_args** %3, align 8
  %40 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, %struct.ns_get_path_bpf_map_args* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  store %struct.ns_common* null, %struct.ns_common** %4, align 8
  br label %43

43:                                               ; preds = %38, %16
  %44 = call i32 @up_read(i32* @bpf_devs_lock)
  %45 = call i32 (...) @rtnl_unlock()
  %46 = load %struct.ns_common*, %struct.ns_common** %4, align 8
  ret %struct.ns_common* %46
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_6__*) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
