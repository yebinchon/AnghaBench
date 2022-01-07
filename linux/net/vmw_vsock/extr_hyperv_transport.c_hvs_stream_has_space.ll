; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_stream_has_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_stream_has_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_sock = type { %struct.hvsock* }
%struct.hvsock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsock_sock*)* @hvs_stream_has_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvs_stream_has_space(%struct.vsock_sock* %0) #0 {
  %2 = alloca %struct.vsock_sock*, align 8
  %3 = alloca %struct.hvsock*, align 8
  store %struct.vsock_sock* %0, %struct.vsock_sock** %2, align 8
  %4 = load %struct.vsock_sock*, %struct.vsock_sock** %2, align 8
  %5 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %4, i32 0, i32 0
  %6 = load %struct.hvsock*, %struct.hvsock** %5, align 8
  store %struct.hvsock* %6, %struct.hvsock** %3, align 8
  %7 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %8 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hvs_channel_writable_bytes(i32 %9)
  ret i32 %10
}

declare dso_local i32 @hvs_channel_writable_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
