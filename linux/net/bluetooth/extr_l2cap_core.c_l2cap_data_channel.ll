; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_data_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_data_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.sk_buff = type { i32 }
%struct.l2cap_chan = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*, %struct.sk_buff*)* }

@L2CAP_CID_A2MP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown cid 0x%4.4x\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"chan %p, len %d\00", align 1
@L2CAP_CHAN_FIXED = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Dropping L2CAP data: receive buffer overflow\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"chan %p: bad mode 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, i64, %struct.sk_buff*)* @l2cap_data_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_data_channel(%struct.l2cap_conn* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn* %8, i64 %9)
  store %struct.l2cap_chan* %10, %struct.l2cap_chan** %7, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %12 = icmp ne %struct.l2cap_chan* %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @L2CAP_CID_A2MP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.l2cap_chan* @a2mp_channel_create(%struct.l2cap_conn* %18, %struct.sk_buff* %19)
  store %struct.l2cap_chan* %20, %struct.l2cap_chan** %7, align 8
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %22 = icmp ne %struct.l2cap_chan* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  br label %107

26:                                               ; preds = %17
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %28 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %27)
  br label %35

29:                                               ; preds = %13
  %30 = load i64, i64* %5, align 8
  %31 = inttoptr i64 %30 to %struct.l2cap_chan*
  %32 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %107

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %37, i32 %40)
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @L2CAP_CHAN_FIXED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %49 = call i32 @l2cap_chan_ready(%struct.l2cap_chan* %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BT_CONNECTED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %101

57:                                               ; preds = %50
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %94 [
    i32 129, label %61
    i32 131, label %68
    i32 130, label %90
    i32 128, label %90
  ]

61:                                               ; preds = %57
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i32 @l2cap_le_data_rcv(%struct.l2cap_chan* %62, %struct.sk_buff* %63)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %101

67:                                               ; preds = %61
  br label %104

68:                                               ; preds = %57
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = call i32 @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %101

78:                                               ; preds = %68
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %80 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.l2cap_chan*, %struct.sk_buff*)*, i32 (%struct.l2cap_chan*, %struct.sk_buff*)** %82, align 8
  %84 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 %83(%struct.l2cap_chan* %84, %struct.sk_buff* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  br label %104

89:                                               ; preds = %78
  br label %100

90:                                               ; preds = %57, %57
  %91 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @l2cap_data_rcv(%struct.l2cap_chan* %91, %struct.sk_buff* %92)
  br label %104

94:                                               ; preds = %57
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.l2cap_chan* %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %76, %66, %56
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %101, %90, %88, %67
  %105 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %106 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %105)
  br label %107

107:                                              ; preds = %104, %29, %23
  ret void
}

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn*, i64) #1

declare dso_local %struct.l2cap_chan* @a2mp_channel_create(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i32 @l2cap_chan_ready(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_le_data_rcv(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @l2cap_data_rcv(%struct.l2cap_chan*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
