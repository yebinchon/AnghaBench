; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_channel_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_channel_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 (%struct.sock*)* }
%struct.vsock_sock = type { %struct.hvsock* }
%struct.hvsock = type { %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hvs_channel_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvs_channel_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.vsock_sock*, align 8
  %5 = alloca %struct.hvsock*, align 8
  %6 = alloca %struct.vmbus_channel*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.sock*
  store %struct.sock* %8, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %9)
  store %struct.vsock_sock* %10, %struct.vsock_sock** %4, align 8
  %11 = load %struct.vsock_sock*, %struct.vsock_sock** %4, align 8
  %12 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %11, i32 0, i32 0
  %13 = load %struct.hvsock*, %struct.hvsock** %12, align 8
  store %struct.hvsock* %13, %struct.hvsock** %5, align 8
  %14 = load %struct.hvsock*, %struct.hvsock** %5, align 8
  %15 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %14, i32 0, i32 0
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  store %struct.vmbus_channel* %16, %struct.vmbus_channel** %6, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %18 = call i64 @hvs_channel_readable(%struct.vmbus_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %22, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 %23(%struct.sock* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %6, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %27, i32 0, i32 0
  %29 = call i64 @hv_get_bytes_to_write(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %33, align 8
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 %34(%struct.sock* %35)
  br label %37

37:                                               ; preds = %31, %26
  ret void
}

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i64 @hvs_channel_readable(%struct.vmbus_channel*) #1

declare dso_local i64 @hv_get_bytes_to_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
