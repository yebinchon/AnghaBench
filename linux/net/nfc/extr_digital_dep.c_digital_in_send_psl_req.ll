; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_psl_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_psl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32, i32 (%struct.sk_buff*)*, i8*, i8* }
%struct.sk_buff = type { i64 }
%struct.nfc_target = type { i32 }
%struct.digital_psl_req = type { i32, i32, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i32 0, align 4
@DIGITAL_CMD_PSL_REQ = common dso_local global i32 0, align 4
@digital_in_recv_psl_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.nfc_target*)* @digital_in_send_psl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_in_send_psl_req(%struct.nfc_digital_dev* %0, %struct.nfc_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca %struct.nfc_target*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.digital_psl_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %5, align 8
  %11 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %12 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %11, i32 24)
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @skb_put(%struct.sk_buff* %19, i32 24)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.digital_psl_req*
  store %struct.digital_psl_req* %24, %struct.digital_psl_req** %7, align 8
  %25 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 4
  %26 = load %struct.digital_psl_req*, %struct.digital_psl_req** %7, align 8
  %27 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DIGITAL_CMD_PSL_REQ, align 4
  %29 = load %struct.digital_psl_req*, %struct.digital_psl_req** %7, align 8
  %30 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.digital_psl_req*, %struct.digital_psl_req** %7, align 8
  %32 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.digital_psl_req*, %struct.digital_psl_req** %7, align 8
  %34 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %33, i32 0, i32 0
  store i32 18, i32* %34, align 8
  %35 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %36 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %39 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @min(i8* %37, i8* %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @digital_payload_size_to_bits(i8* %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @DIGITAL_PAYLOAD_BITS_TO_FSL(i8* %44)
  %46 = load %struct.digital_psl_req*, %struct.digital_psl_req** %7, align 8
  %47 = getelementptr inbounds %struct.digital_psl_req, %struct.digital_psl_req* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %50 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %53 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %54, %struct.sk_buff* %55)
  %57 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %58 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %57, i32 0, i32 1
  %59 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 %59(%struct.sk_buff* %60)
  %62 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %65 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @digital_in_recv_psl_res, align 4
  %68 = load %struct.nfc_target*, %struct.nfc_target** %5, align 8
  %69 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %62, %struct.sk_buff* %63, i32 %66, i32 %67, %struct.nfc_target* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %18
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %72, %18
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i8* @digital_payload_size_to_bits(i8*) #1

declare dso_local i32 @DIGITAL_PAYLOAD_BITS_TO_FSL(i8*) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.nfc_target*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
