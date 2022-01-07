; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_nfcc_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_nfcc_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_loopback_data = type { i32, %struct.sk_buff* }
%struct.nci_conn_info = type { %struct.sk_buff*, %struct.nci_dev*, i32 }

@NCI_DESTINATION_NFCC_LOOPBACK = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@nci_nfcc_loopback_cb = common dso_local global i32 0, align 4
@NCI_DATA_HDR_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nci_send_data_req = common dso_local global i32 0, align 4
@NCI_DATA_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_nfcc_loopback(%struct.nci_dev* %0, i8* %1, i64 %2, %struct.sk_buff** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nci_loopback_data, align 8
  %12 = alloca %struct.nci_conn_info*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %9, align 8
  %15 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %16 = load i32, i32* @NCI_DESTINATION_NFCC_LOOPBACK, align 4
  %17 = call i32 @nci_get_conn_info_by_dest_type_params(%struct.nci_dev* %15, i32 %16, i32* null)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %22 = load i32, i32* @NCI_DESTINATION_NFCC_LOOPBACK, align 4
  %23 = call i32 @nci_core_conn_create(%struct.nci_dev* %21, i32 %22, i32 0, i32 0, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @NCI_STATUS_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %94

29:                                               ; preds = %20
  %30 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %31 = load i32, i32* @NCI_DESTINATION_NFCC_LOOPBACK, align 4
  %32 = call i32 @nci_get_conn_info_by_dest_type_params(%struct.nci_dev* %30, i32 %31, i32* null)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %29, %4
  %34 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev* %34, i32 %35)
  store %struct.nci_conn_info* %36, %struct.nci_conn_info** %12, align 8
  %37 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %38 = icmp ne %struct.nci_conn_info* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EPROTO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %94

42:                                               ; preds = %33
  %43 = load i32, i32* @nci_nfcc_loopback_cb, align 4
  %44 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %45 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %47 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %48 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %47, i32 0, i32 1
  store %struct.nci_dev* %46, %struct.nci_dev** %48, align 8
  %49 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %50 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %50, %51
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev* %49, i64 %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %13, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %94

60:                                               ; preds = %42
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = load i64, i64* @NCI_DATA_HDR_SIZE, align 8
  %63 = call i32 @skb_reserve(%struct.sk_buff* %61, i64 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @skb_put_data(%struct.sk_buff* %64, i8* %65, i64 %66)
  %68 = load i32, i32* %14, align 4
  %69 = getelementptr inbounds %struct.nci_loopback_data, %struct.nci_loopback_data* %11, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = getelementptr inbounds %struct.nci_loopback_data, %struct.nci_loopback_data* %11, i32 0, i32 1
  store %struct.sk_buff* %70, %struct.sk_buff** %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %74 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %76 = load i32, i32* @nci_send_data_req, align 4
  %77 = ptrtoint %struct.nci_loopback_data* %11 to i64
  %78 = load i32, i32* @NCI_DATA_TIMEOUT, align 4
  %79 = call i32 @msecs_to_jiffies(i32 %78)
  %80 = call i32 @nci_request(%struct.nci_dev* %75, i32 %76, i64 %77, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @NCI_STATUS_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %60
  %85 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %86 = icmp ne %struct.sk_buff** %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.nci_conn_info*, %struct.nci_conn_info** %12, align 8
  %89 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  %91 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %91, align 8
  br label %92

92:                                               ; preds = %87, %84, %60
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %57, %39, %27
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @nci_get_conn_info_by_dest_type_params(%struct.nci_dev*, i32, i32*) #1

declare dso_local i32 @nci_core_conn_create(%struct.nci_dev*, i32, i32, i32, i32*) #1

declare dso_local %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev*, i32) #1

declare dso_local %struct.sk_buff* @nci_skb_alloc(%struct.nci_dev*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @nci_request(%struct.nci_dev*, i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
