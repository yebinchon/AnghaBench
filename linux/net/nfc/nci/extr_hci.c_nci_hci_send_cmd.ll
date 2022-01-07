; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, %struct.nci_conn_info* }
%struct.nci_conn_info = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i64 }
%struct.nci_hcp_message = type { i32 }
%struct.nci_data = type { i64, i64*, i64, i32, i32 }

@NCI_HCI_INVALID_PIPE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NCI_HCI_HCP_COMMAND = common dso_local global i32 0, align 4
@nci_hci_send_data_req = common dso_local global i32 0, align 4
@NCI_DATA_TIMEOUT = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@NCI_HCI_HCP_MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_hci_send_cmd(%struct.nci_dev* %0, i64 %1, i64 %2, i64* %3, i64 %4, %struct.sk_buff** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca %struct.nci_hcp_message*, align 8
  %15 = alloca %struct.nci_conn_info*, align 8
  %16 = alloca %struct.nci_data, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.sk_buff** %5, %struct.sk_buff*** %13, align 8
  %19 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %20 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %18, align 8
  %27 = load i64, i64* %18, align 8
  %28 = load i64, i64* @NCI_HCI_INVALID_PIPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EADDRNOTAVAIL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %98

33:                                               ; preds = %6
  %34 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %35 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.nci_conn_info*, %struct.nci_conn_info** %37, align 8
  store %struct.nci_conn_info* %38, %struct.nci_conn_info** %15, align 8
  %39 = load %struct.nci_conn_info*, %struct.nci_conn_info** %15, align 8
  %40 = icmp ne %struct.nci_conn_info* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EPROTO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %98

44:                                               ; preds = %33
  %45 = load %struct.nci_conn_info*, %struct.nci_conn_info** %15, align 8
  %46 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %16, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %16, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* @NCI_HCI_HCP_COMMAND, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @NCI_HCP_HEADER(i32 %51, i64 %52)
  %54 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %16, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %16, i32 0, i32 1
  store i64* %55, i64** %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %16, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  %59 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %60 = load i32, i32* @nci_hci_send_data_req, align 4
  %61 = ptrtoint %struct.nci_data* %16 to i64
  %62 = load i32, i32* @NCI_DATA_TIMEOUT, align 4
  %63 = call i32 @msecs_to_jiffies(i32 %62)
  %64 = call i32 @nci_request(%struct.nci_dev* %59, i32 %60, i64 %61, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @NCI_STATUS_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %44
  %69 = load %struct.nci_conn_info*, %struct.nci_conn_info** %15, align 8
  %70 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.nci_hcp_message*
  store %struct.nci_hcp_message* %74, %struct.nci_hcp_message** %14, align 8
  %75 = load %struct.nci_hcp_message*, %struct.nci_hcp_message** %14, align 8
  %76 = getelementptr inbounds %struct.nci_hcp_message, %struct.nci_hcp_message* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @NCI_HCP_MSG_GET_CMD(i32 %77)
  %79 = call i32 @nci_hci_result_to_errno(i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load %struct.nci_conn_info*, %struct.nci_conn_info** %15, align 8
  %81 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %80, i32 0, i32 0
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  %83 = load i32, i32* @NCI_HCI_HCP_MESSAGE_HEADER_LEN, align 4
  %84 = call i32 @skb_pull(%struct.sk_buff* %82, i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %68
  %88 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %89 = icmp ne %struct.sk_buff** %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.nci_conn_info*, %struct.nci_conn_info** %15, align 8
  %92 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %91, i32 0, i32 0
  %93 = load %struct.sk_buff*, %struct.sk_buff** %92, align 8
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* %93, %struct.sk_buff** %94, align 8
  br label %95

95:                                               ; preds = %90, %87, %68
  br label %96

96:                                               ; preds = %95, %44
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %41, %30
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @NCI_HCP_HEADER(i32, i64) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nci_hci_result_to_errno(i32) #1

declare dso_local i32 @NCI_HCP_MSG_GET_CMD(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
