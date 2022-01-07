; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_le.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i64, i64, i32 }
%struct.hci_chan = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LE_LINK = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"chan %p skb %p len %d priority %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_sched_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sched_le(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.hci_chan*
  %14 = call i32 (i8*, %struct.hci_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.hci_chan* %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = load i32, i32* @LE_LINK, align 4
  %17 = call i32 @hci_conn_num(%struct.hci_dev* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %154

20:                                               ; preds = %1
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %23 = call i32 @hci_dev_test_flag(%struct.hci_dev* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %20
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %25
  %31 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %40, 45
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i64 @time_after(i64 %36, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %48 = load i32, i32* @LE_LINK, align 4
  %49 = call i32 @hci_link_tx_to(%struct.hci_dev* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %35, %30, %25
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %59, %56 ], [ %63, %60 ]
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %132, %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %72 = load i32, i32* @LE_LINK, align 4
  %73 = call %struct.hci_chan* @hci_chan_sent(%struct.hci_dev* %71, i32 %72, i32* %5)
  store %struct.hci_chan* %73, %struct.hci_chan** %3, align 8
  %74 = icmp ne %struct.hci_chan* %73, null
  br label %75

75:                                               ; preds = %70, %67
  %76 = phi i1 [ false, %67 ], [ %74, %70 ]
  br i1 %76, label %77, label %133

77:                                               ; preds = %75
  %78 = load %struct.hci_chan*, %struct.hci_chan** %3, align 8
  %79 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %78, i32 0, i32 2
  %80 = call %struct.sk_buff* @skb_peek(i32* %79)
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %110, %77
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.hci_chan*, %struct.hci_chan** %3, align 8
  %89 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %88, i32 0, i32 2
  %90 = call %struct.sk_buff* @skb_peek(i32* %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %4, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br label %92

92:                                               ; preds = %87, %83
  %93 = phi i1 [ false, %83 ], [ %91, %87 ]
  br i1 %93, label %94, label %132

94:                                               ; preds = %92
  %95 = load %struct.hci_chan*, %struct.hci_chan** %3, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, %struct.hci_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.hci_chan* %95, %struct.sk_buff* %96, i32 %99, i64 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %132

110:                                              ; preds = %94
  %111 = load %struct.hci_chan*, %struct.hci_chan** %3, align 8
  %112 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %111, i32 0, i32 2
  %113 = call %struct.sk_buff* @skb_dequeue(i32* %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %4, align 8
  %114 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call i32 @hci_send_frame(%struct.hci_dev* %114, %struct.sk_buff* %115)
  %117 = load i64, i64* @jiffies, align 8
  %118 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %6, align 4
  %122 = load %struct.hci_chan*, %struct.hci_chan** %3, align 8
  %123 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.hci_chan*, %struct.hci_chan** %3, align 8
  %127 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %83

132:                                              ; preds = %109, %92
  br label %67

133:                                              ; preds = %75
  %134 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %135 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %146

142:                                              ; preds = %133
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %145 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %152 = load i32, i32* @LE_LINK, align 4
  %153 = call i32 @hci_prio_recalculate(%struct.hci_dev* %151, i32 %152)
  br label %154

154:                                              ; preds = %19, %150, %146
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_chan*, ...) #1

declare dso_local i32 @hci_conn_num(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @hci_link_tx_to(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_chan* @hci_chan_sent(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @hci_send_frame(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_prio_recalculate(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
