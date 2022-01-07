; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_dm.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_send_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32, %struct.nfc_dev* }
%struct.nfc_dev = type { i64, i64 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Sending DM reason 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LLCP_HEADER_SIZE = common dso_local global i64 0, align 8
@NFC_HEADER_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LLCP_PDU_DM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llcp_send_dm(%struct.nfc_llcp_local* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_llcp_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nfc_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %6, align 8
  %16 = icmp eq %struct.nfc_llcp_local* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %75

20:                                               ; preds = %4
  %21 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %6, align 8
  %22 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %21, i32 0, i32 1
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %22, align 8
  store %struct.nfc_dev* %23, %struct.nfc_dev** %11, align 8
  %24 = load %struct.nfc_dev*, %struct.nfc_dev** %11, align 8
  %25 = icmp eq %struct.nfc_dev* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %75

29:                                               ; preds = %20
  %30 = load i64, i64* @LLCP_HEADER_SIZE, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %11, align 8
  %36 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %11, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i64, i64* @NFC_HEADER_SIZE, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.sk_buff* @alloc_skb(i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %10, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = icmp eq %struct.sk_buff* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %75

56:                                               ; preds = %29
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load %struct.nfc_dev*, %struct.nfc_dev** %11, align 8
  %59 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NFC_HEADER_SIZE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @skb_reserve(%struct.sk_buff* %57, i64 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @LLCP_PDU_DM, align 4
  %68 = call %struct.sk_buff* @llcp_add_header(%struct.sk_buff* %64, i32 %65, i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = call i32 @skb_put_data(%struct.sk_buff* %69, i32* %9, i32 1)
  %71 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %6, align 8
  %72 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = call i32 @skb_queue_head(i32* %72, %struct.sk_buff* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %56, %53, %26, %17
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @llcp_add_header(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
