; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_create_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_create_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nci_hci_create_pipe_params = type { i8*, i8*, i32 }
%struct.nci_hci_create_pipe_resp = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"gate=%d\0A\00", align 1
@NCI_HCI_ADMIN_GATE = common dso_local global i32 0, align 4
@NCI_HCI_ADM_CREATE_PIPE = common dso_local global i32 0, align 4
@NCI_HCI_INVALID_PIPE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"pipe created=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nci_dev*, i8*, i8*, i32*)* @nci_hci_create_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nci_hci_create_pipe(%struct.nci_dev* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nci_hci_create_pipe_params, align 8
  %13 = alloca %struct.nci_hci_create_pipe_resp*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @NCI_HCI_ADMIN_GATE, align 4
  %17 = getelementptr inbounds %struct.nci_hci_create_pipe_params, %struct.nci_hci_create_pipe_params* %12, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.nci_hci_create_pipe_params, %struct.nci_hci_create_pipe_params* %12, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds %struct.nci_hci_create_pipe_params, %struct.nci_hci_create_pipe_params* %12, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %23 = load i32, i32* @NCI_HCI_ADMIN_GATE, align 4
  %24 = load i32, i32* @NCI_HCI_ADM_CREATE_PIPE, align 4
  %25 = bitcast %struct.nci_hci_create_pipe_params* %12 to i8**
  %26 = call i32 @nci_hci_send_cmd(%struct.nci_dev* %22, i32 %23, i32 %24, i8** %25, i32 24, %struct.sk_buff** %11)
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i8*, i8** @NCI_HCI_INVALID_PIPE, align 8
  store i8* %32, i8** %5, align 8
  br label %46

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.nci_hci_create_pipe_resp*
  store %struct.nci_hci_create_pipe_resp* %37, %struct.nci_hci_create_pipe_resp** %13, align 8
  %38 = load %struct.nci_hci_create_pipe_resp*, %struct.nci_hci_create_pipe_resp** %13, align 8
  %39 = getelementptr inbounds %struct.nci_hci_create_pipe_resp, %struct.nci_hci_create_pipe_resp* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %10, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %33, %31
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @nci_hci_send_cmd(%struct.nci_dev*, i32, i32, i8**, i32, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
