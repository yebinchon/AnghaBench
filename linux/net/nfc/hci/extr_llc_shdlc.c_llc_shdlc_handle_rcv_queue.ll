; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_handle_rcv_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_handle_rcv_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"rcvQlen=%d\0A\00", align 1
@SHDLC_CONTROL_HEAD_MASK = common dso_local global i32 0, align 4
@SHDLC_HALF_CONNECTED = common dso_local global i8* null, align 8
@SHDLC_CONNECTED = common dso_local global i8* null, align 8
@SHDLC_CONTROL_NS_MASK = common dso_local global i32 0, align 4
@SHDLC_CONTROL_NR_MASK = common dso_local global i32 0, align 4
@SHDLC_CONTROL_TYPE_MASK = common dso_local global i32 0, align 4
@SHDLC_CONTROL_M_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"UNKNOWN Control=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*)* @llc_shdlc_handle_rcv_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_handle_rcv_queue(%struct.llc_shdlc* %0) #0 {
  %2 = alloca %struct.llc_shdlc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %2, align 8
  %9 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %10 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %16 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %14, %1
  br label %21

21:                                               ; preds = %97, %20
  %22 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %23 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %22, i32 0, i32 1
  %24 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_2__* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %98

26:                                               ; preds = %21
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @skb_pull(%struct.sk_buff* %32, i32 1)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SHDLC_CONTROL_HEAD_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %92 [
    i32 131, label %37
    i32 130, label %37
    i32 129, label %60
    i32 128, label %84
  ]

37:                                               ; preds = %26, %26
  %38 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %39 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @SHDLC_HALF_CONNECTED, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8*, i8** @SHDLC_CONNECTED, align 8
  %45 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %46 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SHDLC_CONTROL_NS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = ashr i32 %50, 3
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SHDLC_CONTROL_NR_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @llc_shdlc_rcv_i_frame(%struct.llc_shdlc* %55, %struct.sk_buff* %56, i32 %57, i32 %58)
  br label %97

60:                                               ; preds = %26
  %61 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %62 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** @SHDLC_HALF_CONNECTED, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i8*, i8** @SHDLC_CONNECTED, align 8
  %68 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %69 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SHDLC_CONTROL_TYPE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = ashr i32 %73, 3
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SHDLC_CONTROL_NR_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %5, align 4
  %78 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @llc_shdlc_rcv_s_frame(%struct.llc_shdlc* %78, i32 %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = call i32 @kfree_skb(%struct.sk_buff* %82)
  br label %97

84:                                               ; preds = %26
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @SHDLC_CONTROL_M_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %8, align 4
  %88 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @llc_shdlc_rcv_u_frame(%struct.llc_shdlc* %88, %struct.sk_buff* %89, i32 %90)
  br label %97

92:                                               ; preds = %26
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %92, %84, %70, %47
  br label %21

98:                                               ; preds = %21
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_2__*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @llc_shdlc_rcv_i_frame(%struct.llc_shdlc*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @llc_shdlc_rcv_s_frame(%struct.llc_shdlc*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @llc_shdlc_rcv_u_frame(%struct.llc_shdlc*, %struct.sk_buff*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
