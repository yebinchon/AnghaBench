; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mif6_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_mif6_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32, i32, i32, %struct.vif_device* }
%struct.vif_device = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@FIB_EVENT_VIF_DEL = common dso_local global i32 0, align 4
@mrt_lock = common dso_local global i32 0, align 4
@RTM_NEWNETCONF = common dso_local global i32 0, align 4
@NETCONFA_MC_FORWARDING = common dso_local global i32 0, align 4
@MIFF_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, i32, i32, %struct.list_head*)* @mif6_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mif6_delete(%struct.mr_table* %0, i32 %1, i32 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.vif_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.inet6_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %19 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %4
  %23 = load i32, i32* @EADDRNOTAVAIL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %129

25:                                               ; preds = %16
  %26 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %27 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %26, i32 0, i32 4
  %28 = load %struct.vif_device*, %struct.vif_device** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %28, i64 %30
  store %struct.vif_device* %31, %struct.vif_device** %10, align 8
  %32 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @VIF_EXISTS(%struct.mr_table* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %38 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %37, i32 0, i32 3
  %39 = call i32 @read_pnet(i32* %38)
  %40 = load i32, i32* @FIB_EVENT_VIF_DEL, align 4
  %41 = load %struct.vif_device*, %struct.vif_device** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %44 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @call_ip6mr_vif_entry_notifiers(i32 %39, i32 %40, %struct.vif_device* %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %25
  %48 = call i32 @write_lock_bh(i32* @mrt_lock)
  %49 = load %struct.vif_device*, %struct.vif_device** %10, align 8
  %50 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %49, i32 0, i32 1
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  store %struct.net_device* %51, %struct.net_device** %11, align 8
  %52 = load %struct.vif_device*, %struct.vif_device** %10, align 8
  %53 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %52, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %11, align 8
  %55 = icmp ne %struct.net_device* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = call i32 @write_unlock_bh(i32* @mrt_lock)
  %58 = load i32, i32* @EADDRNOTAVAIL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %129

60:                                               ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %64 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %80, %67
  %71 = load i32, i32* %13, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i64 @VIF_EXISTS(%struct.mr_table* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %83

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %13, align 4
  br label %70

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  %86 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %87 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %60
  %89 = call i32 @write_unlock_bh(i32* @mrt_lock)
  %90 = load %struct.net_device*, %struct.net_device** %11, align 8
  %91 = call i32 @dev_set_allmulti(%struct.net_device* %90, i32 -1)
  %92 = load %struct.net_device*, %struct.net_device** %11, align 8
  %93 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %92)
  store %struct.inet6_dev* %93, %struct.inet6_dev** %12, align 8
  %94 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %95 = icmp ne %struct.inet6_dev* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %88
  %97 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %98 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.net_device*, %struct.net_device** %11, align 8
  %103 = call i32 @dev_net(%struct.net_device* %102)
  %104 = load i32, i32* @RTM_NEWNETCONF, align 4
  %105 = load i32, i32* @NETCONFA_MC_FORWARDING, align 4
  %106 = load %struct.net_device*, %struct.net_device** %11, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  %110 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %109, i32 0, i32 0
  %111 = call i32 @inet6_netconf_notify_devconf(i32 %103, i32 %104, i32 %105, i32 %108, %struct.TYPE_2__* %110)
  br label %112

112:                                              ; preds = %96, %88
  %113 = load %struct.vif_device*, %struct.vif_device** %10, align 8
  %114 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MIFF_REGISTER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load %struct.net_device*, %struct.net_device** %11, align 8
  %124 = load %struct.list_head*, %struct.list_head** %9, align 8
  %125 = call i32 @unregister_netdevice_queue(%struct.net_device* %123, %struct.list_head* %124)
  br label %126

126:                                              ; preds = %122, %119, %112
  %127 = load %struct.net_device*, %struct.net_device** %11, align 8
  %128 = call i32 @dev_put(%struct.net_device* %127)
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %56, %22
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @VIF_EXISTS(%struct.mr_table*, i32) #1

declare dso_local i32 @call_ip6mr_vif_entry_notifiers(i32, i32, %struct.vif_device*, i32, i32) #1

declare dso_local i32 @read_pnet(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @inet6_netconf_notify_devconf(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
