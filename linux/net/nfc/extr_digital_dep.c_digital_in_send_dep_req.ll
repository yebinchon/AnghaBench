; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_dep_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_send_dep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { %struct.sk_buff*, %struct.sk_buff*, i32, i32 (%struct.sk_buff*)*, i64, i64, i32 }
%struct.nfc_target = type { i32 }
%struct.sk_buff = type { i64 }
%struct.digital_data_exch = type { i32 }
%struct.digital_dep_req_res = type { i32, i32, i32 }

@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i32 0, align 4
@DIGITAL_CMD_DEP_REQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@digital_in_recv_dep_res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digital_in_send_dep_req(%struct.nfc_digital_dev* %0, %struct.nfc_target* %1, %struct.sk_buff* %2, %struct.digital_data_exch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_digital_dev*, align 8
  %7 = alloca %struct.nfc_target*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.digital_data_exch*, align 8
  %10 = alloca %struct.digital_dep_req_res*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %6, align 8
  store %struct.nfc_target* %1, %struct.nfc_target** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.digital_data_exch* %3, %struct.digital_data_exch** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = call i32 @skb_push(%struct.sk_buff* %14, i32 12)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %19, %struct.digital_dep_req_res** %10, align 8
  %20 = load i32, i32* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 4
  %21 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %10, align 8
  %22 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @DIGITAL_CMD_DEP_REQ, align 4
  %24 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %10, align 8
  %25 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %27 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %10, align 8
  %30 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %32 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %34 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %36 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %35, i32 0, i32 1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %11, align 8
  %38 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %10, align 8
  %41 = load %struct.digital_data_exch*, %struct.digital_data_exch** %9, align 8
  %42 = call %struct.sk_buff* @digital_send_dep_data_prep(%struct.nfc_digital_dev* %38, %struct.sk_buff* %39, %struct.digital_dep_req_res* %40, %struct.digital_data_exch* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %12, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = call i64 @IS_ERR(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = call i32 @PTR_ERR(%struct.sk_buff* %47)
  store i32 %48, i32* %5, align 4
  br label %93

49:                                               ; preds = %4
  %50 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = call i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev* %50, %struct.sk_buff* %51)
  %53 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %54 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %53, i32 0, i32 3
  %55 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = call i32 %55(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.sk_buff* @pskb_copy(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %62 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %61, i32 0, i32 0
  store %struct.sk_buff* %60, %struct.sk_buff** %62, align 8
  %63 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %65 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %66 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @digital_in_recv_dep_res, align 4
  %69 = load %struct.digital_data_exch*, %struct.digital_data_exch** %9, align 8
  %70 = call i32 @digital_in_send_cmd(%struct.nfc_digital_dev* %63, %struct.sk_buff* %64, i32 %67, i32 %68, %struct.digital_data_exch* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %49
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = icmp ne %struct.sk_buff* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  %83 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %84 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %83, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %84, align 8
  %85 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %86 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %85, i32 0, i32 0
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  %89 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %90 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %89, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %90, align 8
  br label %91

91:                                               ; preds = %80, %49
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %46
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @digital_send_dep_data_prep(%struct.nfc_digital_dev*, %struct.sk_buff*, %struct.digital_dep_req_res*, %struct.digital_data_exch*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @digital_skb_push_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @pskb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @digital_in_send_cmd(%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, %struct.digital_data_exch*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
