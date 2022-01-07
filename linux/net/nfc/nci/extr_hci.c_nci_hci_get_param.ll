; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, %struct.nci_conn_info* }
%struct.nci_conn_info = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i64 }
%struct.nci_hcp_message = type { i32 }
%struct.nci_data = type { i64, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"idx=%d to gate %d\0A\00", align 1
@NCI_HCI_INVALID_PIPE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NCI_HCI_HCP_COMMAND = common dso_local global i32 0, align 4
@NCI_HCI_ANY_GET_PARAMETER = common dso_local global i32 0, align 4
@nci_hci_send_data_req = common dso_local global i32 0, align 4
@NCI_DATA_TIMEOUT = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@NCI_HCI_HCP_MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_hci_get_param(%struct.nci_dev* %0, i64 %1, i64 %2, %struct.sk_buff** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.nci_hcp_message*, align 8
  %11 = alloca %struct.nci_conn_info*, align 8
  %12 = alloca %struct.nci_data, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %9, align 8
  %15 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @NCI_HCI_INVALID_PIPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EADDRNOTAVAIL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %95

32:                                               ; preds = %4
  %33 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %34 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.nci_conn_info*, %struct.nci_conn_info** %36, align 8
  store %struct.nci_conn_info* %37, %struct.nci_conn_info** %11, align 8
  %38 = load %struct.nci_conn_info*, %struct.nci_conn_info** %11, align 8
  %39 = icmp ne %struct.nci_conn_info* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EPROTO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %95

43:                                               ; preds = %32
  %44 = load %struct.nci_conn_info*, %struct.nci_conn_info** %11, align 8
  %45 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %12, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %12, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @NCI_HCI_HCP_COMMAND, align 4
  %51 = load i32, i32* @NCI_HCI_ANY_GET_PARAMETER, align 4
  %52 = call i32 @NCI_HCP_HEADER(i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %12, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %12, i32 0, i32 1
  store i64* %8, i64** %54, align 8
  %55 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %12, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %57 = load i32, i32* @nci_hci_send_data_req, align 4
  %58 = ptrtoint %struct.nci_data* %12 to i64
  %59 = load i32, i32* @NCI_DATA_TIMEOUT, align 4
  %60 = call i32 @msecs_to_jiffies(i32 %59)
  %61 = call i32 @nci_request(%struct.nci_dev* %56, i32 %57, i64 %58, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @NCI_STATUS_OK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %43
  %66 = load %struct.nci_conn_info*, %struct.nci_conn_info** %11, align 8
  %67 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.nci_hcp_message*
  store %struct.nci_hcp_message* %71, %struct.nci_hcp_message** %10, align 8
  %72 = load %struct.nci_hcp_message*, %struct.nci_hcp_message** %10, align 8
  %73 = getelementptr inbounds %struct.nci_hcp_message, %struct.nci_hcp_message* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NCI_HCP_MSG_GET_CMD(i32 %74)
  %76 = call i32 @nci_hci_result_to_errno(i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load %struct.nci_conn_info*, %struct.nci_conn_info** %11, align 8
  %78 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %77, i32 0, i32 0
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = load i32, i32* @NCI_HCI_HCP_MESSAGE_HEADER_LEN, align 4
  %81 = call i32 @skb_pull(%struct.sk_buff* %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %65
  %85 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %86 = icmp ne %struct.sk_buff** %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.nci_conn_info*, %struct.nci_conn_info** %11, align 8
  %89 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  %91 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %91, align 8
  br label %92

92:                                               ; preds = %87, %84, %65
  br label %93

93:                                               ; preds = %92, %43
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %40, %29
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @NCI_HCP_HEADER(i32, i32) #1

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
