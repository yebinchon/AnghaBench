; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_getlink_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_getlink_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net* (%struct.net_device*)* }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net* (%struct.net_device*, %struct.net*)* @batadv_getlink_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @batadv_getlink_net(%struct.net_device* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load %struct.net*, %struct.net** %5, align 8
  store %struct.net* %11, %struct.net** %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.net* (%struct.net_device*)*, %struct.net* (%struct.net_device*)** %16, align 8
  %18 = icmp ne %struct.net* (%struct.net_device*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load %struct.net*, %struct.net** %5, align 8
  store %struct.net* %20, %struct.net** %3, align 8
  br label %29

21:                                               ; preds = %12
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.net* (%struct.net_device*)*, %struct.net* (%struct.net_device*)** %25, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call %struct.net* %26(%struct.net_device* %27)
  store %struct.net* %28, %struct.net** %3, align 8
  br label %29

29:                                               ; preds = %21, %19, %10
  %30 = load %struct.net*, %struct.net** %3, align 8
  ret %struct.net* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
