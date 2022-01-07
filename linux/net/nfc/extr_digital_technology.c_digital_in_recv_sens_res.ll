; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sens_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_sens_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nfc_target = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"4.6.3.3\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFC_PROTO_JEWEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_sens_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_sens_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store %struct.nfc_target* null, %struct.nfc_target** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call i64 @IS_ERR(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.sk_buff* %13)
  store i32 %14, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %66

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %66

24:                                               ; preds = %15
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nfc_target* @kzalloc(i32 4, i32 %25)
  store %struct.nfc_target* %26, %struct.nfc_target** %7, align 8
  %27 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %28 = icmp ne %struct.nfc_target* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %66

32:                                               ; preds = %24
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__le16_to_cpu(i32 %37)
  %39 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %40 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %42 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DIGITAL_SENS_RES_IS_VALID(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %32
  %47 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %66

50:                                               ; preds = %32
  %51 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %52 = getelementptr inbounds %struct.nfc_target, %struct.nfc_target* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @DIGITAL_SENS_RES_IS_T1T(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %58 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %59 = load i32, i32* @NFC_PROTO_JEWEL, align 4
  %60 = call i32 @digital_target_found(%struct.nfc_digital_dev* %57, %struct.nfc_target* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %63 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %64 = call i32 @digital_in_send_sdd_req(%struct.nfc_digital_dev* %62, %struct.nfc_target* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %46, %29, %21, %12
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @dev_kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %73 = call i32 @kfree(%struct.nfc_target* %72)
  %74 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %75 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %74)
  br label %76

76:                                               ; preds = %71, %66
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.nfc_target* @kzalloc(i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @DIGITAL_SENS_RES_IS_VALID(i32) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i64 @DIGITAL_SENS_RES_IS_T1T(i32) #1

declare dso_local i32 @digital_target_found(%struct.nfc_digital_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @digital_in_send_sdd_req(%struct.nfc_digital_dev*, %struct.nfc_target*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
