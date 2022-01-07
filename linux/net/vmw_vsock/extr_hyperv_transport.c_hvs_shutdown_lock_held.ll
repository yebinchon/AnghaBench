; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_shutdown_lock_held.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_shutdown_lock_held.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvsock = type { i32, i32 }
%struct.vmpipe_proto_header = type { i32 }
%struct.hvs_send_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvsock*, i32)* @hvs_shutdown_lock_held to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvs_shutdown_lock_held(%struct.hvsock* %0, i32 %1) #0 {
  %3 = alloca %struct.hvsock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmpipe_proto_header, align 4
  store %struct.hvsock* %0, %struct.hvsock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %7 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %12 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %2
  br label %24

16:                                               ; preds = %10
  %17 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %18 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %struct.vmpipe_proto_header* %5 to %struct.hvs_send_buf*
  %21 = call i32 @hvs_send_data(i32 %19, %struct.hvs_send_buf* %20, i32 0)
  %22 = load %struct.hvsock*, %struct.hvsock** %3, align 8
  %23 = getelementptr inbounds %struct.hvsock, %struct.hvsock* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @hvs_send_data(i32, %struct.hvs_send_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
