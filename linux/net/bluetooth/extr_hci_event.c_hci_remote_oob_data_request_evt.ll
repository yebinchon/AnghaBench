; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_oob_data_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_oob_data_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_oob_data_request = type { i32 }
%struct.oob_data = type { i32, i32, i32, i32 }
%struct.hci_cp_remote_oob_data_neg_reply = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hci_cp_remote_oob_ext_data_reply = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hci_cp_remote_oob_data_reply = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_MGMT = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@HCI_OP_REMOTE_OOB_DATA_NEG_REPLY = common dso_local global i32 0, align 4
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@HCI_OP_REMOTE_OOB_EXT_DATA_REPLY = common dso_local global i32 0, align 4
@HCI_OP_REMOTE_OOB_DATA_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_oob_data_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_oob_data_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_oob_data_request*, align 8
  %6 = alloca %struct.oob_data*, align 8
  %7 = alloca %struct.hci_cp_remote_oob_data_neg_reply, align 4
  %8 = alloca %struct.hci_cp_remote_oob_ext_data_reply, align 4
  %9 = alloca %struct.hci_cp_remote_oob_data_reply, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_ev_remote_oob_data_request*
  store %struct.hci_ev_remote_oob_data_request* %14, %struct.hci_ev_remote_oob_data_request** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @HCI_MGMT, align 4
  %23 = call i64 @hci_dev_test_flag(%struct.hci_dev* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %114

26:                                               ; preds = %2
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = load %struct.hci_ev_remote_oob_data_request*, %struct.hci_ev_remote_oob_data_request** %5, align 8
  %29 = getelementptr inbounds %struct.hci_ev_remote_oob_data_request, %struct.hci_ev_remote_oob_data_request* %28, i32 0, i32 0
  %30 = load i32, i32* @BDADDR_BREDR, align 4
  %31 = call %struct.oob_data* @hci_find_remote_oob_data(%struct.hci_dev* %27, i32* %29, i32 %30)
  store %struct.oob_data* %31, %struct.oob_data** %6, align 8
  %32 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %33 = icmp ne %struct.oob_data* %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.hci_cp_remote_oob_data_neg_reply, %struct.hci_cp_remote_oob_data_neg_reply* %7, i32 0, i32 2
  %36 = load %struct.hci_ev_remote_oob_data_request*, %struct.hci_ev_remote_oob_data_request** %5, align 8
  %37 = getelementptr inbounds %struct.hci_ev_remote_oob_data_request, %struct.hci_ev_remote_oob_data_request* %36, i32 0, i32 0
  %38 = call i32 @bacpy(i32* %35, i32* %37)
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = load i32, i32* @HCI_OP_REMOTE_OOB_DATA_NEG_REPLY, align 4
  %41 = bitcast %struct.hci_cp_remote_oob_data_neg_reply* %7 to %struct.hci_cp_remote_oob_ext_data_reply*
  %42 = call i32 @hci_send_cmd(%struct.hci_dev* %39, i32 %40, i32 28, %struct.hci_cp_remote_oob_ext_data_reply* %41)
  br label %114

43:                                               ; preds = %26
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = call i64 @bredr_sc_enabled(%struct.hci_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %92

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 2
  %49 = load %struct.hci_ev_remote_oob_data_request*, %struct.hci_ev_remote_oob_data_request** %5, align 8
  %50 = getelementptr inbounds %struct.hci_ev_remote_oob_data_request, %struct.hci_ev_remote_oob_data_request* %49, i32 0, i32 0
  %51 = call i32 @bacpy(i32* %48, i32* %50)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = load i32, i32* @HCI_SC_ONLY, align 4
  %54 = call i64 @hci_dev_test_flag(%struct.hci_dev* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(i32 %58, i32 0, i32 4)
  %60 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32 %61, i32 0, i32 4)
  br label %76

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %67 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %65, i32 %68, i32 4)
  %70 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %73 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32 %71, i32 %74, i32 4)
  br label %76

76:                                               ; preds = %63, %56
  %77 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %80 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %78, i32 %81, i32 4)
  %83 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, %struct.hci_cp_remote_oob_ext_data_reply* %8, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %86 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32 %84, i32 %87, i32 4)
  %89 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %90 = load i32, i32* @HCI_OP_REMOTE_OOB_EXT_DATA_REPLY, align 4
  %91 = call i32 @hci_send_cmd(%struct.hci_dev* %89, i32 %90, i32 28, %struct.hci_cp_remote_oob_ext_data_reply* %8)
  br label %113

92:                                               ; preds = %43
  %93 = getelementptr inbounds %struct.hci_cp_remote_oob_data_reply, %struct.hci_cp_remote_oob_data_reply* %9, i32 0, i32 2
  %94 = load %struct.hci_ev_remote_oob_data_request*, %struct.hci_ev_remote_oob_data_request** %5, align 8
  %95 = getelementptr inbounds %struct.hci_ev_remote_oob_data_request, %struct.hci_ev_remote_oob_data_request* %94, i32 0, i32 0
  %96 = call i32 @bacpy(i32* %93, i32* %95)
  %97 = getelementptr inbounds %struct.hci_cp_remote_oob_data_reply, %struct.hci_cp_remote_oob_data_reply* %9, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %100 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32 %98, i32 %101, i32 4)
  %103 = getelementptr inbounds %struct.hci_cp_remote_oob_data_reply, %struct.hci_cp_remote_oob_data_reply* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.oob_data*, %struct.oob_data** %6, align 8
  %106 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i32 %104, i32 %107, i32 4)
  %109 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %110 = load i32, i32* @HCI_OP_REMOTE_OOB_DATA_REPLY, align 4
  %111 = bitcast %struct.hci_cp_remote_oob_data_reply* %9 to %struct.hci_cp_remote_oob_ext_data_reply*
  %112 = call i32 @hci_send_cmd(%struct.hci_dev* %109, i32 %110, i32 28, %struct.hci_cp_remote_oob_ext_data_reply* %111)
  br label %113

113:                                              ; preds = %92, %76
  br label %114

114:                                              ; preds = %113, %34, %25
  %115 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %116 = call i32 @hci_dev_unlock(%struct.hci_dev* %115)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.oob_data* @hci_find_remote_oob_data(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_remote_oob_ext_data_reply*) #1

declare dso_local i64 @bredr_sc_enabled(%struct.hci_dev*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
