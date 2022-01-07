; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_iso15693_inv_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_iso15693_inv_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.digital_iso15693_inv_res = type { i32, i32, i32 }
%struct.nfc_target = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ISO15693 - 10.3.1\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_PROTO_ISO15693 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_iso15693_inv_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_iso15693_inv_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.digital_iso15693_inv_res*, align 8
  %8 = alloca %struct.nfc_target*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store %struct.nfc_target* null, %struct.nfc_target** %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i64 @IS_ERR(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.sk_buff* %14)
  store i32 %15, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %67

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 12
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %67

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.digital_iso15693_inv_res*
  store %struct.digital_iso15693_inv_res* %29, %struct.digital_iso15693_inv_res** %7, align 8
  %30 = load %struct.digital_iso15693_inv_res*, %struct.digital_iso15693_inv_res** %7, align 8
  %31 = getelementptr inbounds %struct.digital_iso15693_inv_res, %struct.digital_iso15693_inv_res* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DIGITAL_ISO15693_RES_IS_VALID(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %67

39:                                               ; preds = %25
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.nfc_target* @kzalloc(i32 12, i32 %40)
  store %struct.nfc_target* %41, %struct.nfc_target** %8, align 8
  %42 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %43 = icmp ne %struct.nfc_target* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %67

47:                                               ; preds = %39
  %48 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %49 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.digital_iso15693_inv_res*, %struct.digital_iso15693_inv_res** %7, align 8
  %51 = getelementptr inbounds %struct.digital_iso15693_inv_res, %struct.digital_iso15693_inv_res* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %54 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %56 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.digital_iso15693_inv_res*, %struct.digital_iso15693_inv_res** %7, align 8
  %59 = getelementptr inbounds %struct.digital_iso15693_inv_res, %struct.digital_iso15693_inv_res* %58, i32 0, i32 0
  %60 = call i32 @memcpy(i32 %57, i32* %59, i32 4)
  %61 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %62 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %63 = load i32, i32* @NFC_PROTO_ISO15693, align 4
  %64 = call i32 @digital_target_found(%struct.nfc_digital_dev* %61, %struct.nfc_target* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.nfc_target*, %struct.nfc_target** %8, align 8
  %66 = call i32 @kfree(%struct.nfc_target* %65)
  br label %67

67:                                               ; preds = %47, %44, %35, %22, %13
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @dev_kfree_skb(%struct.sk_buff* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %74 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %73)
  br label %75

75:                                               ; preds = %72, %67
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_ISO15693_RES_IS_VALID(i32) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local %struct.nfc_target* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @digital_target_found(%struct.nfc_digital_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
