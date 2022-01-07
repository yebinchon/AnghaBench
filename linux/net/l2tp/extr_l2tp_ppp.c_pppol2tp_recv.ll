; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64* }
%struct.pppol2tp_session = type { i32 }
%struct.sock = type { i32 }
%struct.pppox_sock = type { i32 }

@PPP_ALLSTATIONS = common dso_local global i64 0, align 8
@PPP_UI = common dso_local global i64 0, align 8
@PPPOX_BOUND = common dso_local global i32 0, align 4
@L2TP_MSG_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: recv %d byte data frame, passing to ppp\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: recv %d byte data frame, passing to L2TP socket\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: no socket\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_session*, %struct.sk_buff*, i32)* @pppol2tp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_recv(%struct.l2tp_session* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.l2tp_session*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pppol2tp_session*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pppox_sock*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %11 = call %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_session* %10)
  store %struct.pppol2tp_session* %11, %struct.pppol2tp_session** %7, align 8
  store %struct.sock* null, %struct.sock** %8, align 8
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %7, align 8
  %14 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sock* @rcu_dereference(i32 %15)
  store %struct.sock* %16, %struct.sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = icmp eq %struct.sock* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @pskb_may_pull(%struct.sk_buff* %21, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PPP_ALLSTATIONS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PPP_UI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_pull(%struct.sk_buff* %41, i32 2)
  br label %43

43:                                               ; preds = %40, %32, %24, %20
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PPPOX_BOUND, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %52 = load i32, i32* @L2TP_MSG_DATA, align 4
  %53 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %54 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @l2tp_dbg(%struct.l2tp_session* %51, i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.sock*, %struct.sock** %8, align 8
  %59 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %58)
  store %struct.pppox_sock* %59, %struct.pppox_sock** %9, align 8
  %60 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %61 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %60, i32 0, i32 0
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @ppp_input(i32* %61, %struct.sk_buff* %62)
  br label %84

64:                                               ; preds = %43
  %65 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %66 = load i32, i32* @L2TP_MSG_DATA, align 4
  %67 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %68 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @l2tp_dbg(%struct.l2tp_session* %65, i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.sock*, %struct.sock** %8, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i64 @sock_queue_rcv_skb(%struct.sock* %72, %struct.sk_buff* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %78 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @atomic_long_inc(i32* %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %76, %64
  br label %84

84:                                               ; preds = %83, %50
  %85 = call i32 (...) @rcu_read_unlock()
  br label %96

86:                                               ; preds = %19
  %87 = call i32 (...) @rcu_read_unlock()
  %88 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %89 = load i32, i32* @L2TP_MSG_DATA, align 4
  %90 = load %struct.l2tp_session*, %struct.l2tp_session** %4, align 8
  %91 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @l2tp_info(%struct.l2tp_session* %88, i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %86, %84
  ret void
}

declare dso_local %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_session*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @rcu_dereference(i32) #1

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2tp_dbg(%struct.l2tp_session*, i32, i8*, i32, i32) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @ppp_input(i32*, %struct.sk_buff*) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @l2tp_info(%struct.l2tp_session*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
