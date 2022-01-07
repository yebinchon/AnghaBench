; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_vlan_by_tcpsk.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_vlan_by_tcpsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.smc_init_info = type { i8* }
%struct.dst_entry = type { %struct.net_device* }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }

@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_vlan_by_tcpsk(%struct.socket* %0, %struct.smc_init_info* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.smc_init_info*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.list_head*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.smc_init_info* %1, %struct.smc_init_info** %4, align 8
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dst_entry* @sk_dst_get(i32 %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.smc_init_info*, %struct.smc_init_info** %4, align 8
  %16 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %15, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %18 = icmp ne %struct.dst_entry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOTCONN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %83

22:                                               ; preds = %2
  %23 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %32 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %31, i32 0, i32 0
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  store %struct.net_device* %33, %struct.net_device** %6, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i64 @is_vlan_dev(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call i8* @vlan_dev_vlan_id(%struct.net_device* %38)
  %40 = load %struct.smc_init_info*, %struct.smc_init_info** %4, align 8
  %41 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %80

42:                                               ; preds = %30
  %43 = call i32 (...) @rtnl_lock()
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %75, %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store %struct.list_head* %54, %struct.list_head** %10, align 8
  %55 = load %struct.list_head*, %struct.list_head** %10, align 8
  %56 = call i64 @list_empty(%struct.list_head* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %78

59:                                               ; preds = %51
  %60 = load %struct.list_head*, %struct.list_head** %10, align 8
  %61 = getelementptr inbounds %struct.list_head, %struct.list_head* %60, i32 0, i32 0
  %62 = load %struct.list_head*, %struct.list_head** %61, align 8
  store %struct.list_head* %62, %struct.list_head** %10, align 8
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = call i64 @netdev_lower_get_next(%struct.net_device* %63, %struct.list_head** %10)
  %65 = inttoptr i64 %64 to %struct.net_device*
  store %struct.net_device* %65, %struct.net_device** %6, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i64 @is_vlan_dev(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = call i8* @vlan_dev_vlan_id(%struct.net_device* %70)
  %72 = load %struct.smc_init_info*, %struct.smc_init_info** %4, align 8
  %73 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %78

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %47

78:                                               ; preds = %69, %58, %47
  %79 = call i32 (...) @rtnl_unlock()
  br label %80

80:                                               ; preds = %78, %37, %27
  %81 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %82 = call i32 @dst_release(%struct.dst_entry* %81)
  br label %83

83:                                               ; preds = %80, %19
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local %struct.dst_entry* @sk_dst_get(i32) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i8* @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i64 @netdev_lower_get_next(%struct.net_device*, %struct.list_head**) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
