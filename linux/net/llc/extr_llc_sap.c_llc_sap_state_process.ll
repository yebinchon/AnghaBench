; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_sap_state_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_sap_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.llc_sap_state_ev = type { i64, i32 }

@LLC_IND = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_sap*, %struct.sk_buff*)* @llc_sap_state_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_sap_state_process(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sap_state_ev*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %6)
  store %struct.llc_sap_state_ev* %7, %struct.llc_sap_state_ev** %5, align 8
  %8 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %9 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @llc_sap_next_state(%struct.llc_sap* %10, %struct.sk_buff* %11)
  %13 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %14 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LLC_IND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_LISTEN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %32 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @llc_save_primitive(%struct.TYPE_3__* %29, %struct.sk_buff* %30, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i64 @sock_queue_rcv_skb(%struct.TYPE_3__* %37, %struct.sk_buff* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %46

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %18, %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %43, %41
  ret void
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local i32 @llc_sap_next_state(%struct.llc_sap*, %struct.sk_buff*) #1

declare dso_local i32 @llc_save_primitive(%struct.TYPE_3__*, %struct.sk_buff*, i32) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
