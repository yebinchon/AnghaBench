; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_security_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_security_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i64, i64, i64, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_security_req = type { i64 }
%struct.smp_cmd_pairing = type { i32 }
%struct.smp_chan = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@SMP_CMD_NOTSUPP = common dso_local global i64 0, align 8
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@SMP_AUTH_SC = common dso_local global i64 0, align 8
@SMP_AUTH_REQUIREMENTS = common dso_local global i64 0, align 8
@HCI_IO_NO_INPUT_OUTPUT = common dso_local global i64 0, align 8
@BT_SECURITY_MEDIUM = common dso_local global i64 0, align 8
@SMP_USE_LTK = common dso_local global i32 0, align 4
@SMP_UNSPECIFIED = common dso_local global i64 0, align 8
@HCI_BONDABLE = common dso_local global i32 0, align 4
@SMP_AUTH_BONDING = common dso_local global i64 0, align 8
@SMP_PAIRING_NOTSUPP = common dso_local global i64 0, align 8
@SMP_CMD_PAIRING_REQ = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_security_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smp_cmd_security_req(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_security_req*, align 8
  %7 = alloca %struct.smp_cmd_pairing, align 4
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca %struct.smp_chan*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.smp_cmd_security_req*
  store %struct.smp_cmd_security_req* %17, %struct.smp_cmd_security_req** %6, align 8
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 0
  %20 = load %struct.hci_conn*, %struct.hci_conn** %19, align 8
  store %struct.hci_conn* %20, %struct.hci_conn** %8, align 8
  %21 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %22, align 8
  store %struct.hci_dev* %23, %struct.hci_dev** %9, align 8
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @SMP_INVALID_PARAMS, align 8
  store i64 %32, i64* %3, align 8
  br label %142

33:                                               ; preds = %2
  %34 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @SMP_CMD_NOTSUPP, align 8
  store i64 %40, i64* %3, align 8
  br label %142

41:                                               ; preds = %33
  %42 = load %struct.smp_cmd_security_req*, %struct.smp_cmd_security_req** %6, align 8
  %43 = getelementptr inbounds %struct.smp_cmd_security_req, %struct.smp_cmd_security_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %46 = call i64 @AUTH_REQ_MASK(%struct.hci_dev* %45)
  %47 = and i64 %44, %46
  store i64 %47, i64* %12, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %49 = load i32, i32* @HCI_SC_ONLY, align 4
  %50 = call i64 @hci_dev_test_flag(%struct.hci_dev* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @SMP_AUTH_SC, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @SMP_AUTH_REQUIREMENTS, align 8
  store i64 %58, i64* %3, align 8
  br label %142

59:                                               ; preds = %52, %41
  %60 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HCI_IO_NO_INPUT_OUTPUT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  store i64 %66, i64* %11, align 8
  br label %70

67:                                               ; preds = %59
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @authreq_to_seclevel(i64 %68)
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %67, %65
  %71 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* @SMP_USE_LTK, align 4
  %74 = call i64 @smp_sufficient_security(%struct.hci_conn* %71, i64 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %78 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @smp_ltk_encrypt(%struct.l2cap_conn* %77, i64 %80)
  store i64 0, i64* %3, align 8
  br label %142

82:                                               ; preds = %70
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %85 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %94 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %95 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @smp_ltk_encrypt(%struct.l2cap_conn* %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i64 0, i64* %3, align 8
  br label %142

100:                                              ; preds = %92
  %101 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %102 = call %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn* %101)
  store %struct.smp_chan* %102, %struct.smp_chan** %10, align 8
  %103 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %104 = icmp ne %struct.smp_chan* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* @SMP_UNSPECIFIED, align 8
  store i64 %106, i64* %3, align 8
  br label %142

107:                                              ; preds = %100
  %108 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %109 = load i32, i32* @HCI_BONDABLE, align 4
  %110 = call i64 @hci_dev_test_flag(%struct.hci_dev* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @SMP_AUTH_BONDING, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i64, i64* @SMP_PAIRING_NOTSUPP, align 8
  store i64 %118, i64* %3, align 8
  br label %142

119:                                              ; preds = %112, %107
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i32 @skb_pull(%struct.sk_buff* %120, i32 8)
  %122 = call i32 @memset(%struct.smp_cmd_pairing* %7, i32 0, i32 4)
  %123 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @build_pairing_cmd(%struct.l2cap_conn* %123, %struct.smp_cmd_pairing* %7, i32* null, i64 %124)
  %126 = load i32, i32* @SMP_CMD_PAIRING_REQ, align 4
  %127 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %128 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  %131 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %132 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = call i32 @memcpy(i32* %134, %struct.smp_cmd_pairing* %7, i32 4)
  %136 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %137 = load i32, i32* @SMP_CMD_PAIRING_REQ, align 4
  %138 = call i32 @smp_send_cmd(%struct.l2cap_conn* %136, i32 %137, i32 4, %struct.smp_cmd_pairing* %7)
  %139 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %140 = load i32, i32* @SMP_CMD_PAIRING_RSP, align 4
  %141 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %139, i32 %140)
  store i64 0, i64* %3, align 8
  br label %142

142:                                              ; preds = %119, %117, %105, %99, %76, %57, %39, %31
  %143 = load i64, i64* %3, align 8
  ret i64 %143
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i64 @AUTH_REQ_MASK(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @authreq_to_seclevel(i64) #1

declare dso_local i64 @smp_sufficient_security(%struct.hci_conn*, i64, i32) #1

declare dso_local i64 @smp_ltk_encrypt(%struct.l2cap_conn*, i64) #1

declare dso_local %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.smp_cmd_pairing*, i32, i32) #1

declare dso_local i32 @build_pairing_cmd(%struct.l2cap_conn*, %struct.smp_cmd_pairing*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.smp_cmd_pairing*, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, %struct.smp_cmd_pairing*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
