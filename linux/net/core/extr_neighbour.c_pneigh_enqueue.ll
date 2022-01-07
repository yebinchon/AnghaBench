; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_pneigh_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.neigh_parms = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@PROXY_DELAY = common dso_local global i32 0, align 4
@PROXY_QLEN = common dso_local global i32 0, align 4
@LOCALLY_ENQUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pneigh_enqueue(%struct.neigh_table* %0, %struct.neigh_parms* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca %struct.neigh_parms*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store %struct.neigh_parms* %1, %struct.neigh_parms** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 (...) @prandom_u32()
  %12 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %13 = load i32, i32* @PROXY_DELAY, align 4
  %14 = call i64 @NEIGH_VAR(%struct.neigh_parms* %12, i32 %13)
  %15 = urem i64 %11, %14
  %16 = add i64 %10, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %18 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.neigh_parms*, %struct.neigh_parms** %5, align 8
  %22 = load i32, i32* @PROXY_QLEN, align 4
  %23 = call i64 @NEIGH_VAR(%struct.neigh_parms* %21, i32 %22)
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @kfree_skb(%struct.sk_buff* %26)
  br label %80

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.TYPE_7__* @NEIGH_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* @LOCALLY_ENQUEUED, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.TYPE_7__* @NEIGH_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %40 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %44 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %43, i32 0, i32 1
  %45 = call i64 @del_timer(%struct.TYPE_5__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %28
  %48 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %49 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %57 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %55, %47
  br label %61

61:                                               ; preds = %60, %28
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @skb_dst_drop(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_hold(i32 %66)
  %68 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %69 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = call i32 @__skb_queue_tail(%struct.TYPE_6__* %69, %struct.sk_buff* %70)
  %72 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %73 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %72, i32 0, i32 1
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @mod_timer(%struct.TYPE_5__* %73, i64 %74)
  %76 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %77 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  br label %80

80:                                               ; preds = %61, %25
  ret void
}

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i64 @NEIGH_VAR(%struct.neigh_parms*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @NEIGH_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_6__*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
