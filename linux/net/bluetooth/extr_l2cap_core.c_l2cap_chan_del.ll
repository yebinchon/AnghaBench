; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i32, i32, i32, i32, %struct.hci_chan*, i32, %struct.l2cap_conn*, i32, %struct.TYPE_3__*, i32 }
%struct.hci_chan = type { i32 }
%struct.l2cap_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amp_mgr* }
%struct.amp_mgr = type { %struct.l2cap_chan* }
%struct.TYPE_3__ = type { i32 (%struct.l2cap_chan*, i32)* }

@.str = private unnamed_addr constant [35 x i8] c"chan %p, conn %p, err %d, state %s\00", align 1
@L2CAP_CHAN_FIXED = common dso_local global i64 0, align 8
@FLAG_HOLD_HCI_CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"chan %p disconnect hs_hchan %p\00", align 1
@CONF_NOT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_chan_del(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.amp_mgr*, align 8
  %7 = alloca %struct.hci_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 9
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  store %struct.l2cap_conn* %10, %struct.l2cap_conn** %5, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = call i32 @__clear_chan_timer(%struct.l2cap_chan* %11)
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %17 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @state_to_string(i32 %18)
  %20 = call i32 (i8*, %struct.l2cap_chan*, %struct.l2cap_conn*, ...) @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %13, %struct.l2cap_conn* %14, i32 %15, i32 %19)
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 11
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.l2cap_chan*, i32)*, i32 (%struct.l2cap_chan*, i32)** %24, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %25(%struct.l2cap_chan* %26, i32 %27)
  %29 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %30 = icmp ne %struct.l2cap_conn* %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %2
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %33 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.amp_mgr*, %struct.amp_mgr** %35, align 8
  store %struct.amp_mgr* %36, %struct.amp_mgr** %6, align 8
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 10
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %41 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %40)
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 9
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %43, align 8
  %44 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %45 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @L2CAP_CHAN_FIXED, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @FLAG_HOLD_HCI_CONN, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 8
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49, %31
  %56 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %57 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @hci_conn_drop(%struct.TYPE_4__* %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %62 = icmp ne %struct.amp_mgr* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %65 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %64, i32 0, i32 0
  %66 = load %struct.l2cap_chan*, %struct.l2cap_chan** %65, align 8
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %68 = icmp eq %struct.l2cap_chan* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.amp_mgr*, %struct.amp_mgr** %6, align 8
  %71 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %70, i32 0, i32 0
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %71, align 8
  br label %72

72:                                               ; preds = %69, %63, %60
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %75 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %74, i32 0, i32 7
  %76 = load %struct.hci_chan*, %struct.hci_chan** %75, align 8
  %77 = icmp ne %struct.hci_chan* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %80 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %79, i32 0, i32 7
  %81 = load %struct.hci_chan*, %struct.hci_chan** %80, align 8
  store %struct.hci_chan* %81, %struct.hci_chan** %7, align 8
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %83 = load %struct.hci_chan*, %struct.hci_chan** %7, align 8
  %84 = bitcast %struct.hci_chan* %83 to %struct.l2cap_conn*
  %85 = call i32 (i8*, %struct.l2cap_chan*, %struct.l2cap_conn*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %82, %struct.l2cap_conn* %84)
  %86 = load %struct.hci_chan*, %struct.hci_chan** %7, align 8
  %87 = call i32 @amp_disconnect_logical_link(%struct.hci_chan* %86)
  br label %88

88:                                               ; preds = %78, %73
  %89 = load i32, i32* @CONF_NOT_COMPLETE, align 4
  %90 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %91 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %90, i32 0, i32 6
  %92 = call i64 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %125

95:                                               ; preds = %88
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %124 [
    i32 131, label %99
    i32 129, label %100
    i32 130, label %104
    i32 128, label %120
  ]

99:                                               ; preds = %95
  br label %124

100:                                              ; preds = %95
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %102 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %101, i32 0, i32 2
  %103 = call i32 @skb_queue_purge(i32* %102)
  br label %124

104:                                              ; preds = %95
  %105 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %106 = call i32 @__clear_retrans_timer(%struct.l2cap_chan* %105)
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %108 = call i32 @__clear_monitor_timer(%struct.l2cap_chan* %107)
  %109 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %110 = call i32 @__clear_ack_timer(%struct.l2cap_chan* %109)
  %111 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %112 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %111, i32 0, i32 5
  %113 = call i32 @skb_queue_purge(i32* %112)
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 4
  %116 = call i32 @l2cap_seq_list_free(i32* %115)
  %117 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %118 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %117, i32 0, i32 3
  %119 = call i32 @l2cap_seq_list_free(i32* %118)
  br label %120

120:                                              ; preds = %95, %104
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %122 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %121, i32 0, i32 2
  %123 = call i32 @skb_queue_purge(i32* %122)
  br label %124

124:                                              ; preds = %95, %120, %100, %99
  br label %125

125:                                              ; preds = %124, %94
  ret void
}

declare dso_local i32 @__clear_chan_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.l2cap_conn*, ...) #1

declare dso_local i32 @state_to_string(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_drop(%struct.TYPE_4__*) #1

declare dso_local i32 @amp_disconnect_logical_link(%struct.hci_chan*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @__clear_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__clear_monitor_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__clear_ack_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_seq_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
