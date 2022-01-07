; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_rx_data_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_data.c_nci_rx_data_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i64 }
%struct.sk_buff = type { i32, i32* }
%struct.nci_conn_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"NCI RX: MT=data, PBF=%d, conn_id=%d, plen=%d\0A\00", align 1
@NCI_DATA_HDR_SIZE = common dso_local global i32 0, align 4
@NFC_PROTO_MIFARE = common dso_local global i64 0, align 8
@NFC_PROTO_JEWEL = common dso_local global i64 0, align 8
@NFC_PROTO_FELICA = common dso_local global i64 0, align 8
@NFC_PROTO_ISO15693 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"frame I/F => remove the status byte\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nci_rx_data_packet(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nci_conn_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @nci_pbf(i32* %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @nci_conn_id(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @nci_pbf(i32* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @nci_conn_id(i32* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @nci_plen(i32* %31)
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %28, i32 %32)
  %34 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @nci_conn_id(i32* %37)
  %39 = call %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev* %34, i32 %38)
  store %struct.nci_conn_info* %39, %struct.nci_conn_info** %8, align 8
  %40 = load %struct.nci_conn_info*, %struct.nci_conn_info** %8, align 8
  %41 = icmp ne %struct.nci_conn_info* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %2
  br label %96

43:                                               ; preds = %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @NCI_DATA_HDR_SIZE, align 4
  %46 = call i32 @skb_pull(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NFC_PROTO_MIFARE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %43
  %53 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NFC_PROTO_JEWEL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %60 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NFC_PROTO_FELICA, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NFC_PROTO_ISO15693, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %64, %58, %52, %43
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @skb_trim(%struct.sk_buff* %82, i32 %86)
  br label %88

88:                                               ; preds = %70, %64
  %89 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @nci_to_errno(i32 %93)
  %95 = call i32 @nci_add_rx_data_frag(%struct.nci_dev* %89, %struct.sk_buff* %90, i32 %91, i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %88, %42
  ret void
}

declare dso_local i32 @nci_pbf(i32*) #1

declare dso_local i32 @nci_conn_id(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nci_plen(i32*) #1

declare dso_local %struct.nci_conn_info* @nci_get_conn_info_by_conn_id(%struct.nci_dev*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @nci_add_rx_data_frag(%struct.nci_dev*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nci_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
