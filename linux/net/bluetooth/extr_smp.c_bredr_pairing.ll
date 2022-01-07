; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_bredr_pairing.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_bredr_pairing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32, %struct.hci_conn* }
%struct.hci_conn = type { i64, i32, %struct.hci_dev* }
%struct.hci_dev = type { %struct.l2cap_chan* }
%struct.smp_cmd_pairing = type { i32 }
%struct.smp_chan = type { i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@HCI_CONN_NEW_LINK_KEY = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@HCI_SC_ENABLED = common dso_local global i32 0, align 4
@HCI_CONN_AES_CCM = common dso_local global i32 0, align 4
@HCI_FORCE_BREDR_SMP = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@L2CAP_FC_SMP_BREDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to create SMP context for BR/EDR\00", align 1
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s starting SMP over BR/EDR\00", align 1
@SMP_CMD_PAIRING_REQ = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @bredr_pairing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bredr_pairing(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.smp_cmd_pairing, align 4
  %7 = alloca %struct.smp_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 1
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  store %struct.l2cap_conn* %10, %struct.l2cap_conn** %3, align 8
  %11 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %12 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %11, i32 0, i32 1
  %13 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  store %struct.hci_conn* %13, %struct.hci_conn** %4, align 8
  %14 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  store %struct.hci_dev* %16, %struct.hci_dev** %5, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %17)
  %19 = load i32, i32* @HCI_CONN_NEW_LINK_KEY, align 4
  %20 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %117

25:                                               ; preds = %1
  %26 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %27 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %28 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %117

32:                                               ; preds = %25
  %33 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %117

39:                                               ; preds = %32
  %40 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %41 = load i32, i32* @HCI_SC_ENABLED, align 4
  %42 = call i32 @hci_dev_test_flag(%struct.hci_dev* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %117

45:                                               ; preds = %39
  %46 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %47 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 1
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %53 = load i32, i32* @HCI_FORCE_BREDR_SMP, align 4
  %54 = call i32 @hci_dev_test_flag(%struct.hci_dev* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %117

57:                                               ; preds = %51, %45
  %58 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %59 = load i32, i32* @HCI_LE_ENABLED, align 4
  %60 = call i32 @hci_dev_test_flag(%struct.hci_dev* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %117

63:                                               ; preds = %57
  %64 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %65 = call i32 @lmp_host_le_capable(%struct.hci_conn* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %117

68:                                               ; preds = %63
  %69 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %70 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @L2CAP_FC_SMP_BREDR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %117

76:                                               ; preds = %68
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %78 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %117

82:                                               ; preds = %76
  %83 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %84 = call %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn* %83)
  store %struct.smp_chan* %84, %struct.smp_chan** %7, align 8
  %85 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %86 = icmp ne %struct.smp_chan* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %89 = call i32 @bt_dev_err(%struct.hci_dev* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %117

90:                                               ; preds = %82
  %91 = load i32, i32* @SMP_FLAG_SC, align 4
  %92 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %93 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %92, i32 0, i32 1
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 0
  %97 = load %struct.l2cap_chan*, %struct.l2cap_chan** %96, align 8
  %98 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %97)
  %99 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %100 = call i32 @build_bredr_pairing_cmd(%struct.smp_chan* %99, %struct.smp_cmd_pairing* %6, i32* null)
  %101 = load i32, i32* @SMP_CMD_PAIRING_REQ, align 4
  %102 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %103 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %107 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = call i32 @memcpy(i32* %109, %struct.smp_cmd_pairing* %6, i32 4)
  %111 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %112 = load i32, i32* @SMP_CMD_PAIRING_REQ, align 4
  %113 = call i32 @smp_send_cmd(%struct.l2cap_conn* %111, i32 %112, i32 4, %struct.smp_cmd_pairing* %6)
  %114 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %115 = load i32, i32* @SMP_CMD_PAIRING_RSP, align 4
  %116 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %114, i32 %115)
  br label %117

117:                                              ; preds = %90, %87, %81, %75, %67, %62, %56, %44, %38, %31, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @lmp_host_le_capable(%struct.hci_conn*) #1

declare dso_local %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @build_bredr_pairing_cmd(%struct.smp_chan*, %struct.smp_cmd_pairing*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.smp_cmd_pairing*, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, %struct.smp_cmd_pairing*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
