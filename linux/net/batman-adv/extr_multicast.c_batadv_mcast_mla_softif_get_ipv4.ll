; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_softif_get_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_softif_get_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hlist_head = type { i32 }
%struct.batadv_mcast_mla_flags = type { i32 }
%struct.batadv_hw_addr = type { i32, i32 }
%struct.in_device = type { i32 }
%struct.ip_mc_list = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_ALL_IPV4 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_ALL_UNSNOOPABLES = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR4 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.hlist_head*, %struct.batadv_mcast_mla_flags*)* @batadv_mcast_mla_softif_get_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_mla_softif_get_ipv4(%struct.net_device* %0, %struct.hlist_head* %1, %struct.batadv_mcast_mla_flags* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.batadv_mcast_mla_flags*, align 8
  %8 = alloca %struct.batadv_hw_addr*, align 8
  %9 = alloca %struct.in_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ip_mc_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %6, align 8
  store %struct.batadv_mcast_mla_flags* %2, %struct.batadv_mcast_mla_flags** %7, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %7, align 8
  %20 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV4, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

26:                                               ; preds = %3
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %28)
  store %struct.in_device* %29, %struct.in_device** %9, align 8
  %30 = load %struct.in_device*, %struct.in_device** %9, align 8
  %31 = icmp ne %struct.in_device* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

34:                                               ; preds = %26
  %35 = load %struct.in_device*, %struct.in_device** %9, align 8
  %36 = getelementptr inbounds %struct.in_device, %struct.in_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ip_mc_list* @rcu_dereference(i32 %37)
  store %struct.ip_mc_list* %38, %struct.ip_mc_list** %12, align 8
  br label %39

39:                                               ; preds = %98, %34
  %40 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  %41 = icmp ne %struct.ip_mc_list* %40, null
  br i1 %41, label %42, label %103

42:                                               ; preds = %39
  %43 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %7, align 8
  %44 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BATADV_MCAST_WANT_ALL_UNSNOOPABLES, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  %51 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ipv4_is_local_multicast(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %98

56:                                               ; preds = %49, %42
  %57 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %7, align 8
  %58 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BATADV_MCAST_WANT_NO_RTR4, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  %65 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ipv4_is_local_multicast(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %98

70:                                               ; preds = %63, %56
  %71 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  %72 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ip_eth_mc_map(i32 %73, i32* %18)
  %75 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %76 = call i64 @batadv_mcast_mla_is_duplicate(i32* %18, %struct.hlist_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %98

79:                                               ; preds = %70
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call %struct.batadv_hw_addr* @kmalloc(i32 8, i32 %80)
  store %struct.batadv_hw_addr* %81, %struct.batadv_hw_addr** %8, align 8
  %82 = load %struct.batadv_hw_addr*, %struct.batadv_hw_addr** %8, align 8
  %83 = icmp ne %struct.batadv_hw_addr* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %103

87:                                               ; preds = %79
  %88 = load %struct.batadv_hw_addr*, %struct.batadv_hw_addr** %8, align 8
  %89 = getelementptr inbounds %struct.batadv_hw_addr, %struct.batadv_hw_addr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ether_addr_copy(i32 %90, i32* %18)
  %92 = load %struct.batadv_hw_addr*, %struct.batadv_hw_addr** %8, align 8
  %93 = getelementptr inbounds %struct.batadv_hw_addr, %struct.batadv_hw_addr* %92, i32 0, i32 0
  %94 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %95 = call i32 @hlist_add_head(i32* %93, %struct.hlist_head* %94)
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %87, %78, %69, %55
  %99 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  %100 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.ip_mc_list* @rcu_dereference(i32 %101)
  store %struct.ip_mc_list* %102, %struct.ip_mc_list** %12, align 8
  br label %39

103:                                              ; preds = %84, %39
  %104 = call i32 (...) @rcu_read_unlock()
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %32, %25
  %107 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local %struct.ip_mc_list* @rcu_dereference(i32) #2

declare dso_local i64 @ipv4_is_local_multicast(i32) #2

declare dso_local i32 @ip_eth_mc_map(i32, i32*) #2

declare dso_local i64 @batadv_mcast_mla_is_duplicate(i32*, %struct.hlist_head*) #2

declare dso_local %struct.batadv_hw_addr* @kmalloc(i32, i32) #2

declare dso_local i32 @ether_addr_copy(i32, i32*) #2

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
