; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_build_and_send_xid_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_build_and_send_xid_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.llc_sap_state_ev = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@IFHWADDRLEN = common dso_local global i32 0, align 4
@LLC_SAP_EV_TYPE_PRIM = common dso_local global i32 0, align 4
@LLC_XID_PRIM = common dso_local global i32 0, align 4
@LLC_PRIM_TYPE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_build_and_send_xid_pkt(%struct.llc_sap* %0, %struct.sk_buff* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.llc_sap*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.llc_sap_state_ev*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %10)
  store %struct.llc_sap_state_ev* %11, %struct.llc_sap_state_ev** %9, align 8
  %12 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %13 = getelementptr inbounds %struct.llc_sap, %struct.llc_sap* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %17 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %21 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %24 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @IFHWADDRLEN, align 4
  %33 = call i32 @memcpy(i32 %26, i32* %31, i32 %32)
  %34 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %35 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @IFHWADDRLEN, align 4
  %40 = call i32 @memcpy(i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* @LLC_SAP_EV_TYPE_PRIM, align 4
  %42 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %43 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @LLC_XID_PRIM, align 4
  %45 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %46 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @LLC_PRIM_TYPE_REQ, align 4
  %48 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %9, align 8
  %49 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.llc_sap*, %struct.llc_sap** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @llc_sap_state_process(%struct.llc_sap* %50, %struct.sk_buff* %51)
  ret void
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @llc_sap_state_process(%struct.llc_sap*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
