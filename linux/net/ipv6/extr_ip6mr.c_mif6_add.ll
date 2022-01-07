; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mif6_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mif6_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.mr_table = type { i32, i32, i32, %struct.vif_device* }
%struct.vif_device = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mif6ctl = type { i32, i32, i32, i32, i32 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_NEWNETCONF = common dso_local global i32 0, align 4
@NETCONFA_MC_FORWARDING = common dso_local global i32 0, align 4
@VIFF_STATIC = common dso_local global i32 0, align 4
@mrt_lock = common dso_local global i32 0, align 4
@FIB_EVENT_VIF_ADD = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.mr_table*, %struct.mif6ctl*, i32)* @mif6_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mif6_add(%struct.net* %0, %struct.mr_table* %1, %struct.mif6ctl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.mr_table*, align 8
  %8 = alloca %struct.mif6ctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.inet6_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.mr_table* %1, %struct.mr_table** %7, align 8
  store %struct.mif6ctl* %2, %struct.mif6ctl** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mif6ctl*, %struct.mif6ctl** %8, align 8
  %16 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %19 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %18, i32 0, i32 3
  %20 = load %struct.vif_device*, %struct.vif_device** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %20, i64 %22
  store %struct.vif_device* %23, %struct.vif_device** %11, align 8
  %24 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @VIF_EXISTS(%struct.mr_table* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EADDRINUSE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %126

31:                                               ; preds = %4
  %32 = load %struct.mif6ctl*, %struct.mif6ctl** %8, align 8
  %33 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %56 [
    i32 0, label %35
  ]

35:                                               ; preds = %31
  %36 = load %struct.net*, %struct.net** %6, align 8
  %37 = load %struct.mif6ctl*, %struct.mif6ctl** %8, align 8
  %38 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.net_device* @dev_get_by_index(%struct.net* %36, i32 %39)
  store %struct.net_device* %40, %struct.net_device** %12, align 8
  %41 = load %struct.net_device*, %struct.net_device** %12, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EADDRNOTAVAIL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %126

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %12, align 8
  %48 = call i32 @dev_set_allmulti(%struct.net_device* %47, i32 1)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %12, align 8
  %53 = call i32 @dev_put(%struct.net_device* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %126

55:                                               ; preds = %46
  br label %59

56:                                               ; preds = %31
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %126

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %60)
  store %struct.inet6_dev* %61, %struct.inet6_dev** %13, align 8
  %62 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %63 = icmp ne %struct.inet6_dev* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %66 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.net_device*, %struct.net_device** %12, align 8
  %71 = call i32 @dev_net(%struct.net_device* %70)
  %72 = load i32, i32* @RTM_NEWNETCONF, align 4
  %73 = load i32, i32* @NETCONFA_MC_FORWARDING, align 4
  %74 = load %struct.net_device*, %struct.net_device** %12, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.inet6_dev*, %struct.inet6_dev** %13, align 8
  %78 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %77, i32 0, i32 0
  %79 = call i32 @inet6_netconf_notify_devconf(i32 %71, i32 %72, i32 %73, i32 %76, %struct.TYPE_2__* %78)
  br label %80

80:                                               ; preds = %64, %59
  %81 = load %struct.vif_device*, %struct.vif_device** %11, align 8
  %82 = load %struct.net_device*, %struct.net_device** %12, align 8
  %83 = load %struct.mif6ctl*, %struct.mif6ctl** %8, align 8
  %84 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mif6ctl*, %struct.mif6ctl** %8, align 8
  %87 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mif6ctl*, %struct.mif6ctl** %8, align 8
  %90 = getelementptr inbounds %struct.mif6ctl, %struct.mif6ctl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %80
  %95 = load i32, i32* @VIFF_STATIC, align 4
  br label %97

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = or i32 %91, %98
  %100 = call i32 @vif_device_init(%struct.vif_device* %81, %struct.net_device* %82, i32 %85, i32 %88, i32 %99, i32 128)
  %101 = call i32 @write_lock_bh(i32* @mrt_lock)
  %102 = load %struct.net_device*, %struct.net_device** %12, align 8
  %103 = load %struct.vif_device*, %struct.vif_device** %11, align 8
  %104 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %103, i32 0, i32 1
  store %struct.net_device* %102, %struct.net_device** %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %108 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %115 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %97
  %117 = call i32 @write_unlock_bh(i32* @mrt_lock)
  %118 = load %struct.net*, %struct.net** %6, align 8
  %119 = load i32, i32* @FIB_EVENT_VIF_ADD, align 4
  %120 = load %struct.vif_device*, %struct.vif_device** %11, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %123 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @call_ip6mr_vif_entry_notifiers(%struct.net* %118, i32 %119, %struct.vif_device* %120, i32 %121, i32 %124)
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %116, %56, %51, %43, %28
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @VIF_EXISTS(%struct.mr_table*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @inet6_netconf_notify_devconf(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @vif_device_init(%struct.vif_device*, %struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @call_ip6mr_vif_entry_notifiers(%struct.net*, i32, %struct.vif_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
