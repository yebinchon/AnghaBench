; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_rf_disc_rsp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_rsp.c_nci_rf_disc_rsp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.nci_conn_info*, i32, %struct.TYPE_2__*, i32 }
%struct.nci_conn_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64* }

@.str = private unnamed_addr constant [13 x i8] c"status 0x%x\0A\00", align 1
@NCI_STATUS_OK = common dso_local global i64 0, align 8
@NCI_DISCOVERY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NCI_STATUS_REJECTED = common dso_local global i64 0, align 8
@NCI_STATIC_RF_CONN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_rf_disc_rsp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_rf_disc_rsp_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
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
  br i1 %16, label %17, label %54

17:                                               ; preds = %2
  %18 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %18, i32 0, i32 3
  %20 = load i32, i32* @NCI_DISCOVERY, align 4
  %21 = call i32 @atomic_set(i32* %19, i32 %20)
  %22 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %22, i32 0, i32 0
  %24 = load %struct.nci_conn_info*, %struct.nci_conn_info** %23, align 8
  store %struct.nci_conn_info* %24, %struct.nci_conn_info** %5, align 8
  %25 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %26 = icmp ne %struct.nci_conn_info* %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %17
  %28 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.nci_conn_info* @devm_kzalloc(i32* %31, i32 8, i32 %32)
  store %struct.nci_conn_info* %33, %struct.nci_conn_info** %5, align 8
  %34 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %35 = icmp ne %struct.nci_conn_info* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* @NCI_STATUS_REJECTED, align 8
  store i64 %37, i64* %6, align 8
  br label %55

38:                                               ; preds = %27
  %39 = load i32, i32* @NCI_STATIC_RF_CONN_ID, align 4
  %40 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %41 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %43 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %46 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %45, i32 0, i32 0
  %47 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %47, i32 0, i32 1
  %49 = call i32 @list_add(i32* %46, i32* %48)
  %50 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %51 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %51, i32 0, i32 0
  store %struct.nci_conn_info* %50, %struct.nci_conn_info** %52, align 8
  br label %53

53:                                               ; preds = %38, %17
  br label %54

54:                                               ; preds = %53, %2
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @nci_req_complete(%struct.nci_dev* %56, i64 %57)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.nci_conn_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
