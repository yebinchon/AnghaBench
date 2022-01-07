; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_sock_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.hvsock* }
%struct.hvsock = type { %struct.vsock_sock* }
%struct.sock = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RINGBUFFER_HVS_SND_SIZE = common dso_local global i32 0, align 4
@RINGBUFFER_HVS_RCV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*, %struct.vsock_sock*)* @hvs_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvs_sock_init(%struct.vsock_sock* %0, %struct.vsock_sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.vsock_sock*, align 8
  %6 = alloca %struct.hvsock*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %4, align 8
  store %struct.vsock_sock* %1, %struct.vsock_sock** %5, align 8
  %8 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %9 = call %struct.sock* @sk_vsock(%struct.vsock_sock* %8)
  store %struct.sock* %9, %struct.sock** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hvsock* @kzalloc(i32 8, i32 %10)
  store %struct.hvsock* %11, %struct.hvsock** %6, align 8
  %12 = load %struct.hvsock*, %struct.hvsock** %6, align 8
  %13 = icmp ne %struct.hvsock* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.hvsock*, %struct.hvsock** %6, align 8
  %19 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %20 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %19, i32 0, i32 0
  store %struct.hvsock* %18, %struct.hvsock** %20, align 8
  %21 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %22 = load %struct.hvsock*, %struct.hvsock** %6, align 8
  %23 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %22, i32 0, i32 0
  store %struct.vsock_sock* %21, %struct.vsock_sock** %23, align 8
  %24 = load i32, i32* @RINGBUFFER_HVS_SND_SIZE, align 4
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @RINGBUFFER_HVS_RCV_SIZE, align 4
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.sock* @sk_vsock(%struct.vsock_sock*) #1

declare dso_local %struct.hvsock* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
