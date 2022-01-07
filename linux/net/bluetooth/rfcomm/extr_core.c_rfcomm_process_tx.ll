; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_process_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"dlc %p state %ld cfc %d rx_credits %d tx_credits %d\00", align 1
@RFCOMM_MSC_PENDING = common dso_local global i32 0, align 4
@RFCOMM_RX_THROTTLED = common dso_local global i32 0, align 4
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dlc*)* @rfcomm_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_process_tx(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %14 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %6, i32 %9, i32 %12, i32 %15, i32 %18)
  %20 = load i32, i32* @RFCOMM_MSC_PENDING, align 4
  %21 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %22 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %21, i32 0, i32 4
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %27 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %33 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rfcomm_send_msc(i32 %28, i32 1, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %25, %1
  %37 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %38 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %36
  %42 = load i32, i32* @RFCOMM_RX_THROTTLED, align 4
  %43 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %44 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %43, i32 0, i32 4
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %41
  %48 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %49 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %52 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 2
  %55 = icmp sle i32 %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %58 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %61 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %64 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %67 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = call i32 @rfcomm_send_credits(i32 %59, i32 %62, i32 %69)
  %71 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %72 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %75 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %56, %47, %41
  br label %80

77:                                               ; preds = %36
  %78 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %79 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %78, i32 0, i32 2
  store i32 5, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %82 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %83 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %82, i32 0, i32 4
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %88 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %87, i32 0, i32 3
  %89 = call i32 @skb_queue_len(i32* %88)
  store i32 %89, i32* %2, align 4
  br label %147

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %121, %90
  %92 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %93 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %98 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %97, i32 0, i32 3
  %99 = call %struct.sk_buff* @skb_dequeue(i32* %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %4, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i1 [ false, %91 ], [ %100, %96 ]
  br i1 %102, label %103, label %128

103:                                              ; preds = %101
  %104 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %105 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rfcomm_send_frame(i32 %106, i32 %109, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %118 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %117, i32 0, i32 3
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @skb_queue_head(i32* %118, %struct.sk_buff* %119)
  br label %128

121:                                              ; preds = %103
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  %124 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %125 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %125, align 4
  br label %91

128:                                              ; preds = %116, %101
  %129 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %130 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %135 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %140 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %141 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %140, i32 0, i32 4
  %142 = call i32 @set_bit(i32 %139, i32* %141)
  br label %143

143:                                              ; preds = %138, %133, %128
  %144 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %145 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %144, i32 0, i32 3
  %146 = call i32 @skb_queue_len(i32* %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %86
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i32, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_send_msc(i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_send_credits(i32, i32, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rfcomm_send_frame(i32, i32, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
