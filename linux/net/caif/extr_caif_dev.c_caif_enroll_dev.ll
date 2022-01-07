; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_caif_enroll_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_dev.c_caif_enroll_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.caif_dev_common = type { i32, i32 }
%struct.cflayer = type { i32, i32 }
%struct.sk_buff = type opaque
%struct.packet_type = type opaque
%struct.caif_device_entry = type { %struct.cflayer, i32, i32 }
%struct.cfcnfg = type { i32 }
%struct.caif_device_entry_list = type { i32, i32 }
%struct.sk_buff.0 = type opaque
%struct.packet_type.1 = type opaque

@CFPHYPREF_HIGH_BW = common dso_local global i32 0, align 4
@CFPHYPREF_LOW_LAT = common dso_local global i32 0, align 4
@transmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @caif_enroll_dev(%struct.net_device* %0, %struct.caif_dev_common* %1, %struct.cflayer* %2, i32 %3, %struct.cflayer** %4, i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)** %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.caif_dev_common*, align 8
  %9 = alloca %struct.cflayer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cflayer**, align 8
  %12 = alloca i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)**, align 8
  %13 = alloca %struct.caif_device_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cfcnfg*, align 8
  %16 = alloca %struct.caif_device_entry_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.caif_dev_common* %1, %struct.caif_dev_common** %8, align 8
  store %struct.cflayer* %2, %struct.cflayer** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.cflayer** %4, %struct.cflayer*** %11, align 8
  store i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)** %5, i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*** %12, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 @dev_net(%struct.net_device* %17)
  %19 = call %struct.cfcnfg* @get_cfcnfg(i32 %18)
  store %struct.cfcnfg* %19, %struct.cfcnfg** %15, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @dev_net(%struct.net_device* %20)
  %22 = call %struct.caif_device_entry_list* @caif_device_list(i32 %21)
  store %struct.caif_device_entry_list* %22, %struct.caif_device_entry_list** %16, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call %struct.caif_device_entry* @caif_device_alloc(%struct.net_device* %23)
  store %struct.caif_device_entry* %24, %struct.caif_device_entry** %13, align 8
  %25 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %26 = icmp ne %struct.caif_device_entry* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  br label %83

28:                                               ; preds = %6
  %29 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %30 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %29, i32 0, i32 0
  %31 = load %struct.cflayer**, %struct.cflayer*** %11, align 8
  store %struct.cflayer* %30, %struct.cflayer** %31, align 8
  %32 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %33 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %32, i32 0, i32 2
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.caif_dev_common*, %struct.caif_dev_common** %8, align 8
  %36 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %42 [
    i32 129, label %38
    i32 128, label %40
  ]

38:                                               ; preds = %28
  %39 = load i32, i32* @CFPHYPREF_HIGH_BW, align 4
  store i32 %39, i32* %14, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @CFPHYPREF_LOW_LAT, align 4
  store i32 %41, i32* %14, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @CFPHYPREF_HIGH_BW, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %42, %40, %38
  %45 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %16, align 8
  %46 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %49 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %48, i32 0, i32 1
  %50 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %16, align 8
  %51 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %50, i32 0, i32 1
  %52 = call i32 @list_add_rcu(i32* %49, i32* %51)
  %53 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %54 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlcpy(i32 %56, i32 %59, i32 4)
  %61 = load i32, i32* @transmit, align 4
  %62 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %63 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.cfcnfg*, %struct.cfcnfg** %15, align 8
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = load %struct.caif_device_entry*, %struct.caif_device_entry** %13, align 8
  %68 = getelementptr inbounds %struct.caif_device_entry, %struct.caif_device_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.cflayer*, %struct.cflayer** %9, align 8
  %71 = load %struct.caif_dev_common*, %struct.caif_dev_common** %8, align 8
  %72 = getelementptr inbounds %struct.caif_dev_common, %struct.caif_dev_common* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @cfcnfg_add_phy_layer(%struct.cfcnfg* %65, %struct.net_device* %66, %struct.cflayer* %68, i32 %69, %struct.cflayer* %70, i32 %73, i32 %74)
  %76 = load %struct.caif_device_entry_list*, %struct.caif_device_entry_list** %16, align 8
  %77 = getelementptr inbounds %struct.caif_device_entry_list, %struct.caif_device_entry_list* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)**, i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*** %12, align 8
  %80 = icmp ne i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)** %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %44
  %82 = load i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)**, i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*** %12, align 8
  store i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* bitcast (i32 (%struct.sk_buff.0*, %struct.net_device*, %struct.packet_type.1*, %struct.net_device*)* @receive to i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)*), i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)** %82, align 8
  br label %83

83:                                               ; preds = %27, %81, %44
  ret void
}

declare dso_local %struct.cfcnfg* @get_cfcnfg(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.caif_device_entry_list* @caif_device_list(i32) #1

declare dso_local %struct.caif_device_entry* @caif_device_alloc(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @cfcnfg_add_phy_layer(%struct.cfcnfg*, %struct.net_device*, %struct.cflayer*, i32, %struct.cflayer*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @receive(%struct.sk_buff.0*, %struct.net_device*, %struct.packet_type.1*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
