; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_dep_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_send_dep_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { %struct.sk_buff*, %struct.sk_buff*, i32 (%struct.sk_buff*)*, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.digital_dep_req_res = type { i64, i32, i32 }

@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i32 0, align 4
@DIGITAL_CMD_DEP_RES = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_PFB_DID_BIT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@digital_tg_recv_dep_req = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_tg_send_dep_res(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.digital_dep_req_res*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @skb_push(%struct.sk_buff* %10, i32 16)
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %15, %struct.digital_dep_req_res** %6, align 8
  %16 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 4
  %17 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %18 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DIGITAL_CMD_DEP_RES, align 4
  %20 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %21 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %23 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %26 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %28 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i64, i64* @DIGITAL_NFC_DEP_PFB_DID_BIT, align 8
  %33 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %34 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %39 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %38, i32 0, i32 4
  %40 = call i32 @skb_put_data(%struct.sk_buff* %37, i64* %39, i32 8)
  br label %41

41:                                               ; preds = %31, %2
  %42 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %43 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = call i64 @DIGITAL_NFC_DEP_PFB_PNI(i64 %45)
  %47 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %48 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %50 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %49, i32 0, i32 1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %6, align 8
  %55 = call %struct.sk_buff* @digital_send_dep_data_prep(%struct.nfc_digital_dev* %52, %struct.sk_buff* %53, %struct.digital_dep_req_res* %54, i32* null)
  store %struct.sk_buff* %55, %struct.sk_buff** %8, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i64 @IS_ERR(%struct.sk_buff* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @PTR_ERR(%struct.sk_buff* %60)
  store i32 %61, i32* %3, align 4
  br label %102

62:                                               ; preds = %41
  %63 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %63, %struct.sk_buff* %64)
  %66 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %67 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %66, i32 0, i32 2
  %68 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 %68(%struct.sk_buff* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.sk_buff* @pskb_copy(%struct.sk_buff* %71, i32 %72)
  %74 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %75 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %74, i32 0, i32 0
  store %struct.sk_buff* %73, %struct.sk_buff** %75, align 8
  %76 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = load i32, i32* @digital_tg_recv_dep_req, align 4
  %79 = call i32 @digital_tg_send_cmd(%struct.nfc_digital_dev* %76, %struct.sk_buff* %77, i32 1500, i32 %78, i32* null)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %62
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = icmp ne %struct.sk_buff* %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %93 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %92, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %93, align 8
  %94 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %95 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %94, i32 0, i32 0
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %99 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %98, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %99, align 8
  br label %100

100:                                              ; preds = %89, %62
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %59
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64*, i32) #1

declare dso_local i64 @DIGITAL_NFC_DEP_PFB_PNI(i64) #1

declare dso_local %struct.sk_buff* @digital_send_dep_data_prep(%struct.nfc_digital_dev*, %struct.sk_buff*, %struct.digital_dep_req_res*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @pskb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_tg_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
