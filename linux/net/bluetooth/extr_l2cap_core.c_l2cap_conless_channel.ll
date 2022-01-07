; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_conless_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_conless_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.l2cap_chan = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.l2cap_chan*, %struct.sk_buff*)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@ACL_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"chan %p, len %d\00", align 1
@BT_BOUND = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i32, %struct.sk_buff*)* @l2cap_conless_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_conless_channel(%struct.l2cap_conn* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %9, i32 0, i32 0
  %11 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  store %struct.hci_conn* %11, %struct.hci_conn** %7, align 8
  %12 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACL_LINK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %85

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 2
  %22 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 1
  %24 = load i64, i64* @ACL_LINK, align 8
  %25 = call %struct.l2cap_chan* @l2cap_global_chan_by_psm(i32 0, i32 %19, i32* %21, i32* %23, i64 %24)
  store %struct.l2cap_chan* %25, %struct.l2cap_chan** %8, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %27 = icmp ne %struct.l2cap_chan* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %85

29:                                               ; preds = %18
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %30, i64 %33)
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BT_BOUND, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BT_CONNECTED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %82

47:                                               ; preds = %40, %29
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %82

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %62 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %61, i32 0, i32 1
  %63 = call i32 @bacpy(i32* %60, i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.l2cap_chan*, %struct.sk_buff*)*, i32 (%struct.l2cap_chan*, %struct.sk_buff*)** %72, align 8
  %74 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call i32 %73(%struct.l2cap_chan* %74, %struct.sk_buff* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %56
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %80 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %79)
  br label %88

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %55, %46
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %84 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %83)
  br label %85

85:                                               ; preds = %82, %28, %17
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %78
  ret void
}

declare dso_local %struct.l2cap_chan* @l2cap_global_chan_by_psm(i32, i32, i32*, i32*, i64) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i64) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
