; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_leave_snoopers.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_leave_snoopers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.in_device = type { i32 }

@INADDR_ALLSNOOPERS_GROUP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*)* @br_ip4_multicast_leave_snoopers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_ip4_multicast_leave_snoopers(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  %3 = alloca %struct.in_device*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %5 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.in_device* @in_dev_get(i32 %6)
  store %struct.in_device* %7, %struct.in_device** %3, align 8
  %8 = load %struct.in_device*, %struct.in_device** %3, align 8
  %9 = icmp ne %struct.in_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.in_device*, %struct.in_device** %3, align 8
  %17 = load i32, i32* @INADDR_ALLSNOOPERS_GROUP, align 4
  %18 = call i32 @htonl(i32 %17)
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call i32 @__ip_mc_dec_group(%struct.in_device* %16, i32 %18, i32 %19)
  %21 = load %struct.in_device*, %struct.in_device** %3, align 8
  %22 = call i32 @in_dev_put(%struct.in_device* %21)
  br label %23

23:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.in_device* @in_dev_get(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__ip_mc_dec_group(%struct.in_device*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
