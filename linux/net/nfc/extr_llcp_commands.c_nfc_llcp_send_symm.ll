; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_symm.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_symm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.nfc_llcp_local = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Sending SYMM\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LLCP_HEADER_SIZE = common dso_local global i64 0, align 8
@NFC_HEADER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LLCP_PDU_SYMM = common dso_local global i32 0, align 4
@NFC_DIRECTION_TX = common dso_local global i32 0, align 4
@nfc_llcp_recv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llcp_send_symm(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_llcp_local*, align 8
  %6 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %9 = call %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev* %8)
  store %struct.nfc_llcp_local* %9, %struct.nfc_llcp_local** %5, align 8
  %10 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %5, align 8
  %11 = icmp eq %struct.nfc_llcp_local* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load i64, i64* @LLCP_HEADER_SIZE, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* @NFC_HEADER_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sk_buff* @alloc_skb(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = icmp eq %struct.sk_buff* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %15
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %15
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NFC_HEADER_SIZE, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @skb_reserve(%struct.sk_buff* %43, i64 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @LLCP_PDU_SYMM, align 4
  %52 = call %struct.sk_buff* @llcp_add_header(%struct.sk_buff* %50, i32 0, i32 0, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @__net_timestamp(%struct.sk_buff* %53)
  %55 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %5, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @NFC_DIRECTION_TX, align 4
  %58 = call i32 @nfc_llcp_send_to_raw_sock(%struct.nfc_llcp_local* %55, %struct.sk_buff* %56, i32 %57)
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %60 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %5, align 8
  %61 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load i32, i32* @nfc_llcp_recv, align 4
  %65 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %5, align 8
  %66 = call i32 @nfc_data_exchange(%struct.nfc_dev* %59, i32 %62, %struct.sk_buff* %63, i32 %64, %struct.nfc_llcp_local* %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %42, %39, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.nfc_llcp_local* @nfc_llcp_find_local(%struct.nfc_dev*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @llcp_add_header(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_send_to_raw_sock(%struct.nfc_llcp_local*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_data_exchange(%struct.nfc_dev*, i32, %struct.sk_buff*, i32, %struct.nfc_llcp_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
