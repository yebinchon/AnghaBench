; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c___br_mdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c___br_mdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_bridge = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.br_mdb_entry = type { i64, i32 }
%struct.br_ip = type { i32 }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { i64, %struct.net_bridge* }

@BROPT_MULTICAST_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_bridge*, %struct.br_mdb_entry*)* @__br_mdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__br_mdb_add(%struct.net* %0, %struct.net_bridge* %1, %struct.br_mdb_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.br_mdb_entry*, align 8
  %8 = alloca %struct.br_ip, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_bridge_port*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.net_bridge* %1, %struct.net_bridge** %6, align 8
  store %struct.br_mdb_entry* %2, %struct.br_mdb_entry** %7, align 8
  store %struct.net_bridge_port* null, %struct.net_bridge_port** %10, align 8
  %12 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @netif_running(%struct.TYPE_2__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %19 = load i32, i32* @BROPT_MULTICAST_ENABLED, align 4
  %20 = call i32 @br_opt_get(%struct.net_bridge* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %83

25:                                               ; preds = %17
  %26 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %7, align 8
  %27 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %25
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %7, align 8
  %38 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.net_device* @__dev_get_by_index(%struct.net* %36, i64 %39)
  store %struct.net_device* %40, %struct.net_device** %9, align 8
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %83

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = call %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device* %47)
  store %struct.net_bridge_port* %48, %struct.net_bridge_port** %10, align 8
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %50 = icmp ne %struct.net_bridge_port* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %53 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %52, i32 0, i32 1
  %54 = load %struct.net_bridge*, %struct.net_bridge** %53, align 8
  %55 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %56 = icmp ne %struct.net_bridge* %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %59 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BR_STATE_DISABLED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %51, %46
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %83

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %25
  %68 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %7, align 8
  %69 = call i32 @__mdb_entry_to_br_ip(%struct.br_mdb_entry* %68, %struct.br_ip* %8)
  %70 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %71 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %74 = load %struct.net_bridge_port*, %struct.net_bridge_port** %10, align 8
  %75 = load %struct.br_mdb_entry*, %struct.br_mdb_entry** %7, align 8
  %76 = getelementptr inbounds %struct.br_mdb_entry, %struct.br_mdb_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @br_mdb_add_group(%struct.net_bridge* %73, %struct.net_bridge_port* %74, %struct.br_ip* %8, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %80 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %67, %63, %43, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @netif_running(%struct.TYPE_2__*) #1

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @__mdb_entry_to_br_ip(%struct.br_mdb_entry*, %struct.br_ip*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_mdb_add_group(%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
