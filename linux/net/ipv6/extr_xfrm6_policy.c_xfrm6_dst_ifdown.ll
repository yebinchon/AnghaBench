; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_policy.c_xfrm6_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_policy.c_xfrm6_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.xfrm_dst = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.inet6_dev* }
%struct.inet6_dev = type { %struct.net_device* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.net_device*, i32)* @xfrm6_dst_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm6_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_dst*, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %63

12:                                               ; preds = %3
  %13 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %14 = bitcast %struct.dst_entry* %13 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %14, %struct.xfrm_dst** %7, align 8
  %15 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %18, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp eq %struct.net_device* %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %12
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call %struct.TYPE_8__* @dev_net(%struct.net_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.inet6_dev* @in6_dev_get(i32 %28)
  store %struct.inet6_dev* %29, %struct.inet6_dev** %8, align 8
  br label %30

30:                                               ; preds = %49, %24
  %31 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %32 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %34, align 8
  %36 = call i32 @in6_dev_put(%struct.inet6_dev* %35)
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %38 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %39 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.inet6_dev* %37, %struct.inet6_dev** %41, align 8
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %43 = call i32 @in6_dev_hold(%struct.inet6_dev* %42)
  %44 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %45 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i64 @xfrm_dst_child(%struct.TYPE_7__* %46)
  %48 = inttoptr i64 %47 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %48, %struct.xfrm_dst** %7, align 8
  br label %49

49:                                               ; preds = %30
  %50 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %51 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %30, label %56

56:                                               ; preds = %49
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %58 = call i32 @__in6_dev_put(%struct.inet6_dev* %57)
  br label %59

59:                                               ; preds = %56, %12
  %60 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @xfrm_dst_ifdown(%struct.dst_entry* %60, %struct.net_device* %61)
  br label %63

63:                                               ; preds = %59, %11
  ret void
}

declare dso_local %struct.inet6_dev* @in6_dev_get(i32) #1

declare dso_local %struct.TYPE_8__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @in6_dev_hold(%struct.inet6_dev*) #1

declare dso_local i64 @xfrm_dst_child(%struct.TYPE_7__*) #1

declare dso_local i32 @__in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @xfrm_dst_ifdown(%struct.dst_entry*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
