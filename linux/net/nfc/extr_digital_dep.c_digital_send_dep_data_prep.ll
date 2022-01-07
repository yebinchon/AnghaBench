; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_send_dep_data_prep.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_send_dep_data_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { %struct.sk_buff*, %struct.digital_data_exch*, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.digital_dep_req_res = type { i32 }
%struct.digital_data_exch = type { i32 }

@DIGITAL_NFC_DEP_PFB_MI_BIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfc_digital_dev*, %struct.sk_buff*, %struct.digital_dep_req_res*, %struct.digital_data_exch*)* @digital_send_dep_data_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @digital_send_dep_data_prep(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1, %struct.digital_dep_req_res* %2, %struct.digital_data_exch* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nfc_digital_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.digital_dep_req_res*, align 8
  %9 = alloca %struct.digital_data_exch*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.digital_dep_req_res* %2, %struct.digital_dep_req_res** %8, align 8
  store %struct.digital_data_exch* %3, %struct.digital_data_exch** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %15 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %4
  %19 = load i32, i32* @DIGITAL_NFC_DEP_PFB_MI_BIT, align 4
  %20 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %21 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %25 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %26 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev* %24, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %18
  %32 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %33 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  %36 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %37 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %36, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %37, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.sk_buff* @ERR_PTR(i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %5, align 8
  br label %67

41:                                               ; preds = %18
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %47 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @skb_put_data(%struct.sk_buff* %42, i32 %45, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %52 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @skb_pull(%struct.sk_buff* %50, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %57 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %56, i32 0, i32 0
  store %struct.sk_buff* %55, %struct.sk_buff** %57, align 8
  %58 = load %struct.digital_data_exch*, %struct.digital_data_exch** %9, align 8
  %59 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %60 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %59, i32 0, i32 1
  store %struct.digital_data_exch* %58, %struct.digital_data_exch** %60, align 8
  br label %65

61:                                               ; preds = %4
  %62 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %63 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %62, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %10, align 8
  br label %65

65:                                               ; preds = %61, %41
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %5, align 8
  br label %67

67:                                               ; preds = %65, %31
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %68
}

declare dso_local %struct.sk_buff* @digital_skb_alloc(%struct.nfc_digital_dev*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
