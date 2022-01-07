; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_acl_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_acl_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_chan = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ACL_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"chan %p skb %p len %d priority %u\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_sched_acl_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sched_acl_pkt(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @__check_timeout(%struct.hci_dev* %11, i32 %12)
  br label %14

14:                                               ; preds = %91, %1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = load i32, i32* @ACL_LINK, align 4
  %22 = call %struct.hci_chan* @hci_chan_sent(%struct.hci_dev* %20, i32 %21, i32* %6)
  store %struct.hci_chan* %22, %struct.hci_chan** %4, align 8
  %23 = icmp ne %struct.hci_chan* %22, null
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %92

26:                                               ; preds = %24
  %27 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %28 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %27, i32 0, i32 2
  %29 = call %struct.sk_buff* @skb_peek(i32* %28)
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %59, %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %38 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %37, i32 0, i32 2
  %39 = call %struct.sk_buff* @skb_peek(i32* %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %5, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %91

43:                                               ; preds = %41
  %44 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.hci_chan* %44, %struct.sk_buff* %45, i32 %48, i64 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %91

59:                                               ; preds = %43
  %60 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %61 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %60, i32 0, i32 2
  %62 = call %struct.sk_buff* @skb_dequeue(i32* %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %5, align 8
  %63 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %64 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hci_conn_enter_active_mode(%struct.TYPE_3__* %65, i32 %69)
  %71 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @hci_send_frame(%struct.hci_dev* %71, %struct.sk_buff* %72)
  %74 = load i32, i32* @jiffies, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %82 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %86 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %32

91:                                               ; preds = %58, %41
  br label %14

92:                                               ; preds = %24
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %100 = load i32, i32* @ACL_LINK, align 4
  %101 = call i32 @hci_prio_recalculate(%struct.hci_dev* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %92
  ret void
}

declare dso_local i32 @__check_timeout(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_chan* @hci_chan_sent(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_chan*, %struct.sk_buff*, i32, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

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
