; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_conn_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_conn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.hci_chan*, i32, i32 }
%struct.hci_chan = type { i32 }
%struct.hci_conn = type { i32, %struct.TYPE_3__*, %struct.l2cap_conn* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hcon %p conn %p hchan %p\00", align 1
@L2CAP_FC_SIG_BREDR = common dso_local global i32 0, align 4
@L2CAP_FC_CONNLESS = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_HS_ENABLED = common dso_local global i32 0, align 4
@L2CAP_FC_A2MP = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@HCI_FORCE_BREDR_SMP = common dso_local global i32 0, align 4
@L2CAP_FC_SMP_BREDR = common dso_local global i32 0, align 4
@l2cap_info_timeout = common dso_local global i32 0, align 4
@process_pending_rx = common dso_local global i32 0, align 4
@l2cap_conn_update_id_addr = common dso_local global i32 0, align 4
@HCI_ERROR_REMOTE_USER_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_conn* (%struct.hci_conn*)* @l2cap_conn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.l2cap_conn*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.hci_chan*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 2
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  store %struct.l2cap_conn* %8, %struct.l2cap_conn** %4, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %10 = icmp ne %struct.l2cap_conn* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  store %struct.l2cap_conn* %12, %struct.l2cap_conn** %2, align 8
  br label %156

13:                                               ; preds = %1
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = call %struct.hci_chan* @hci_chan_create(%struct.hci_conn* %14)
  store %struct.hci_chan* %15, %struct.hci_chan** %5, align 8
  %16 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %17 = icmp ne %struct.hci_chan* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %2, align 8
  br label %156

19:                                               ; preds = %13
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.l2cap_conn* @kzalloc(i32 72, i32 %20)
  store %struct.l2cap_conn* %21, %struct.l2cap_conn** %4, align 8
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %23 = icmp ne %struct.l2cap_conn* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %26 = call i32 @hci_chan_del(%struct.hci_chan* %25)
  store %struct.l2cap_conn* null, %struct.l2cap_conn** %2, align 8
  br label %156

27:                                               ; preds = %19
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %29 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %28, i32 0, i32 14
  %30 = call i32 @kref_init(i32* %29)
  %31 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 2
  store %struct.l2cap_conn* %31, %struct.l2cap_conn** %33, align 8
  %34 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %35 = call i32 @hci_conn_get(%struct.hci_conn* %34)
  %36 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %37 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %39 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %40 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %39, i32 0, i32 12
  store %struct.hci_chan* %38, %struct.hci_chan** %40, align 8
  %41 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %43 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %44 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %41, %struct.l2cap_conn* %42, %struct.hci_chan* %43)
  %45 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %64 [
    i32 128, label %48
  ]

48:                                               ; preds = %27
  %49 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %62 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 8
  br label %72

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %27, %63
  %65 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %66 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %71 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %64, %55
  %73 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %74 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %73, i32 0, i32 10
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @L2CAP_FC_SIG_BREDR, align 4
  %76 = load i32, i32* @L2CAP_FC_CONNLESS, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %79 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ACL_LINK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %72
  %86 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* @HCI_HS_ENABLED, align 4
  %90 = call i64 @hci_dev_test_flag(%struct.TYPE_3__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @L2CAP_FC_A2MP, align 4
  %94 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %95 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %85, %72
  %99 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %100 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* @HCI_LE_ENABLED, align 4
  %103 = call i64 @hci_dev_test_flag(%struct.TYPE_3__* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = call i64 @bredr_sc_enabled(%struct.TYPE_3__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %113 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* @HCI_FORCE_BREDR_SMP, align 4
  %116 = call i64 @hci_dev_test_flag(%struct.TYPE_3__* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111, %105
  %119 = load i32, i32* @L2CAP_FC_SMP_BREDR, align 4
  %120 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %121 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %111, %98
  %125 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %126 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %125, i32 0, i32 9
  %127 = call i32 @mutex_init(i32* %126)
  %128 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %129 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %128, i32 0, i32 8
  %130 = call i32 @mutex_init(i32* %129)
  %131 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %132 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %131, i32 0, i32 7
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %135 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %134, i32 0, i32 6
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %138 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %137, i32 0, i32 5
  %139 = load i32, i32* @l2cap_info_timeout, align 4
  %140 = call i32 @INIT_DELAYED_WORK(i32* %138, i32 %139)
  %141 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %142 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %141, i32 0, i32 4
  %143 = call i32 @skb_queue_head_init(i32* %142)
  %144 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %145 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %144, i32 0, i32 3
  %146 = load i32, i32* @process_pending_rx, align 4
  %147 = call i32 @INIT_WORK(i32* %145, i32 %146)
  %148 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %149 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %148, i32 0, i32 2
  %150 = load i32, i32* @l2cap_conn_update_id_addr, align 4
  %151 = call i32 @INIT_WORK(i32* %149, i32 %150)
  %152 = load i32, i32* @HCI_ERROR_REMOTE_USER_TERM, align 4
  %153 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %154 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  store %struct.l2cap_conn* %155, %struct.l2cap_conn** %2, align 8
  br label %156

156:                                              ; preds = %124, %24, %18, %11
  %157 = load %struct.l2cap_conn*, %struct.l2cap_conn** %2, align 8
  ret %struct.l2cap_conn* %157
}

declare dso_local %struct.hci_chan* @hci_chan_create(%struct.hci_conn*) #1

declare dso_local %struct.l2cap_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @hci_chan_del(%struct.hci_chan*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hci_conn_get(%struct.hci_conn*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.l2cap_conn*, %struct.hci_chan*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @bredr_sc_enabled(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
