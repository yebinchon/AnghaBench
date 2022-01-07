; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_icmp6_dst_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_icmp6_dst_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.flowi6 = type { i32 }
%struct.rt6_info = type { %struct.TYPE_9__, %struct.inet6_dev*, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.inet6_dev = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DST_HOST = common dso_local global i32 0, align 4
@ip6_input = common dso_local global i32 0, align 4
@ip6_output = common dso_local global i32 0, align 4
@RTAX_HOPLIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @icmp6_dst_alloc(%struct.net_device* %0, %struct.flowi6* %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flowi6*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.inet6_dev*, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flowi6* %1, %struct.flowi6** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %10)
  store %struct.inet6_dev* %11, %struct.inet6_dev** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %9, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %15 = icmp ne %struct.inet6_dev* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dst_entry* @ERR_PTR(i32 %22)
  store %struct.dst_entry* %23, %struct.dst_entry** %3, align 8
  br label %92

24:                                               ; preds = %2
  %25 = load %struct.net*, %struct.net** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.rt6_info* @ip6_dst_alloc(%struct.net* %25, %struct.net_device* %26, i32 0)
  store %struct.rt6_info* %27, %struct.rt6_info** %7, align 8
  %28 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %29 = icmp ne %struct.rt6_info* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %36 = call i32 @in6_dev_put(%struct.inet6_dev* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.dst_entry* @ERR_PTR(i32 %38)
  store %struct.dst_entry* %39, %struct.dst_entry** %6, align 8
  br label %90

40:                                               ; preds = %24
  %41 = load i32, i32* @DST_HOST, align 4
  %42 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %43 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @ip6_input, align 4
  %48 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %49 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @ip6_output, align 4
  %52 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %53 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %56 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %59 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %61 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %64 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %67 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 128, i32* %68, align 8
  %69 = load %struct.inet6_dev*, %struct.inet6_dev** %8, align 8
  %70 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %71 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %70, i32 0, i32 1
  store %struct.inet6_dev* %69, %struct.inet6_dev** %71, align 8
  %72 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %73 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %72, i32 0, i32 0
  %74 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %75 = call i32 @dst_metric_set(%struct.TYPE_9__* %73, i32 %74, i32 0)
  %76 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %77 = call i32 @rt6_uncached_list_add(%struct.rt6_info* %76)
  %78 = load %struct.net*, %struct.net** %9, align 8
  %79 = getelementptr inbounds %struct.net, %struct.net* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = call i32 @atomic_inc(i32* %82)
  %84 = load %struct.net*, %struct.net** %9, align 8
  %85 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %86 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %85, i32 0, i32 0
  %87 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %88 = call i32 @flowi6_to_flowi(%struct.flowi6* %87)
  %89 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %84, %struct.TYPE_9__* %86, i32 %88, i32* null, i32 0)
  store %struct.dst_entry* %89, %struct.dst_entry** %6, align 8
  br label %90

90:                                               ; preds = %40, %34
  %91 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  store %struct.dst_entry* %91, %struct.dst_entry** %3, align 8
  br label %92

92:                                               ; preds = %90, %20
  %93 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  ret %struct.dst_entry* %93
}

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

declare dso_local %struct.rt6_info* @ip6_dst_alloc(%struct.net*, %struct.net_device*, i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dst_metric_set(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rt6_uncached_list_add(%struct.rt6_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, %struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
