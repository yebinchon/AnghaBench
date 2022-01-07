; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_xsk_configure_socket.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdpsock_user.c_xsk_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket_info = type { %struct.xsk_umem_info*, i32, i32, i32 }
%struct.xsk_umem_info = type { i32, i32 }
%struct.xsk_socket_config = type { i32, i32, i32, i64, i32 }

@errno = common dso_local global i32 0, align 4
@XSK_RING_CONS__DEFAULT_NUM_DESCS = common dso_local global i32 0, align 4
@XSK_RING_PROD__DEFAULT_NUM_DESCS = common dso_local global i32 0, align 4
@opt_xdp_flags = common dso_local global i32 0, align 4
@opt_xdp_bind_flags = common dso_local global i32 0, align 4
@opt_if = common dso_local global i32 0, align 4
@opt_queue = common dso_local global i32 0, align 4
@opt_ifindex = common dso_local global i32 0, align 4
@prog_id = common dso_local global i32 0, align 4
@opt_xsk_frame_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xsk_socket_info* (%struct.xsk_umem_info*)* @xsk_configure_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xsk_socket_info* @xsk_configure_socket(%struct.xsk_umem_info* %0) #0 {
  %2 = alloca %struct.xsk_umem_info*, align 8
  %3 = alloca %struct.xsk_socket_config, align 8
  %4 = alloca %struct.xsk_socket_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xsk_umem_info* %0, %struct.xsk_umem_info** %2, align 8
  %8 = call %struct.xsk_socket_info* @calloc(i32 1, i32 24)
  store %struct.xsk_socket_info* %8, %struct.xsk_socket_info** %4, align 8
  %9 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %10 = icmp ne %struct.xsk_socket_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @exit_with_error(i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %2, align 8
  %16 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %17 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %16, i32 0, i32 0
  store %struct.xsk_umem_info* %15, %struct.xsk_umem_info** %17, align 8
  %18 = load i32, i32* @XSK_RING_CONS__DEFAULT_NUM_DESCS, align 4
  %19 = getelementptr inbounds %struct.xsk_socket_config, %struct.xsk_socket_config* %3, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @XSK_RING_PROD__DEFAULT_NUM_DESCS, align 4
  %21 = getelementptr inbounds %struct.xsk_socket_config, %struct.xsk_socket_config* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.xsk_socket_config, %struct.xsk_socket_config* %3, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @opt_xdp_flags, align 4
  %24 = getelementptr inbounds %struct.xsk_socket_config, %struct.xsk_socket_config* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @opt_xdp_bind_flags, align 4
  %26 = getelementptr inbounds %struct.xsk_socket_config, %struct.xsk_socket_config* %3, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %28 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %27, i32 0, i32 3
  %29 = load i32, i32* @opt_if, align 4
  %30 = load i32, i32* @opt_queue, align 4
  %31 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %2, align 8
  %32 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %35 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %34, i32 0, i32 2
  %36 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %37 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %36, i32 0, i32 1
  %38 = call i32 @xsk_socket__create(i32* %28, i32 %29, i32 %30, i32 %33, i32* %35, i32* %37, %struct.xsk_socket_config* %3)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %14
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @exit_with_error(i32 %43)
  br label %45

45:                                               ; preds = %41, %14
  %46 = load i32, i32* @opt_ifindex, align 4
  %47 = load i32, i32* @opt_xdp_flags, align 4
  %48 = call i32 @bpf_get_link_xdp_id(i32 %46, i32* @prog_id, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @exit_with_error(i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %57 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %56, i32 0, i32 0
  %58 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %57, align 8
  %59 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %58, i32 0, i32 0
  %60 = load i32, i32* @XSK_RING_PROD__DEFAULT_NUM_DESCS, align 4
  %61 = call i32 @xsk_ring_prod__reserve(i32* %59, i32 %60, i32* %6)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @XSK_RING_PROD__DEFAULT_NUM_DESCS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @exit_with_error(i32 %67)
  br label %69

69:                                               ; preds = %65, %55
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @XSK_RING_PROD__DEFAULT_NUM_DESCS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @opt_xsk_frame_size, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %79 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %78, i32 0, i32 0
  %80 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %79, align 8
  %81 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %80, i32 0, i32 0
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = call i32* @xsk_ring_prod__fill_addr(i32* %81, i32 %82)
  store i32 %77, i32* %84, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %70

88:                                               ; preds = %70
  %89 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  %90 = getelementptr inbounds %struct.xsk_socket_info, %struct.xsk_socket_info* %89, i32 0, i32 0
  %91 = load %struct.xsk_umem_info*, %struct.xsk_umem_info** %90, align 8
  %92 = getelementptr inbounds %struct.xsk_umem_info, %struct.xsk_umem_info* %91, i32 0, i32 0
  %93 = load i32, i32* @XSK_RING_PROD__DEFAULT_NUM_DESCS, align 4
  %94 = call i32 @xsk_ring_prod__submit(i32* %92, i32 %93)
  %95 = load %struct.xsk_socket_info*, %struct.xsk_socket_info** %4, align 8
  ret %struct.xsk_socket_info* %95
}

declare dso_local %struct.xsk_socket_info* @calloc(i32, i32) #1

declare dso_local i32 @exit_with_error(i32) #1

declare dso_local i32 @xsk_socket__create(i32*, i32, i32, i32, i32*, i32*, %struct.xsk_socket_config*) #1

declare dso_local i32 @bpf_get_link_xdp_id(i32, i32*, i32) #1

declare dso_local i32 @xsk_ring_prod__reserve(i32*, i32, i32*) #1

declare dso_local i32* @xsk_ring_prod__fill_addr(i32*, i32) #1

declare dso_local i32 @xsk_ring_prod__submit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
