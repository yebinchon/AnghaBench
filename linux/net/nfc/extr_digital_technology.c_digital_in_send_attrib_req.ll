; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_attrib_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_send_attrib_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.nfc_target = type { i32 }
%struct.digital_sensb_res = type { i32*, i32 }
%struct.digital_attrib_req = type { i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DIGITAL_CMD_ATTRIB_REQ = common dso_local global i32 0, align 4
@DIGITAL_ATTRIB_P1_TR0_DEFAULT = common dso_local global i32 0, align 4
@DIGITAL_ATTRIB_P1_TR1_DEFAULT = common dso_local global i32 0, align 4
@DIGITAL_ATTRIB_P2_LISTEN_POLL_1 = common dso_local global i32 0, align 4
@DIGITAL_ATTRIB_P2_POLL_LISTEN_1 = common dso_local global i32 0, align 4
@DIGITAL_ATTRIB_P2_MAX_FRAME_256 = common dso_local global i32 0, align 4
@digital_in_recv_attrib_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.nfc_target*, %struct.digital_sensb_res*)* @digital_in_send_attrib_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digital_in_send_attrib_req(%struct.nfc_digital_dev* %0, %struct.nfc_target* %1, %struct.digital_sensb_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_digital_dev*, align 8
  %6 = alloca %struct.nfc_target*, align 8
  %7 = alloca %struct.digital_sensb_res*, align 8
  %8 = alloca %struct.digital_attrib_req*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %5, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %6, align 8
  store %struct.digital_sensb_res* %2, %struct.digital_sensb_res** %7, align 8
  %11 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %12 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %11, i32 24)
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = call %struct.digital_attrib_req* @skb_put(%struct.sk_buff* %19, i32 24)
  store %struct.digital_attrib_req* %20, %struct.digital_attrib_req** %8, align 8
  %21 = load i32, i32* @DIGITAL_CMD_ATTRIB_REQ, align 4
  %22 = load %struct.digital_attrib_req*, %struct.digital_attrib_req** %8, align 8
  %23 = getelementptr inbounds %struct.digital_attrib_req, %struct.digital_attrib_req* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.digital_attrib_req*, %struct.digital_attrib_req** %8, align 8
  %25 = getelementptr inbounds %struct.digital_attrib_req, %struct.digital_attrib_req* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %7, align 8
  %28 = getelementptr inbounds %struct.digital_sensb_res, %struct.digital_sensb_res* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 4)
  %31 = load i32, i32* @DIGITAL_ATTRIB_P1_TR0_DEFAULT, align 4
  %32 = load i32, i32* @DIGITAL_ATTRIB_P1_TR1_DEFAULT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.digital_attrib_req*, %struct.digital_attrib_req** %8, align 8
  %35 = getelementptr inbounds %struct.digital_attrib_req, %struct.digital_attrib_req* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @DIGITAL_ATTRIB_P2_LISTEN_POLL_1, align 4
  %37 = load i32, i32* @DIGITAL_ATTRIB_P2_POLL_LISTEN_1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DIGITAL_ATTRIB_P2_MAX_FRAME_256, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.digital_attrib_req*, %struct.digital_attrib_req** %8, align 8
  %42 = getelementptr inbounds %struct.digital_attrib_req, %struct.digital_attrib_req* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.digital_sensb_res*, %struct.digital_sensb_res** %7, align 8
  %44 = getelementptr inbounds %struct.digital_sensb_res, %struct.digital_sensb_res* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  %49 = load %struct.digital_attrib_req*, %struct.digital_attrib_req** %8, align 8
  %50 = getelementptr inbounds %struct.digital_attrib_req, %struct.digital_attrib_req* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = call i32 @DIGITAL_ATTRIB_P4_DID(i32 0)
  %52 = load %struct.digital_attrib_req*, %struct.digital_attrib_req** %8, align 8
  %53 = getelementptr inbounds %struct.digital_attrib_req, %struct.digital_attrib_req* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load i32, i32* @digital_in_recv_attrib_res, align 4
  %57 = load %struct.nfc_target*, %struct.nfc_target** %6, align 8
  %58 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %54, %struct.sk_buff* %55, i32 30, i32 %56, %struct.nfc_target* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %18
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %61, %18
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local %struct.digital_attrib_req* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DIGITAL_ATTRIB_P4_DID(i32) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.nfc_target*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
