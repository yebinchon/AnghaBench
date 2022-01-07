; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport.c_virtio_vsock_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock = type { i64, i64, %struct.virtqueue** }
%struct.virtqueue = type { i64 }
%struct.virtio_vsock_pkt = type { i32, i32, i32*, i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_VSOCK_DEFAULT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@VSOCK_VQ_RX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_vsock*)* @virtio_vsock_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_vsock_rx_fill(%struct.virtio_vsock* %0) #0 {
  %2 = alloca %struct.virtio_vsock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_vsock_pkt*, align 8
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca [2 x %struct.scatterlist*], align 16
  %8 = alloca %struct.virtqueue*, align 8
  %9 = alloca i32, align 4
  store %struct.virtio_vsock* %0, %struct.virtio_vsock** %2, align 8
  %10 = load i32, i32* @VIRTIO_VSOCK_DEFAULT_RX_BUF_SIZE, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.virtio_vsock*, %struct.virtio_vsock** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %11, i32 0, i32 2
  %13 = load %struct.virtqueue**, %struct.virtqueue*** %12, align 8
  %14 = load i64, i64* @VSOCK_VQ_RX, align 8
  %15 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %13, i64 %14
  %16 = load %struct.virtqueue*, %struct.virtqueue** %15, align 8
  store %struct.virtqueue* %16, %struct.virtqueue** %8, align 8
  br label %17

17:                                               ; preds = %68, %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.virtio_vsock_pkt* @kzalloc(i32 24, i32 %18)
  store %struct.virtio_vsock_pkt* %19, %struct.virtio_vsock_pkt** %4, align 8
  %20 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %21 = icmp ne %struct.virtio_vsock_pkt* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %73

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  %27 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %28 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %30 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %35 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %34)
  br label %73

36:                                               ; preds = %23
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %42 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %44 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %43, i32 0, i32 3
  %45 = call i32 @sg_init_one(%struct.scatterlist* %5, i32* %44, i32 4)
  %46 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %7, i64 0, i64 0
  store %struct.scatterlist* %5, %struct.scatterlist** %46, align 16
  %47 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %48 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @sg_init_one(%struct.scatterlist* %6, i32* %49, i32 %50)
  %52 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %7, i64 0, i64 1
  store %struct.scatterlist* %6, %struct.scatterlist** %52, align 8
  %53 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  %54 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %7, i64 0, i64 0
  %55 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @virtqueue_add_sgs(%struct.virtqueue* %53, %struct.scatterlist** %54, i32 0, i32 2, %struct.virtio_vsock_pkt* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %36
  %61 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %4, align 8
  %62 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %61)
  br label %73

63:                                               ; preds = %36
  %64 = load %struct.virtio_vsock*, %struct.virtio_vsock** %2, align 8
  %65 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  %70 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %17, label %73

73:                                               ; preds = %68, %60, %33, %22
  %74 = load %struct.virtio_vsock*, %struct.virtio_vsock** %2, align 8
  %75 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.virtio_vsock*, %struct.virtio_vsock** %2, align 8
  %78 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.virtio_vsock*, %struct.virtio_vsock** %2, align 8
  %83 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.virtio_vsock*, %struct.virtio_vsock** %2, align 8
  %86 = getelementptr inbounds %struct.virtio_vsock, %struct.virtio_vsock* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %81, %73
  %88 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  %89 = call i32 @virtqueue_kick(%struct.virtqueue* %88)
  ret void
}

declare dso_local %struct.virtio_vsock_pkt* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @virtqueue_add_sgs(%struct.virtqueue*, %struct.scatterlist**, i32, i32, %struct.virtio_vsock_pkt*, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
