; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_offload.c_bpf_map_offload_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net* }
%struct.net = type { i32 }
%struct.bpf_map = type { i32 }
%union.bpf_attr = type { i64 }
%struct.bpf_offload_netdev = type { i32 }
%struct.bpf_offloaded_map = type { %struct.bpf_map, i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_ARRAY = common dso_local global i64 0, align 8
@BPF_MAP_TYPE_HASH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bpf_devs_lock = common dso_local global i32 0, align 4
@BPF_OFFLOAD_MAP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_map* @bpf_map_offload_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.bpf_offload_netdev*, align 8
  %6 = alloca %struct.bpf_offloaded_map*, align 8
  %7 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.net*, %struct.net** %11, align 8
  store %struct.net* %12, %struct.net** %4, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.bpf_map* @ERR_PTR(i32 %18)
  store %struct.bpf_map* %19, %struct.bpf_map** %2, align 8
  br label %100

20:                                               ; preds = %1
  %21 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %22 = bitcast %union.bpf_attr* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BPF_MAP_TYPE_ARRAY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %28 = bitcast %union.bpf_attr* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BPF_MAP_TYPE_HASH, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.bpf_map* @ERR_PTR(i32 %34)
  store %struct.bpf_map* %35, %struct.bpf_map** %2, align 8
  br label %100

36:                                               ; preds = %26, %20
  %37 = load i32, i32* @GFP_USER, align 4
  %38 = call %struct.bpf_offloaded_map* @kzalloc(i32 12, i32 %37)
  store %struct.bpf_offloaded_map* %38, %struct.bpf_offloaded_map** %6, align 8
  %39 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %40 = icmp ne %struct.bpf_offloaded_map* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.bpf_map* @ERR_PTR(i32 %43)
  store %struct.bpf_map* %44, %struct.bpf_map** %2, align 8
  br label %100

45:                                               ; preds = %36
  %46 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %47 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %46, i32 0, i32 0
  %48 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %49 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %47, %union.bpf_attr* %48)
  %50 = call i32 (...) @rtnl_lock()
  %51 = call i32 @down_write(i32* @bpf_devs_lock)
  %52 = load %struct.net*, %struct.net** %4, align 8
  %53 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %54 = bitcast %union.bpf_attr* %53 to i32*
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @__dev_get_by_index(%struct.net* %52, i32 %55)
  %57 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %58 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %60 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bpf_dev_offload_check(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %93

66:                                               ; preds = %45
  %67 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %68 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.bpf_offload_netdev* @bpf_offload_find_netdev(i32 %69)
  store %struct.bpf_offload_netdev* %70, %struct.bpf_offload_netdev** %5, align 8
  %71 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %5, align 8
  %72 = icmp ne %struct.bpf_offload_netdev* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %93

76:                                               ; preds = %66
  %77 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %78 = load i32, i32* @BPF_OFFLOAD_MAP_ALLOC, align 4
  %79 = call i32 @bpf_map_offload_ndo(%struct.bpf_offloaded_map* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %93

83:                                               ; preds = %76
  %84 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %85 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %84, i32 0, i32 1
  %86 = load %struct.bpf_offload_netdev*, %struct.bpf_offload_netdev** %5, align 8
  %87 = getelementptr inbounds %struct.bpf_offload_netdev, %struct.bpf_offload_netdev* %86, i32 0, i32 0
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = call i32 @up_write(i32* @bpf_devs_lock)
  %90 = call i32 (...) @rtnl_unlock()
  %91 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %92 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %91, i32 0, i32 0
  store %struct.bpf_map* %92, %struct.bpf_map** %2, align 8
  br label %100

93:                                               ; preds = %82, %73, %65
  %94 = call i32 @up_write(i32* @bpf_devs_lock)
  %95 = call i32 (...) @rtnl_unlock()
  %96 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %97 = call i32 @kfree(%struct.bpf_offloaded_map* %96)
  %98 = load i32, i32* %7, align 4
  %99 = call %struct.bpf_map* @ERR_PTR(i32 %98)
  store %struct.bpf_map* %99, %struct.bpf_map** %2, align 8
  br label %100

100:                                              ; preds = %93, %83, %41, %32, %16
  %101 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %101
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_offloaded_map* @kzalloc(i32, i32) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @bpf_dev_offload_check(i32) #1

declare dso_local %struct.bpf_offload_netdev* @bpf_offload_find_netdev(i32) #1

declare dso_local i32 @bpf_map_offload_ndo(%struct.bpf_offloaded_map*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @kfree(%struct.bpf_offloaded_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
