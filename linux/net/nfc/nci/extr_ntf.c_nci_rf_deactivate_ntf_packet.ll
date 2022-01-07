; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_rf_deactivate_ntf_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_ntf.c_nci_rf_deactivate_ntf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32*, i32, %struct.nci_conn_info* }
%struct.nci_conn_info = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nci_rf_deactivate_ntf = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"entry, type 0x%x, reason 0x%x\0A\00", align 1
@NCI_DATA_EXCHANGE = common dso_local global i32 0, align 4
@NCI_STATIC_RF_CONN_ID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NCI_IDLE = common dso_local global i32 0, align 4
@NCI_W4_HOST_SELECT = common dso_local global i32 0, align 4
@NCI_DISCOVERY = common dso_local global i32 0, align 4
@NCI_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, %struct.sk_buff*)* @nci_rf_deactivate_ntf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_rf_deactivate_ntf_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nci_conn_info*, align 8
  %6 = alloca %struct.nci_rf_deactivate_ntf*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.nci_rf_deactivate_ntf*
  store %struct.nci_rf_deactivate_ntf* %11, %struct.nci_rf_deactivate_ntf** %6, align 8
  %12 = load %struct.nci_rf_deactivate_ntf*, %struct.nci_rf_deactivate_ntf** %6, align 8
  %13 = getelementptr inbounds %struct.nci_rf_deactivate_ntf, %struct.nci_rf_deactivate_ntf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nci_rf_deactivate_ntf*, %struct.nci_rf_deactivate_ntf** %6, align 8
  %16 = getelementptr inbounds %struct.nci_rf_deactivate_ntf, %struct.nci_rf_deactivate_ntf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %19, i32 0, i32 4
  %21 = load %struct.nci_conn_info*, %struct.nci_conn_info** %20, align 8
  store %struct.nci_conn_info* %21, %struct.nci_conn_info** %5, align 8
  %22 = load %struct.nci_conn_info*, %struct.nci_conn_info** %5, align 8
  %23 = icmp ne %struct.nci_conn_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %26, i32 0, i32 3
  %28 = call i32 @skb_queue_purge(i32* %27)
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree_skb(i32* %36)
  %38 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %25
  %41 = load i32, i32* @NCI_DATA_EXCHANGE, align 4
  %42 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %48 = load i32, i32* @NCI_STATIC_RF_CONN_ID, align 4
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @nci_data_exchange_complete(%struct.nci_dev* %47, i32* null, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.nci_rf_deactivate_ntf*, %struct.nci_rf_deactivate_ntf** %6, align 8
  %54 = getelementptr inbounds %struct.nci_rf_deactivate_ntf, %struct.nci_rf_deactivate_ntf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %75 [
    i32 130, label %56
    i32 128, label %63
    i32 129, label %63
    i32 131, label %68
  ]

56:                                               ; preds = %52
  %57 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %58 = call i32 @nci_clear_target_list(%struct.nci_dev* %57)
  %59 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* @NCI_IDLE, align 4
  %62 = call i32 @atomic_set(i32* %60, i32 %61)
  br label %75

63:                                               ; preds = %52, %52
  %64 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* @NCI_W4_HOST_SELECT, align 4
  %67 = call i32 @atomic_set(i32* %65, i32 %66)
  br label %75

68:                                               ; preds = %52
  %69 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %70 = call i32 @nci_clear_target_list(%struct.nci_dev* %69)
  %71 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* @NCI_DISCOVERY, align 4
  %74 = call i32 @atomic_set(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %52, %68, %63, %56
  %76 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %77 = load i32, i32* @NCI_STATUS_OK, align 4
  %78 = call i32 @nci_req_complete(%struct.nci_dev* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %24
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nci_data_exchange_complete(%struct.nci_dev*, i32*, i32, i32) #1

declare dso_local i32 @nci_clear_target_list(%struct.nci_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nci_req_complete(%struct.nci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
