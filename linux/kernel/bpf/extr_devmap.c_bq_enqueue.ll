; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_bq_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_devmap.c_bq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_dtab_netdev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.xdp_bulk_queue = type { i64, %struct.TYPE_4__, %struct.xdp_frame**, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@DEV_MAP_BULK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_dtab_netdev*, %struct.xdp_frame*, %struct.net_device*)* @bq_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq_enqueue(%struct.bpf_dtab_netdev* %0, %struct.xdp_frame* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.bpf_dtab_netdev*, align 8
  %5 = alloca %struct.xdp_frame*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.xdp_bulk_queue*, align 8
  store %struct.bpf_dtab_netdev* %0, %struct.bpf_dtab_netdev** %4, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_dtab_netdev, %struct.bpf_dtab_netdev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @this_cpu_ptr(i32 %13)
  %15 = bitcast i8* %14 to %struct.list_head*
  store %struct.list_head* %15, %struct.list_head** %7, align 8
  %16 = load %struct.bpf_dtab_netdev*, %struct.bpf_dtab_netdev** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_dtab_netdev, %struct.bpf_dtab_netdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @this_cpu_ptr(i32 %18)
  %20 = bitcast i8* %19 to %struct.xdp_bulk_queue*
  store %struct.xdp_bulk_queue* %20, %struct.xdp_bulk_queue** %8, align 8
  %21 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %22 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DEV_MAP_BULK_SIZE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %31 = call i32 @bq_xmit_all(%struct.xdp_bulk_queue* %30, i32 0, i32 1)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %34 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %33, i32 0, i32 3
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %40 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %39, i32 0, i32 3
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %43 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %44 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %43, i32 0, i32 2
  %45 = load %struct.xdp_frame**, %struct.xdp_frame*** %44, align 8
  %46 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %47 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %45, i64 %48
  store %struct.xdp_frame* %42, %struct.xdp_frame** %50, align 8
  %51 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %52 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %41
  %57 = load %struct.xdp_bulk_queue*, %struct.xdp_bulk_queue** %8, align 8
  %58 = getelementptr inbounds %struct.xdp_bulk_queue, %struct.xdp_bulk_queue* %57, i32 0, i32 1
  %59 = load %struct.list_head*, %struct.list_head** %7, align 8
  %60 = call i32 @list_add(%struct.TYPE_4__* %58, %struct.list_head* %59)
  br label %61

61:                                               ; preds = %56, %41
  ret i32 0
}

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bq_xmit_all(%struct.xdp_bulk_queue*, i32, i32) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
