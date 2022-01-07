; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_command.c_nfc_hci_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hcp_exec_waiter = type { i32, i64, %struct.sk_buff*, i32* }

@ew_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"exec cmd sync through pipe=%d, cmd=%d, plen=%zd\0A\00", align 1
@NFC_HCI_HCP_COMMAND = common dso_local global i32 0, align 4
@nfc_hci_execute_cb = common dso_local global i32 0, align 4
@MAX_FWI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_hci_dev*, i32, i32, i32*, i64, %struct.sk_buff**)* @nfc_hci_execute_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfc_hci_execute_cmd(%struct.nfc_hci_dev* %0, i32 %1, i32 %2, i32* %3, i64 %4, %struct.sk_buff** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfc_hci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca %struct.hcp_exec_waiter, align 8
  store %struct.nfc_hci_dev* %0, %struct.nfc_hci_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.sk_buff** %5, %struct.sk_buff*** %13, align 8
  %15 = load i32, i32* @ew_wq, align 4
  %16 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %15)
  %17 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 3
  store i32* @ew_wq, i32** %17, align 8
  %18 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i64 %22)
  %24 = load %struct.nfc_hci_dev*, %struct.nfc_hci_dev** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NFC_HCI_HCP_COMMAND, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* @nfc_hci_execute_cb, align 4
  %31 = load i32, i32* @MAX_FWI, align 4
  %32 = call i64 @nfc_hci_hcp_message_tx(%struct.nfc_hci_dev* %24, i32 %25, i32 %26, i32 %27, i32* %28, i64 %29, i32 %30, %struct.hcp_exec_waiter* %14, i32 %31)
  %33 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %67

41:                                               ; preds = %6
  %42 = load i32, i32* @ew_wq, align 4
  %43 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @wait_event(i32 %42, i32 %46)
  %48 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %41
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %53 = icmp ne %struct.sk_buff** %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %57, align 8
  br label %62

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 2
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %41
  %64 = getelementptr inbounds %struct.hcp_exec_waiter, %struct.hcp_exec_waiter* %14, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %37
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i64 @nfc_hci_hcp_message_tx(%struct.nfc_hci_dev*, i32, i32, i32, i32*, i64, i32, %struct.hcp_exec_waiter*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
