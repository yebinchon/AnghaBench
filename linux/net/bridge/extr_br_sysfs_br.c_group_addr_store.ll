; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_br.c_group_addr_store.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_br.c_group_addr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_bridge = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@BROPT_GROUP_ADDR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @group_addr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @group_addr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_bridge*, align 8
  %11 = alloca [6 x i32], align 16
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.net_bridge* @to_bridge(%struct.device* %12)
  store %struct.net_bridge* %13, %struct.net_bridge** %10, align 8
  %14 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @dev_net(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CAP_NET_ADMIN, align 4
  %21 = call i32 @ns_capable(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* @EPERM, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %84

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %29 = call i32 @mac_pton(i8* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %84

34:                                               ; preds = %26
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %36 = call i32 @is_link_local_ether_addr(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %84

41:                                               ; preds = %34
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45, %41
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %84

56:                                               ; preds = %49
  %57 = call i32 (...) @rtnl_trylock()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i64 (...) @restart_syscall()
  store i64 %60, i64* %5, align 8
  br label %84

61:                                               ; preds = %56
  %62 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %63 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %66 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %69 = call i32 @ether_addr_copy(i32 %67, i32* %68)
  %70 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %71 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %74 = load i32, i32* @BROPT_GROUP_ADDR_SET, align 4
  %75 = call i32 @br_opt_toggle(%struct.net_bridge* %73, i32 %74, i32 1)
  %76 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %77 = call i32 @br_recalculate_fwd_mask(%struct.net_bridge* %76)
  %78 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %79 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @netdev_state_change(i32 %80)
  %82 = call i32 (...) @rtnl_unlock()
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %61, %59, %53, %38, %31, %23
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local %struct.net_bridge* @to_bridge(%struct.device*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @dev_net(i32) #1

declare dso_local i32 @mac_pton(i8*, i32*) #1

declare dso_local i32 @is_link_local_ether_addr(i32*) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i64 @restart_syscall(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_opt_toggle(%struct.net_bridge*, i32, i32) #1

declare dso_local i32 @br_recalculate_fwd_mask(%struct.net_bridge*) #1

declare dso_local i32 @netdev_state_change(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
