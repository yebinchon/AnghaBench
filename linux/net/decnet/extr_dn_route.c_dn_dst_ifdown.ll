; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.dn_route = type { %struct.neighbour* }
%struct.neighbour = type { %struct.net_device* }
%struct.TYPE_2__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.net_device*, i32)* @dn_dst_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_route*, align 8
  %8 = alloca %struct.neighbour*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %13 = bitcast %struct.dst_entry* %12 to %struct.dn_route*
  store %struct.dn_route* %13, %struct.dn_route** %7, align 8
  %14 = load %struct.dn_route*, %struct.dn_route** %7, align 8
  %15 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %14, i32 0, i32 0
  %16 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  store %struct.neighbour* %16, %struct.neighbour** %8, align 8
  %17 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %18 = icmp ne %struct.neighbour* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp eq %struct.net_device* %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 0
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %33 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = call i32 @dev_hold(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @dev_put(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %25, %19, %11
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
