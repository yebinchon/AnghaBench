; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_transceive.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_transceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_dev = type { i32, i32, %struct.nci_conn_info* }
%struct.nci_conn_info = type { i8*, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"target_idx %d, len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unable to exchange data, no active target\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NCI_DATA_EXCHANGE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NCI_STATIC_RF_CONN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, %struct.nfc_target*, %struct.sk_buff*, i32, i8*)* @nci_transceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_transceive(%struct.nfc_dev* %0, %struct.nfc_target* %1, %struct.sk_buff* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_dev*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nci_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nci_conn_info*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %7, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %7, align 8
  %16 = call %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev* %15)
  store %struct.nci_dev* %16, %struct.nci_dev** %12, align 8
  %17 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %18 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %17, i32 0, i32 2
  %19 = load %struct.nci_conn_info*, %struct.nci_conn_info** %18, align 8
  store %struct.nci_conn_info* %19, %struct.nci_conn_info** %14, align 8
  %20 = load %struct.nci_conn_info*, %struct.nci_conn_info** %14, align 8
  %21 = icmp ne %struct.nci_conn_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EPROTO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %70

25:                                               ; preds = %5
  %26 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %27 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %34 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %70

41:                                               ; preds = %25
  %42 = load i32, i32* @NCI_DATA_EXCHANGE, align 4
  %43 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %44 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %43, i32 0, i32 0
  %45 = call i64 @test_and_set_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %70

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.nci_conn_info*, %struct.nci_conn_info** %14, align 8
  %53 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.nci_conn_info*, %struct.nci_conn_info** %14, align 8
  %56 = getelementptr inbounds %struct.nci_conn_info, %struct.nci_conn_info* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %58 = load i32, i32* @NCI_STATIC_RF_CONN_ID, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @nci_send_data(%struct.nci_dev* %57, i32 %58, %struct.sk_buff* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load i32, i32* @NCI_DATA_EXCHANGE, align 4
  %65 = load %struct.nci_dev*, %struct.nci_dev** %12, align 8
  %66 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %50
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %47, %37, %22
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.nci_dev* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nci_send_data(%struct.nci_dev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
