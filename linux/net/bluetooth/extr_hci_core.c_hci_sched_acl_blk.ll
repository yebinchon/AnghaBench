; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_acl_blk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_acl_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i64, i32, i32 }
%struct.hci_chan = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_AMP = common dso_local global i64 0, align 8
@AMP_LINK = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"chan %p skb %p len %d priority %u\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_sched_acl_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sched_acl_blk(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @__check_timeout(%struct.hci_dev* %13, i32 %14)
  %16 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.hci_chan*
  %21 = call i32 (i8*, %struct.hci_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.hci_chan* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCI_AMP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @AMP_LINK, align 4
  store i32 %28, i32* %7, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ACL_LINK, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %124, %31
  %33 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.hci_chan* @hci_chan_sent(%struct.hci_dev* %38, i32 %39, i32* %6)
  store %struct.hci_chan* %40, %struct.hci_chan** %4, align 8
  %41 = icmp ne %struct.hci_chan* %40, null
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %125

44:                                               ; preds = %42
  %45 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %46 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %45, i32 0, i32 2
  %47 = call %struct.sk_buff* @skb_peek(i32* %46)
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %89, %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %55 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %54, i32 0, i32 2
  %56 = call %struct.sk_buff* @skb_peek(i32* %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %5, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ false, %50 ], [ %57, %53 ]
  br i1 %59, label %60, label %124

60:                                               ; preds = %58
  %61 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, %struct.hci_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.hci_chan* %61, %struct.sk_buff* %62, i32 %65, i64 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %124

76:                                               ; preds = %60
  %77 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %78 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %77, i32 0, i32 2
  %79 = call %struct.sk_buff* @skb_dequeue(i32* %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %5, align 8
  %80 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @__get_blocks(%struct.hci_dev* %80, %struct.sk_buff* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ugt i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %135

89:                                               ; preds = %76
  %90 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %91 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @hci_conn_enter_active_mode(%struct.TYPE_3__* %92, i32 %96)
  %98 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @hci_send_frame(%struct.hci_dev* %98, %struct.sk_buff* %99)
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %106 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %114 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %119 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %50

124:                                              ; preds = %75, %58
  br label %32

125:                                              ; preds = %42
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %128 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @hci_prio_recalculate(%struct.hci_dev* %132, i32 %133)
  br label %135

135:                                              ; preds = %88, %131, %125
  ret void
}

declare dso_local i32 @__check_timeout(%struct.hci_dev*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_chan*, ...) #1

declare dso_local %struct.hci_chan* @hci_chan_sent(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @__get_blocks(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_conn_enter_active_mode(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_frame(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_prio_recalculate(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
