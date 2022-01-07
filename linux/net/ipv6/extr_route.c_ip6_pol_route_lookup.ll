; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_pol_route_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_pol_route_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.rt6_info* }
%struct.fib6_table = type { i32 }
%struct.flowi6 = type { i32, i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.fib6_result = type { i64, i32 }
%struct.fib6_node = type { i32 }

@FLOWI_FLAG_SKIP_NH_OIF = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi6*, %struct.sk_buff*, i32)* @ip6_pol_route_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @ip6_pol_route_lookup(%struct.net* %0, %struct.fib6_table* %1, %struct.flowi6* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_table*, align 8
  %8 = alloca %struct.flowi6*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib6_result, align 8
  %12 = alloca %struct.fib6_node*, align 8
  %13 = alloca %struct.rt6_info*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %7, align 8
  store %struct.flowi6* %2, %struct.flowi6** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = bitcast %struct.fib6_result* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %16 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FLOWI_FLAG_SKIP_NH_OIF, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %21, %5
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %29 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %28, i32 0, i32 0
  %30 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 3
  %32 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %33 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %32, i32 0, i32 2
  %34 = call %struct.fib6_node* @fib6_node_lookup(i32* %29, i32* %31, i32* %33)
  store %struct.fib6_node* %34, %struct.fib6_node** %12, align 8
  br label %35

35:                                               ; preds = %74, %26
  %36 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %37 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rcu_dereference(i32 %38)
  %40 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  br label %59

50:                                               ; preds = %35
  %51 = load %struct.net*, %struct.net** %6, align 8
  %52 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %53 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %52, i32 0, i32 2
  %54 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %55 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @rt6_device_match(%struct.net* %51, %struct.fib6_result* %11, i32* %53, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %44
  %60 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.net*, %struct.net** %6, align 8
  %63 = getelementptr inbounds %struct.net, %struct.net* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %69 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %70 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %69, i32 0, i32 2
  %71 = call %struct.fib6_node* @fib6_backtrack(%struct.fib6_node* %68, i32* %70)
  store %struct.fib6_node* %71, %struct.fib6_node** %12, align 8
  %72 = load %struct.fib6_node*, %struct.fib6_node** %12, align 8
  %73 = icmp ne %struct.fib6_node* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %35

75:                                               ; preds = %67
  %76 = load %struct.net*, %struct.net** %6, align 8
  %77 = getelementptr inbounds %struct.net, %struct.net* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.rt6_info*, %struct.rt6_info** %78, align 8
  store %struct.rt6_info* %79, %struct.rt6_info** %13, align 8
  %80 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %81 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %80, i32 0, i32 0
  %82 = call i32 @dst_hold(i32* %81)
  br label %126

83:                                               ; preds = %59
  %84 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RTF_REJECT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %123

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.net*, %struct.net** %6, align 8
  %93 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %94 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %95 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %98 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @fib6_select_path(%struct.net* %92, %struct.fib6_result* %11, %struct.flowi6* %93, i64 %96, i32 %101, %struct.sk_buff* %102, i32 %103)
  %105 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %106 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %105, i32 0, i32 3
  %107 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %108 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %107, i32 0, i32 2
  %109 = call %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result* %11, i32* %106, i32* %108)
  store %struct.rt6_info* %109, %struct.rt6_info** %13, align 8
  %110 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %111 = icmp ne %struct.rt6_info* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %91
  %113 = load %struct.net*, %struct.net** %6, align 8
  %114 = call i64 @ip6_hold_safe(%struct.net* %113, %struct.rt6_info** %13)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %118 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %117, i32 0, i32 0
  %119 = load i32, i32* @jiffies, align 4
  %120 = call i32 @dst_use_noref(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %112
  br label %125

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %89
  %124 = call %struct.rt6_info* @ip6_create_rt_rcu(%struct.fib6_result* %11)
  store %struct.rt6_info* %124, %struct.rt6_info** %13, align 8
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125, %75
  %127 = load %struct.net*, %struct.net** %6, align 8
  %128 = load %struct.fib6_table*, %struct.fib6_table** %7, align 8
  %129 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %130 = call i32 @trace_fib6_table_lookup(%struct.net* %127, %struct.fib6_result* %11, %struct.fib6_table* %128, %struct.flowi6* %129)
  %131 = call i32 (...) @rcu_read_unlock()
  %132 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  ret %struct.rt6_info* %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.fib6_node* @fib6_node_lookup(i32*, i32*, i32*) #2

declare dso_local i64 @rcu_dereference(i32) #2

declare dso_local i32 @rt6_device_match(%struct.net*, %struct.fib6_result*, i32*, i64, i32) #2

declare dso_local %struct.fib6_node* @fib6_backtrack(%struct.fib6_node*, i32*) #2

declare dso_local i32 @dst_hold(i32*) #2

declare dso_local i32 @fib6_select_path(%struct.net*, %struct.fib6_result*, %struct.flowi6*, i64, i32, %struct.sk_buff*, i32) #2

declare dso_local %struct.rt6_info* @rt6_find_cached_rt(%struct.fib6_result*, i32*, i32*) #2

declare dso_local i64 @ip6_hold_safe(%struct.net*, %struct.rt6_info**) #2

declare dso_local i32 @dst_use_noref(i32*, i32) #2

declare dso_local %struct.rt6_info* @ip6_create_rt_rcu(%struct.fib6_result*) #2

declare dso_local i32 @trace_fib6_table_lookup(%struct.net*, %struct.fib6_result*, %struct.fib6_table*, %struct.flowi6*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
