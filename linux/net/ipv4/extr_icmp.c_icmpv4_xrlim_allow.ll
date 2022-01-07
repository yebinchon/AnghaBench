; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmpv4_xrlim_allow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmpv4_xrlim_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.rtable = type { %struct.dst_entry }
%struct.dst_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.flowi4 = type { i32 }
%struct.inet_peer = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.rtable*, %struct.flowi4*, i32, i32)* @icmpv4_xrlim_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv4_xrlim_allow(%struct.net* %0, %struct.rtable* %1, %struct.flowi4* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.flowi4*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.inet_peer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.rtable* %1, %struct.rtable** %7, align 8
  store %struct.flowi4* %2, %struct.flowi4** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.rtable*, %struct.rtable** %7, align 8
  %16 = getelementptr inbounds %struct.rtable, %struct.rtable* %15, i32 0, i32 0
  store %struct.dst_entry* %16, %struct.dst_entry** %11, align 8
  store i32 1, i32* %13, align 4
  %17 = load %struct.net*, %struct.net** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @icmpv4_mask_allow(%struct.net* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %64

23:                                               ; preds = %5
  %24 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %25 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %30 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_LOOPBACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %64

38:                                               ; preds = %28, %23
  %39 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %40 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @l3mdev_master_ifindex(%struct.TYPE_4__* %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.net*, %struct.net** %6, align 8
  %44 = getelementptr inbounds %struct.net, %struct.net* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.flowi4*, %struct.flowi4** %8, align 8
  %48 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call %struct.inet_peer* @inet_getpeer_v4(i32 %46, i32 %49, i32 %50, i32 1)
  store %struct.inet_peer* %51, %struct.inet_peer** %12, align 8
  %52 = load %struct.inet_peer*, %struct.inet_peer** %12, align 8
  %53 = load %struct.net*, %struct.net** %6, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @inet_peer_xrlim_allow(%struct.inet_peer* %52, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.inet_peer*, %struct.inet_peer** %12, align 8
  %59 = icmp ne %struct.inet_peer* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %38
  %61 = load %struct.inet_peer*, %struct.inet_peer** %12, align 8
  %62 = call i32 @inet_putpeer(%struct.inet_peer* %61)
  br label %63

63:                                               ; preds = %60, %38
  br label %64

64:                                               ; preds = %63, %37, %22
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i64 @icmpv4_mask_allow(%struct.net*, i32, i32) #1

declare dso_local i32 @l3mdev_master_ifindex(%struct.TYPE_4__*) #1

declare dso_local %struct.inet_peer* @inet_getpeer_v4(i32, i32, i32, i32) #1

declare dso_local i32 @inet_peer_xrlim_allow(%struct.inet_peer*, i32) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
