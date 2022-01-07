; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_get_netdev_for_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_get_netdev_for_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.dst_entry = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.sock*)* @get_netdev_for_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @get_netdev_for_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.dst_entry* @sk_dst_get(%struct.sock* %5)
  store %struct.dst_entry* %6, %struct.dst_entry** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  %7 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %8 = call i64 @likely(%struct.dst_entry* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @dev_hold(%struct.net_device* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %18 = call i32 @dst_release(%struct.dst_entry* %17)
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %19
}

declare dso_local %struct.dst_entry* @sk_dst_get(%struct.sock*) #1

declare dso_local i64 @likely(%struct.dst_entry*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
