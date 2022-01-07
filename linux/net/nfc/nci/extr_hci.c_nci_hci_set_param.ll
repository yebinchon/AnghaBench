; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, %struct.nci_conn_info* }
%struct.nci_conn_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nci_hcp_message = type { i32 }
%struct.nci_data = type { i64, i64*, i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"idx=%d to gate %d\0A\00", align 1
@NCI_HCI_INVALID_PIPE = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NCI_HCI_HCP_COMMAND = common dso_local global i32 0, align 4
@NCI_HCI_ANY_SET_PARAMETER = common dso_local global i32 0, align 4
@nci_hci_send_data_req = common dso_local global i32 0, align 4
@NCI_DATA_TIMEOUT = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@NCI_HCI_HCP_MESSAGE_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_hci_set_param(%struct.nci_dev* %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nci_hcp_message*, align 8
  %13 = alloca %struct.nci_conn_info*, align 8
  %14 = alloca %struct.nci_data, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %19 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* @NCI_HCI_INVALID_PIPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EADDRNOTAVAIL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %110

35:                                               ; preds = %5
  %36 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.nci_conn_info*, %struct.nci_conn_info** %39, align 8
  store %struct.nci_conn_info* %40, %struct.nci_conn_info** %13, align 8
  %41 = load %struct.nci_conn_info*, %struct.nci_conn_info** %13, align 8
  %42 = icmp ne %struct.nci_conn_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EPROTO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %110

46:                                               ; preds = %35
  %47 = load i64, i64* %11, align 8
  %48 = add i64 1, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i64* @kmalloc(i32 %49, i32 %50)
  store i64* %51, i64** %16, align 8
  %52 = load i64*, i64** %16, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %110

57:                                               ; preds = %46
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %16, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64*, i64** %16, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @memcpy(i64* %61, i64* %62, i64 %63)
  %65 = load %struct.nci_conn_info*, %struct.nci_conn_info** %13, align 8
  %66 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %14, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %14, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @NCI_HCI_HCP_COMMAND, align 4
  %72 = load i32, i32* @NCI_HCI_ANY_SET_PARAMETER, align 4
  %73 = call i32 @NCI_HCP_HEADER(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %14, i32 0, i32 3
  store i32 %73, i32* %74, align 8
  %75 = load i64*, i64** %16, align 8
  %76 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %14, i32 0, i32 1
  store i64* %75, i64** %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds %struct.nci_data, %struct.nci_data* %14, i32 0, i32 2
  store i64 %78, i64* %79, align 8
  %80 = load %struct.nci_dev*, %struct.nci_dev** %7, align 8
  %81 = load i32, i32* @nci_hci_send_data_req, align 4
  %82 = ptrtoint %struct.nci_data* %14 to i64
  %83 = load i32, i32* @NCI_DATA_TIMEOUT, align 4
  %84 = call i32 @msecs_to_jiffies(i32 %83)
  %85 = call i32 @nci_request(%struct.nci_dev* %80, i32 %81, i64 %82, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @NCI_STATUS_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %57
  %90 = load %struct.nci_conn_info*, %struct.nci_conn_info** %13, align 8
  %91 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.nci_hcp_message*
  store %struct.nci_hcp_message* %95, %struct.nci_hcp_message** %12, align 8
  %96 = load %struct.nci_hcp_message*, %struct.nci_hcp_message** %12, align 8
  %97 = getelementptr inbounds %struct.nci_hcp_message, %struct.nci_hcp_message* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @NCI_HCP_MSG_GET_CMD(i32 %98)
  %100 = call i32 @nci_hci_result_to_errno(i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load %struct.nci_conn_info*, %struct.nci_conn_info** %13, align 8
  %102 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* @NCI_HCI_HCP_MESSAGE_HEADER_LEN, align 4
  %105 = call i32 @skb_pull(%struct.TYPE_4__* %103, i32 %104)
  br label %106

106:                                              ; preds = %89, %57
  %107 = load i64*, i64** %16, align 8
  %108 = call i32 @kfree(i64* %107)
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %54, %43, %32
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @NCI_HCP_HEADER(i32, i32) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nci_hci_result_to_errno(i32) #1

declare dso_local i32 @NCI_HCP_MSG_GET_CMD(i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
