; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.nci_conn_info = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"conn_id 0x%x, plen %d\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@NCI_PBF_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to fragment tx data packet\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_send_data(%struct.nci_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nci_conn_info*, align 8
  %8 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %12)
  %14 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev* %14, i32 %15)
  store %struct.nci_conn_info* %16, %struct.nci_conn_info** %7, align 8
  %17 = load %struct.nci_conn_info*, %struct.nci_conn_info** %7, align 8
  %18 = icmp ne %struct.nci_conn_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nci_conn_info*, %struct.nci_conn_info** %7, align 8
  %27 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @NCI_PBF_LAST, align 4
  %35 = call i32 @nci_push_data_hdr(%struct.nci_dev* %31, i32 %32, %struct.sk_buff* %33, i32 %34)
  %36 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %36, i32 0, i32 3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_queue_tail(i32* %37, %struct.sk_buff* %38)
  br label %50

40:                                               ; preds = %22
  %41 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @nci_queue_tx_data_frags(%struct.nci_dev* %41, i32 %42, %struct.sk_buff* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %60

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %57, i32 0, i32 0
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %63

60:                                               ; preds = %47, %19
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev*, i32) #1

declare dso_local i32 @nci_push_data_hdr(%struct.nci_dev*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @nci_queue_tx_data_frags(%struct.nci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
