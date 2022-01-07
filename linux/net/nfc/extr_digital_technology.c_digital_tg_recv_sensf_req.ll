; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_sensf_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_tg_recv_sensf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.digital_sensf_req = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"6.4.1.8\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DIGITAL_CMD_SENSF_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @digital_tg_recv_sensf_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.digital_sensf_req*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i64 @IS_ERR(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.sk_buff* %13)
  store i32 %14, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %55

15:                                               ; preds = %3
  %16 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %17 = call i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @digital_skb_check_crc_f(%struct.sk_buff* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %55

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 9
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %55

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_pull(%struct.sk_buff* %37, i32 1)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.digital_sensf_req*
  store %struct.digital_sensf_req* %42, %struct.digital_sensf_req** %7, align 8
  %43 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %7, align 8
  %44 = getelementptr inbounds %struct.digital_sensf_req, %struct.digital_sensf_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DIGITAL_CMD_SENSF_REQ, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %36
  %52 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %53 = load %struct.digital_sensf_req*, %struct.digital_sensf_req** %7, align 8
  %54 = call i32 @digital_tg_send_sensf_res(%struct.nfc_digital_dev* %52, %struct.digital_sensf_req* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %48, %33, %24, %12
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %60 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @dev_kfree_skb(%struct.sk_buff* %62)
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_DRV_CAPS_TG_CRC(%struct.nfc_digital_dev*) #1

declare dso_local i32 @digital_skb_check_crc_f(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_tg_send_sensf_res(%struct.nfc_digital_dev*, %struct.digital_sensf_req*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
