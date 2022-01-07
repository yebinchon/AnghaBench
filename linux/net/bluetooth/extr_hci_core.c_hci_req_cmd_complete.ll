; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_req_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_req_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_7__, %struct.sk_buff*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"opcode 0x%04x status 0x%02x\00", align 1
@HCI_INIT = common dso_local global i32 0, align 4
@HCI_OP_RESET = common dso_local global i64 0, align 8
@HCI_CMD_PENDING = common dso_local global i32 0, align 4
@HCI_REQ_SKB = common dso_local global i32 0, align 4
@HCI_REQ_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_req_cmd_complete(%struct.hci_dev* %0, i64 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @hci_sent_cmd_data(%struct.hci_dev* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @HCI_INIT, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 2
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @HCI_OP_RESET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %32 = call i32 @hci_resend_last(%struct.hci_dev* %31)
  br label %33

33:                                               ; preds = %30, %26, %20
  br label %140

34:                                               ; preds = %5
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = load i32, i32* @HCI_CMD_PENDING, align 4
  %37 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %42 = call i32 @hci_req_is_complete(%struct.hci_dev* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %140

45:                                               ; preds = %40, %34
  %46 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HCI_REQ_SKB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  br label %140

65:                                               ; preds = %45
  %66 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 1
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %65
  %75 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 1
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  %78 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  br label %140

83:                                               ; preds = %65
  %84 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %131, %83
  %90 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 0
  %92 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_7__* %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %11, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %94, label %134

94:                                               ; preds = %89
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @HCI_REQ_START, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %105 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %104, i32 0, i32 0
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = call i32 @__skb_queue_head(%struct.TYPE_7__* %105, %struct.sk_buff* %106)
  br label %134

108:                                              ; preds = %94
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @HCI_REQ_SKB, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  br label %131

124:                                              ; preds = %108
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %9, align 8
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  br label %89

134:                                              ; preds = %103, %89
  %135 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  br label %140

140:                                              ; preds = %134, %74, %56, %44, %33
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, i32) #1

declare dso_local i32 @hci_sent_cmd_data(%struct.hci_dev*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_resend_last(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_is_complete(%struct.hci_dev*) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_7__*) #1

declare dso_local i32 @__skb_queue_head(%struct.TYPE_7__*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
