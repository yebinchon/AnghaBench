; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_do_socket_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_virtio_transport_common.c_virtio_transport_do_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.virtio_vsock_sock* }
%struct.virtio_vsock_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.vsock_sock* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_DEFAULT_BUF_SIZE = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_DEFAULT_MIN_BUF_SIZE = common dso_local global i32 0, align 4
@VIRTIO_VSOCK_DEFAULT_MAX_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_transport_do_socket_init(%struct.vsock_sock* %0, %struct.vsock_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.vsock_sock*, align 8
  %6 = alloca %struct.virtio_vsock_sock*, align 8
  %7 = alloca %struct.virtio_vsock_sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store %struct.vsock_sock* %1, %struct.vsock_sock** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.virtio_vsock_sock* @kzalloc(i32 40, i32 %8)
  store %struct.virtio_vsock_sock* %9, %struct.virtio_vsock_sock** %6, align 8
  %10 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %11 = icmp ne %struct.virtio_vsock_sock* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %17 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %18 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %17, i32 0, i32 0
  store %struct.virtio_vsock_sock* %16, %struct.virtio_vsock_sock** %18, align 8
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %20 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %21 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %20, i32 0, i32 8
  store %struct.vsock_sock* %19, %struct.vsock_sock** %21, align 8
  %22 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %23 = icmp ne %struct.vsock_sock* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %15
  %25 = load %struct.vsock_sock*, %struct.vsock_sock** %5, align 8
  %26 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %25, i32 0, i32 0
  %27 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %26, align 8
  store %struct.virtio_vsock_sock* %27, %struct.virtio_vsock_sock** %7, align 8
  %28 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %7, align 8
  %29 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %32 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %7, align 8
  %34 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %37 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %7, align 8
  %39 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %42 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %7, align 8
  %44 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %47 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  br label %58

48:                                               ; preds = %15
  %49 = load i32, i32* @VIRTIO_VSOCK_DEFAULT_BUF_SIZE, align 4
  %50 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %51 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @VIRTIO_VSOCK_DEFAULT_MIN_BUF_SIZE, align 4
  %53 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %54 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @VIRTIO_VSOCK_DEFAULT_MAX_BUF_SIZE, align 4
  %56 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %57 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %24
  %59 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %60 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %63 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %65 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %64, i32 0, i32 2
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %68 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %67, i32 0, i32 1
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.virtio_vsock_sock*, %struct.virtio_vsock_sock** %6, align 8
  %71 = getelementptr inbounds %struct.virtio_vsock_sock, %struct.virtio_vsock_sock* %70, i32 0, i32 0
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %58, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.virtio_vsock_sock* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
