; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i64 }
%struct.xdp_sock = type { i32, i32, i32, i32 }
%struct.xsk_queue = type { i32 }
%struct.xdp_umem = type { i32, i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@XSK_READY = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@XDP_PGOFF_RX_RING = common dso_local global i64 0, align 8
@XDP_PGOFF_TX_RING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XDP_UMEM_PGOFF_FILL_RING = common dso_local global i64 0, align 8
@XDP_UMEM_PGOFF_COMPLETION_RING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)* @xsk_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_mmap(%struct.file* %0, %struct.socket* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xdp_sock*, align 8
  %11 = alloca %struct.xsk_queue*, align 8
  %12 = alloca %struct.xdp_umem*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = shl i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %9, align 8
  %27 = load %struct.socket*, %struct.socket** %6, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.xdp_sock* @xdp_sk(i32 %29)
  store %struct.xdp_sock* %30, %struct.xdp_sock** %10, align 8
  store %struct.xsk_queue* null, %struct.xsk_queue** %11, align 8
  %31 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %32 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @READ_ONCE(i32 %33)
  %35 = load i8*, i8** @XSK_READY, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %131

40:                                               ; preds = %3
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @XDP_PGOFF_RX_RING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %46 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @READ_ONCE(i32 %47)
  %49 = bitcast i8* %48 to %struct.xsk_queue*
  store %struct.xsk_queue* %49, %struct.xsk_queue** %11, align 8
  br label %95

50:                                               ; preds = %40
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @XDP_PGOFF_TX_RING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %56 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @READ_ONCE(i32 %57)
  %59 = bitcast i8* %58 to %struct.xsk_queue*
  store %struct.xsk_queue* %59, %struct.xsk_queue** %11, align 8
  br label %94

60:                                               ; preds = %50
  %61 = load %struct.xdp_sock*, %struct.xdp_sock** %10, align 8
  %62 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @READ_ONCE(i32 %63)
  %65 = bitcast i8* %64 to %struct.xdp_umem*
  store %struct.xdp_umem* %65, %struct.xdp_umem** %12, align 8
  %66 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %67 = icmp ne %struct.xdp_umem* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %131

71:                                               ; preds = %60
  %72 = call i32 (...) @smp_rmb()
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @XDP_UMEM_PGOFF_FILL_RING, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %78 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @READ_ONCE(i32 %79)
  %81 = bitcast i8* %80 to %struct.xsk_queue*
  store %struct.xsk_queue* %81, %struct.xsk_queue** %11, align 8
  br label %93

82:                                               ; preds = %71
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @XDP_UMEM_PGOFF_COMPLETION_RING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %88 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @READ_ONCE(i32 %89)
  %91 = bitcast i8* %90 to %struct.xsk_queue*
  store %struct.xsk_queue* %91, %struct.xsk_queue** %11, align 8
  br label %92

92:                                               ; preds = %86, %82
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %94, %44
  %96 = load %struct.xsk_queue*, %struct.xsk_queue** %11, align 8
  %97 = icmp ne %struct.xsk_queue* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %131

101:                                              ; preds = %95
  %102 = call i32 (...) @smp_rmb()
  %103 = load %struct.xsk_queue*, %struct.xsk_queue** %11, align 8
  %104 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.page* @virt_to_head_page(i32 %105)
  store %struct.page* %106, %struct.page** %14, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.page*, %struct.page** %14, align 8
  %109 = call i64 @page_size(%struct.page* %108)
  %110 = icmp ugt i64 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %131

114:                                              ; preds = %101
  %115 = load %struct.xsk_queue*, %struct.xsk_queue** %11, align 8
  %116 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @virt_to_phys(i32 %117)
  %119 = load i64, i64* @PAGE_SHIFT, align 8
  %120 = ashr i64 %118, %119
  store i64 %120, i64* %13, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %128 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @remap_pfn_range(%struct.vm_area_struct* %121, i64 %124, i64 %125, i64 %126, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %114, %111, %98, %68, %37
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.xdp_sock* @xdp_sk(i32) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.page* @virt_to_head_page(i32) #1

declare dso_local i64 @page_size(%struct.page*) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
