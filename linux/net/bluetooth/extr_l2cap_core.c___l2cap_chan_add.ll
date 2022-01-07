; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_chan_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_chan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.l2cap_conn*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"conn %p, psm 0x%2.2x, dcid 0x%4.4x\00", align 1
@HCI_ERROR_REMOTE_USER_TERM = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MTU = common dso_local global i8* null, align 8
@L2CAP_CID_CONN_LESS = common dso_local global i8* null, align 8
@L2CAP_CID_SIGNALING = common dso_local global i8* null, align 8
@L2CAP_BESTEFFORT_ID = common dso_local global i32 0, align 4
@L2CAP_SERV_BESTEFFORT = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MAX_SDU_SIZE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_SDU_ITIME = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_ACC_LAT = common dso_local global i32 0, align 4
@L2CAP_EFS_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@FLAG_HOLD_HCI_CONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__l2cap_chan_add(%struct.l2cap_conn* %0, %struct.l2cap_chan* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.l2cap_chan* %1, %struct.l2cap_chan** %4, align 8
  %5 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @__le16_to_cpu(i32 %8)
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 10
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %5, i32 %9, i8* %12)
  %14 = load i32, i32* @HCI_ERROR_REMOTE_USER_TERM, align 4
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 12
  store %struct.l2cap_conn* %17, %struct.l2cap_conn** %19, align 8
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %51 [
    i32 129, label %23
    i32 130, label %40
    i32 128, label %50
  ]

23:                                               ; preds = %2
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %25 = call i8* @l2cap_alloc_cid(%struct.l2cap_conn* %24)
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 11
  store i8* %25, i8** %27, align 8
  %28 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %29 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACL_LINK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i8*, i8** @L2CAP_DEFAULT_MTU, align 8
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %23
  br label %61

40:                                               ; preds = %2
  %41 = load i8*, i8** @L2CAP_CID_CONN_LESS, align 8
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @L2CAP_CID_CONN_LESS, align 8
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @L2CAP_DEFAULT_MTU, align 8
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  br label %61

50:                                               ; preds = %2
  br label %61

51:                                               ; preds = %2
  %52 = load i8*, i8** @L2CAP_CID_SIGNALING, align 8
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 11
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @L2CAP_CID_SIGNALING, align 8
  %56 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %57 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @L2CAP_DEFAULT_MTU, align 8
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %60 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %51, %50, %40, %39
  %62 = load i32, i32* @L2CAP_BESTEFFORT_ID, align 4
  %63 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %64 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @L2CAP_SERV_BESTEFFORT, align 4
  %66 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %67 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @L2CAP_DEFAULT_MAX_SDU_SIZE, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @L2CAP_DEFAULT_SDU_ITIME, align 4
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %73 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @L2CAP_DEFAULT_ACC_LAT, align 4
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @L2CAP_EFS_DEFAULT_FLUSH_TO, align 4
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %79 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %81 = call i32 @l2cap_chan_hold(%struct.l2cap_chan* %80)
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %83 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 128
  br i1 %85, label %92, label %86

86:                                               ; preds = %61
  %87 = load i32, i32* @FLAG_HOLD_HCI_CONN, align 4
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 2
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86, %61
  %93 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %94 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = call i32 @hci_conn_hold(%struct.TYPE_2__* %95)
  br label %97

97:                                               ; preds = %92, %86
  %98 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %99 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %98, i32 0, i32 1
  %100 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %101 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %100, i32 0, i32 0
  %102 = call i32 @list_add(i32* %99, i32* %101)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, i32, i8*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i8* @l2cap_alloc_cid(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_chan_hold(%struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_hold(%struct.TYPE_2__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
