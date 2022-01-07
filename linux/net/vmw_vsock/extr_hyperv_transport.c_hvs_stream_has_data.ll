; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_stream_has_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_stream_has_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { i32, %struct.hvsock* }
%struct.hvsock = type { i64, i32 }

@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*)* @hvs_stream_has_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvs_stream_has_data(%struct.vsock_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsock_sock*, align 8
  %4 = alloca %struct.hvsock*, align 8
  %5 = alloca i32, align 4
  store %struct.vsock_sock* %0, %struct.vsock_sock** %3, align 8
  %6 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %7 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %6, i32 0, i32 1
  %8 = load %struct.hvsock*, %struct.hvsock** %7, align 8
  store %struct.hvsock* %8, %struct.hvsock** %4, align 8
  %9 = load %struct.hvsock*, %struct.hvsock** %4, align 8
  %10 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.hvsock*, %struct.hvsock** %4, align 8
  %16 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hvs_channel_readable_payload(i32 %17)
  switch i32 %18, label %26 [
    i32 1, label %19
    i32 0, label %20
  ]

19:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @SEND_SHUTDOWN, align 4
  %22 = load %struct.vsock_sock*, %struct.vsock_sock** %3, align 8
  %23 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  store i32 0, i32* %5, align 4
  br label %27

26:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %20, %19
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @hvs_channel_readable_payload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
