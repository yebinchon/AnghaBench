; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_save_primitive.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_save_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_llc = type { i32, i32, i32, i32, i32, i32, i32 }

@LLC_TEST_PRIM = common dso_local global i64 0, align 8
@LLC_XID_PRIM = common dso_local global i64 0, align 8
@LLC_DATAUNIT_PRIM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llc_save_primitive(%struct.sock* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_llc*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call %struct.sockaddr_llc* @llc_ui_skb_cb(%struct.sk_buff* %8)
  store %struct.sockaddr_llc* %9, %struct.sockaddr_llc** %7, align 8
  %10 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %11 = call i32 @memset(%struct.sockaddr_llc* %10, i32 0, i32 28)
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @LLC_TEST_PRIM, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @LLC_XID_PRIM, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %35 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @LLC_DATAUNIT_PRIM, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %41 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @llc_pdu_decode_sa(%struct.sk_buff* %42, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.sockaddr_llc*, %struct.sockaddr_llc** %7, align 8
  %49 = getelementptr inbounds %struct.sockaddr_llc, %struct.sockaddr_llc* %48, i32 0, i32 3
  %50 = call i32 @llc_pdu_decode_ssap(%struct.sk_buff* %47, i32* %49)
  ret void
}

declare dso_local %struct.sockaddr_llc* @llc_ui_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.sockaddr_llc*, i32, i32) #1

declare dso_local i32 @llc_pdu_decode_sa(%struct.sk_buff*, i32) #1

declare dso_local i32 @llc_pdu_decode_ssap(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
