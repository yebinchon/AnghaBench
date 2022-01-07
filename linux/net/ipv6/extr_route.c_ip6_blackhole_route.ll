; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_blackhole_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_blackhole_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.dst_entry = type { i32, i32, i32 }
%struct.rt6_info = type { i32, i32, i32, i32, i32, %struct.dst_entry }

@ip6_dst_blackhole_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_DEAD = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i32 0, align 4
@dst_discard_out = common dso_local global i32 0, align 4
@RTF_PCPU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ip6_blackhole_route(%struct.net* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.rt6_info*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %9 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %10 = bitcast %struct.dst_entry* %9 to %struct.rt6_info*
  store %struct.rt6_info* %10, %struct.rt6_info** %6, align 8
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load i32, i32* @DST_OBSOLETE_DEAD, align 4
  %16 = call %struct.rt6_info* @dst_alloc(i32* @ip6_dst_blackhole_ops, %struct.net_device* %14, i32 1, i32 %15, i32 0)
  store %struct.rt6_info* %16, %struct.rt6_info** %5, align 8
  %17 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %18 = icmp ne %struct.rt6_info* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %2
  %20 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %21 = call i32 @rt6_info_init(%struct.rt6_info* %20)
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %29 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %28, i32 0, i32 5
  store %struct.dst_entry* %29, %struct.dst_entry** %8, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @dst_discard, align 4
  %33 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %34 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @dst_discard_out, align 4
  %36 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %37 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %39 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %40 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %39, i32 0, i32 5
  %41 = call i32 @dst_copy_metrics(%struct.dst_entry* %38, %struct.dst_entry* %40)
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call i32 @in6_dev_get(%struct.net_device* %42)
  %44 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %45 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %47 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %50 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %52 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RTF_PCPU, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %58 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rt6_info*, %struct.rt6_info** %5, align 8
  %60 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %59, i32 0, i32 2
  %61 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %62 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %61, i32 0, i32 2
  %63 = call i32 @memcpy(i32* %60, i32* %62, i32 4)
  br label %64

64:                                               ; preds = %19, %2
  %65 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %66 = call i32 @dst_release(%struct.dst_entry* %65)
  %67 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %68 = icmp ne %struct.dst_entry* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  br label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.dst_entry* @ERR_PTR(i32 %73)
  br label %75

75:                                               ; preds = %71, %69
  %76 = phi %struct.dst_entry* [ %70, %69 ], [ %74, %71 ]
  ret %struct.dst_entry* %76
}

declare dso_local %struct.rt6_info* @dst_alloc(i32*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rt6_info_init(%struct.rt6_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dst_copy_metrics(%struct.dst_entry*, %struct.dst_entry*) #1

declare dso_local i32 @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
