; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i64, i32, %struct.net_device*, i32 }
%struct.sock = type { i64 }
%struct.net_device = type { i32 }

@tls_device_sk_destruct = common dso_local global i64 0, align 8
@tls_device_lock = common dso_local global i32 0, align 4
@tls_device_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_context*, %struct.sock*, %struct.net_device*)* @tls_device_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_device_attach(%struct.tls_context* %0, %struct.sock* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.tls_context*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.tls_context* %0, %struct.tls_context** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %7 = load %struct.sock*, %struct.sock** %5, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @tls_device_sk_destruct, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %14 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %13, i32 0, i32 3
  %15 = call i32 @refcount_set(i32* %14, i32 1)
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i32 @dev_hold(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %20 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %19, i32 0, i32 2
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = call i32 @spin_lock_irq(i32* @tls_device_lock)
  %22 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %23 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %22, i32 0, i32 1
  %24 = call i32 @list_add_tail(i32* %23, i32* @tls_device_list)
  %25 = call i32 @spin_unlock_irq(i32* @tls_device_lock)
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %30 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @tls_device_sk_destruct, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
