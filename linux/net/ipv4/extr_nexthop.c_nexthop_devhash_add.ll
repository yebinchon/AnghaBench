; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_devhash_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_devhash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.nh_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nh_info*)* @nexthop_devhash_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nexthop_devhash_add(%struct.net* %0, %struct.nh_info* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nh_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nh_info* %1, %struct.nh_info** %4, align 8
  %8 = load %struct.nh_info*, %struct.nh_info** %4, align 8
  %9 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp ne %struct.net_device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nh_dev_hashfn(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.net*, %struct.net** %3, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.hlist_head*, %struct.hlist_head** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %24, i64 %26
  store %struct.hlist_head* %27, %struct.hlist_head** %6, align 8
  %28 = load %struct.nh_info*, %struct.nh_info** %4, align 8
  %29 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %28, i32 0, i32 0
  %30 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %31 = call i32 @hlist_add_head(i32* %29, %struct.hlist_head* %30)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nh_dev_hashfn(i32) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
