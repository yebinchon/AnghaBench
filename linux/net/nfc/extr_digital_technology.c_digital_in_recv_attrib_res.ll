; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_attrib_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_technology.c_digital_in_recv_attrib_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.nfc_target = type { i32 }
%struct.digital_attrib_res = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"12.6.2\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"12.6.2.1\00", align 1
@NFC_PROTO_ISO14443_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_attrib_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_attrib_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.digital_attrib_res*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfc_target*
  store %struct.nfc_target* %11, %struct.nfc_target** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i64 @IS_ERR(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %47

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.digital_attrib_res*
  store %struct.digital_attrib_res* %32, %struct.digital_attrib_res** %8, align 8
  %33 = load %struct.digital_attrib_res*, %struct.digital_attrib_res** %8, align 8
  %34 = getelementptr inbounds %struct.digital_attrib_res, %struct.digital_attrib_res* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %47

42:                                               ; preds = %28
  %43 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %44 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %45 = load i32, i32* @NFC_PROTO_ISO14443_B, align 4
  %46 = call i32 @digital_target_found(%struct.nfc_digital_dev* %43, %struct.nfc_target* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %38, %24, %15
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  %50 = load %struct.nfc_target*, %struct.nfc_target** %7, align 8
  %51 = call i32 @kfree(%struct.nfc_target* %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %56 = call i32 @digital_poll_next_tech(%struct.nfc_digital_dev* %55)
  br label %57

57:                                               ; preds = %54, %47
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_target_found(%struct.nfc_digital_dev*, %struct.nfc_target*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.nfc_target*) #1

declare dso_local i32 @digital_poll_next_tech(%struct.nfc_digital_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
