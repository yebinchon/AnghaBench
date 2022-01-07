; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_channel_writable_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_channel_writable_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmbus_channel*)* @hvs_channel_writable_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hvs_channel_writable_bytes(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 0
  %8 = call i64 @hv_get_bytes_to_write(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @HVS_PKT_LEN(i32 1)
  %11 = call i64 @HVS_PKT_LEN(i32 0)
  %12 = add nsw i64 %10, %11
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @HVS_PKT_LEN(i32 1)
  %18 = sub nsw i64 %16, %17
  %19 = call i64 @HVS_PKT_LEN(i32 0)
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @round_down(i64 %21, i32 8)
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @hv_get_bytes_to_write(i32*) #1

declare dso_local i64 @HVS_PKT_LEN(i32) #1

declare dso_local i64 @round_down(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
