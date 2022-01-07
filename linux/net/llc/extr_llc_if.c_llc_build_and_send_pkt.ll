; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_if.c_llc_build_and_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_if.c_llc_build_and_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i32, i32, i32 }
%struct.llc_sock = type { i64, i32, i32, i64 }

@ECONNABORTED = common dso_local global i32 0, align 4
@LLC_CONN_STATE_ADM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@LLC_CONN_EV_TYPE_PRIM = common dso_local global i32 0, align 4
@LLC_DATA_PRIM = common dso_local global i32 0, align 4
@LLC_PRIM_TYPE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_build_and_send_pkt(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.llc_conn_state_ev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @ECONNABORTED, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.llc_sock* @llc_sk(%struct.sock* %11)
  store %struct.llc_sock* %12, %struct.llc_sock** %8, align 8
  %13 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %14 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LLC_CONN_STATE_ADM, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %63

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %26 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @llc_data_accept_state(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %32 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %22
  %36 = phi i1 [ true, %22 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  br label %63

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %44)
  store %struct.llc_conn_state_ev* %45, %struct.llc_conn_state_ev** %6, align 8
  %46 = load i32, i32* @LLC_CONN_EV_TYPE_PRIM, align 4
  %47 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %6, align 8
  %48 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @LLC_DATA_PRIM, align 4
  %50 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %6, align 8
  %51 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @LLC_PRIM_TYPE_REQ, align 4
  %53 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %6, align 8
  %54 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %56 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @llc_conn_state_process(%struct.sock* %60, %struct.sk_buff* %61)
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %40, %21
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %43
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @llc_data_accept_state(i64) #1

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local i32 @llc_conn_state_process(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
