; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_dev_sysctl_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_dev_sysctl_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mpls_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ctl_table* }
%struct.ctl_table = type { i32 }
%struct.net = type { i32 }

@RTM_DELNETCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.mpls_dev*)* @mpls_dev_sysctl_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpls_dev_sysctl_unregister(%struct.net_device* %0, %struct.mpls_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mpls_dev*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.mpls_dev* %1, %struct.mpls_dev** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net* @dev_net(%struct.net_device* %7)
  store %struct.net* %8, %struct.net** %5, align 8
  %9 = load %struct.mpls_dev*, %struct.mpls_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mpls_dev, %struct.mpls_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  store %struct.ctl_table* %13, %struct.ctl_table** %6, align 8
  %14 = load %struct.mpls_dev*, %struct.mpls_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mpls_dev, %struct.mpls_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @unregister_net_sysctl_table(%struct.TYPE_2__* %16)
  %18 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %19 = call i32 @kfree(%struct.ctl_table* %18)
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = load i32, i32* @RTM_DELNETCONF, align 4
  %22 = load %struct.mpls_dev*, %struct.mpls_dev** %4, align 8
  %23 = call i32 @mpls_netconf_notify_devconf(%struct.net* %20, i32 %21, i32 0, %struct.mpls_dev* %22)
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @unregister_net_sysctl_table(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.ctl_table*) #1

declare dso_local i32 @mpls_netconf_notify_devconf(%struct.net*, i32, i32, %struct.mpls_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
