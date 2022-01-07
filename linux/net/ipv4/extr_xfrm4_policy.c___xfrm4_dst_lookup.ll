; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c___xfrm4_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c___xfrm4_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rtable = type { %struct.dst_entry }

@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, %struct.flowi4*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @__xfrm4_dst_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @__xfrm4_dst_lookup(%struct.net* %0, %struct.flowi4* %1, i32 %2, i32 %3, %struct.TYPE_4__* %4, %struct.TYPE_4__* %5, i32 %6) #0 {
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.flowi4*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.flowi4* %1, %struct.flowi4** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %18 = call i32 @memset(%struct.flowi4* %17, i32 0, i32 24)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %23 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %26 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net*, %struct.net** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @l3mdev_master_ifindex_by_index(%struct.net* %27, i32 %28)
  %30 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %31 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %34 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %7
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %42 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %7
  %44 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %45 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %46 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net*, %struct.net** %9, align 8
  %48 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %49 = call %struct.rtable* @__ip_route_output_key(%struct.net* %47, %struct.flowi4* %48)
  store %struct.rtable* %49, %struct.rtable** %16, align 8
  %50 = load %struct.rtable*, %struct.rtable** %16, align 8
  %51 = call i32 @IS_ERR(%struct.rtable* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load %struct.rtable*, %struct.rtable** %16, align 8
  %55 = getelementptr inbounds %struct.rtable, %struct.rtable* %54, i32 0, i32 0
  store %struct.dst_entry* %55, %struct.dst_entry** %8, align 8
  br label %59

56:                                               ; preds = %43
  %57 = load %struct.rtable*, %struct.rtable** %16, align 8
  %58 = call %struct.dst_entry* @ERR_CAST(%struct.rtable* %57)
  store %struct.dst_entry* %58, %struct.dst_entry** %8, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  ret %struct.dst_entry* %60
}

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @l3mdev_master_ifindex_by_index(%struct.net*, i32) #1

declare dso_local %struct.rtable* @__ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local %struct.dst_entry* @ERR_CAST(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
