; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_policy.c_xfrm6_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_policy.c_xfrm6_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i32, i32 }

@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, i32, i32, i32*, i32*, i32)* @xfrm6_dst_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @xfrm6_dst_lookup(%struct.net* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.flowi6, align 4
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = call i32 @memset(%struct.flowi6* %13, i32 0, i32 20)
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @l3mdev_master_ifindex_by_index(%struct.net* %17, i32 %18)
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %22 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 1
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @memcpy(i32* %25, i32* %26, i32 4)
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %13, i32 0, i32 0
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @memcpy(i32* %31, i32* %32, i32 4)
  br label %34

34:                                               ; preds = %30, %6
  %35 = load %struct.net*, %struct.net** %7, align 8
  %36 = call %struct.dst_entry* @ip6_route_output(%struct.net* %35, i32* null, %struct.flowi6* %13)
  store %struct.dst_entry* %36, %struct.dst_entry** %14, align 8
  %37 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %38 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %41 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %46 = call i32 @dst_release(%struct.dst_entry* %45)
  %47 = load i32, i32* %15, align 4
  %48 = call %struct.dst_entry* @ERR_PTR(i32 %47)
  store %struct.dst_entry* %48, %struct.dst_entry** %14, align 8
  br label %49

49:                                               ; preds = %44, %34
  %50 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  ret %struct.dst_entry* %50
}

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @l3mdev_master_ifindex_by_index(%struct.net*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi6*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
