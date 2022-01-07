; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_recv_dequeue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_recv_dequeue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32 (%struct.l2tp_session*, %struct.sk_buff*, i32)*, i32, i32, i32, %struct.TYPE_5__, %struct.l2tp_tunnel* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.l2tp_tunnel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@L2TP_MSG_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: updated nr to %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_session*, %struct.sk_buff*)* @l2tp_recv_dequeue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_recv_dequeue_skb(%struct.l2tp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2tp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.l2tp_tunnel*, align 8
  %6 = alloca i32, align 4
  store %struct.l2tp_session* %0, %struct.l2tp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %8 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %7, i32 0, i32 5
  %9 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  store %struct.l2tp_tunnel* %9, %struct.l2tp_tunnel** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.TYPE_6__* @L2TP_SKB_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_orphan(%struct.sk_buff* %14)
  %16 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %17 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @atomic_long_inc(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  %22 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @atomic_long_add(i32 %20, i32* %23)
  %25 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %26 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @atomic_long_inc(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %31 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @atomic_long_add(i32 %29, i32* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call %struct.TYPE_6__* @L2TP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %2
  %40 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %41 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %45 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %48 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %52 = load i32, i32* @L2TP_MSG_SEQ, align 4
  %53 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %54 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %57 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @l2tp_dbg(%struct.l2tp_session* %51, i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %39, %2
  %61 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %62 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %61, i32 0, i32 0
  %63 = load i32 (%struct.l2tp_session*, %struct.sk_buff*, i32)*, i32 (%struct.l2tp_session*, %struct.sk_buff*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.l2tp_session*, %struct.sk_buff*, i32)* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %67 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %66, i32 0, i32 0
  %68 = load i32 (%struct.l2tp_session*, %struct.sk_buff*, i32)*, i32 (%struct.l2tp_session*, %struct.sk_buff*, i32)** %67, align 8
  %69 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call %struct.TYPE_6__* @L2TP_SKB_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %68(%struct.l2tp_session* %69, %struct.sk_buff* %70, i32 %74)
  br label %79

76:                                               ; preds = %60
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %65
  ret void
}

declare dso_local %struct.TYPE_6__* @L2TP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @l2tp_dbg(%struct.l2tp_session*, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
