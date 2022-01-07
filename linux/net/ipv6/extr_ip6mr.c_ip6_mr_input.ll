; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6_mr_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6_mr_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.mfc6_cache = type { i32 }
%struct.net = type { i32 }
%struct.mr_table = type { i32 }
%struct.flowi6 = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@mrt_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_mr_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.mfc6_cache*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca %struct.flowi6, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = call %struct.net* @dev_net(%struct.net_device* %15)
  store %struct.net* %16, %struct.net** %5, align 8
  %17 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %7, i32 0, i32 1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %21, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %9, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = call i64 @netif_is_l3_master(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %1
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %36, i32 %40)
  store %struct.net_device* %41, %struct.net_device** %9, align 8
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %116

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.net*, %struct.net** %5, align 8
  %52 = call i32 @ip6mr_fib_lookup(%struct.net* %51, %struct.flowi6* %7, %struct.mr_table** %6)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %116

59:                                               ; preds = %50
  %60 = call i32 @read_lock(i32* @mrt_lock)
  %61 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call %struct.mfc6_cache* @ip6mr_cache_find(%struct.mr_table* %61, i32* %64, i32* %67)
  store %struct.mfc6_cache* %68, %struct.mfc6_cache** %4, align 8
  %69 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %70 = icmp ne %struct.mfc6_cache* %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %59
  %72 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = call i32 @ip6mr_find_vif(%struct.mr_table* %72, %struct.net_device* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %10, align 4
  %83 = call %struct.mfc6_cache* @ip6mr_cache_find_any(%struct.mr_table* %78, i32* %81, i32 %82)
  store %struct.mfc6_cache* %83, %struct.mfc6_cache** %4, align 8
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %87 = icmp ne %struct.mfc6_cache* %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %85
  %89 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %90 = load %struct.net_device*, %struct.net_device** %9, align 8
  %91 = call i32 @ip6mr_find_vif(%struct.mr_table* %89, %struct.net_device* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = load %struct.net_device*, %struct.net_device** %9, align 8
  %99 = call i32 @ip6mr_cache_unresolved(%struct.mr_table* %95, i32 %96, %struct.sk_buff* %97, %struct.net_device* %98)
  store i32 %99, i32* %12, align 4
  %100 = call i32 @read_unlock(i32* @mrt_lock)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %116

102:                                              ; preds = %88
  %103 = call i32 @read_unlock(i32* @mrt_lock)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %105 = call i32 @kfree_skb(%struct.sk_buff* %104)
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %116

108:                                              ; preds = %85
  %109 = load %struct.net*, %struct.net** %5, align 8
  %110 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %111 = load %struct.net_device*, %struct.net_device** %9, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %114 = call i32 @ip6_mr_forward(%struct.net* %109, %struct.mr_table* %110, %struct.net_device* %111, %struct.sk_buff* %112, %struct.mfc6_cache* %113)
  %115 = call i32 @read_unlock(i32* @mrt_lock)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %108, %102, %94, %55, %44
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ip6mr_fib_lookup(%struct.net*, %struct.flowi6*, %struct.mr_table**) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.mfc6_cache* @ip6mr_cache_find(%struct.mr_table*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6mr_find_vif(%struct.mr_table*, %struct.net_device*) #1

declare dso_local %struct.mfc6_cache* @ip6mr_cache_find_any(%struct.mr_table*, i32*, i32) #1

declare dso_local i32 @ip6mr_cache_unresolved(%struct.mr_table*, i32, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ip6_mr_forward(%struct.net*, %struct.mr_table*, %struct.net_device*, %struct.sk_buff*, %struct.mfc6_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
