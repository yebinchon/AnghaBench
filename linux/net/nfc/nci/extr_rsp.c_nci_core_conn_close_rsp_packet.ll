; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_conn_close_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_core_conn_close_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64* }
%struct.nci_conn_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"status 0x%x\0A\00", align 1
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_core_conn_close_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_core_conn_close_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_conn_info*, align 8
  %6 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NCI_STATUS_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %19 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev* %18, i32 %21)
  store %struct.nci_conn_info* %22, %struct.nci_conn_info** %5, align 8
  %23 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %24 = icmp ne %struct.nci_conn_info* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %27 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %34 = call i32 @devm_kfree(i32* %32, %struct.nci_conn_info* %33)
  br label %35

35:                                               ; preds = %25, %17
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @nci_req_complete(%struct.nci_dev* %37, i64 %38)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.nci_conn_info*) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
