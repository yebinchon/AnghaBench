; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.dn_route = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.dn_skb_cb = type { i64, i64, i64 }
%struct.dst_entry = type { i32 }

@dn_rt_hash_table = common dso_local global %struct.TYPE_4__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dn_route_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_route_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dn_route*, align 8
  %5 = alloca %struct.dn_skb_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %7)
  store %struct.dn_skb_cb* %8, %struct.dn_skb_cb** %5, align 8
  %9 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %10 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %13 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @dn_hash(i64 %11, i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i64 @skb_dst(%struct.sk_buff* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

20:                                               ; preds = %1
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dn_rt_hash_table, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dn_route* @rcu_dereference(i32 %27)
  store %struct.dn_route* %28, %struct.dn_route** %4, align 8
  br label %29

29:                                               ; preds = %85, %20
  %30 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %31 = icmp ne %struct.dn_route* %30, null
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  %33 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %34 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %38 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %32
  %42 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %43 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %47 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %41
  %51 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %52 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %58 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %56
  %66 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %67 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %71 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %76 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %75, i32 0, i32 0
  %77 = load i32, i32* @jiffies, align 4
  %78 = call i32 @dst_hold_and_use(i32* %76, i32 %77)
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %82 = bitcast %struct.dn_route* %81 to %struct.dst_entry*
  %83 = call i32 @skb_dst_set(%struct.sk_buff* %80, %struct.dst_entry* %82)
  store i32 0, i32* %2, align 4
  br label %94

84:                                               ; preds = %65, %56, %50, %41, %32
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %87 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.dn_route* @rcu_dereference(i32 %88)
  store %struct.dn_route* %89, %struct.dn_route** %4, align 8
  br label %29

90:                                               ; preds = %29
  %91 = call i32 (...) @rcu_read_unlock()
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = call i32 @dn_route_input_slow(%struct.sk_buff* %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %74, %19
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dn_hash(i64, i64) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dn_route* @rcu_dereference(i32) #1

declare dso_local i32 @dst_hold_and_use(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dn_route_input_slow(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
