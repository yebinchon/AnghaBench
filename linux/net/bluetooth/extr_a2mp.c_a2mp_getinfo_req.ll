; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_getinfo_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_getinfo_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.a2mp_cmd = type { i32, i32 }
%struct.a2mp_info_req = type { i32 }
%struct.hci_dev = type { i64 }
%struct.hci_request = type { i32 }
%struct.a2mp_info_rsp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"id %d\00", align 1
@HCI_AMP = common dso_local global i64 0, align 8
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4
@A2MP_GETINFO_RSP = common dso_local global i32 0, align 4
@READ_LOC_AMP_INFO = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_AMP_INFO = common dso_local global i32 0, align 4
@read_local_amp_info_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_getinfo_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_getinfo_req(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.a2mp_cmd*, align 8
  %8 = alloca %struct.a2mp_info_req*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca %struct.hci_request, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.a2mp_info_rsp, align 4
  store %struct.amp_mgr* %0, %struct.amp_mgr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.a2mp_info_req*
  store %struct.a2mp_info_req* %17, %struct.a2mp_info_req** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %3
  %28 = load %struct.a2mp_info_req*, %struct.a2mp_info_req** %8, align 8
  %29 = getelementptr inbounds %struct.a2mp_info_req, %struct.a2mp_info_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.a2mp_info_req*, %struct.a2mp_info_req** %8, align 8
  %33 = getelementptr inbounds %struct.a2mp_info_req, %struct.a2mp_info_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.hci_dev* @hci_dev_get(i32 %34)
  store %struct.hci_dev* %35, %struct.hci_dev** %9, align 8
  %36 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %37 = icmp ne %struct.hci_dev* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HCI_AMP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38, %27
  %45 = load %struct.a2mp_info_req*, %struct.a2mp_info_req** %8, align 8
  %46 = getelementptr inbounds %struct.a2mp_info_req, %struct.a2mp_info_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %50 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %52 = load i32, i32* @A2MP_GETINFO_RSP, align 4
  %53 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @a2mp_send(%struct.amp_mgr* %51, i32 %52, i32 %55, i32 8, %struct.a2mp_info_rsp* %12)
  br label %74

57:                                               ; preds = %38
  %58 = load i32, i32* @READ_LOC_AMP_INFO, align 4
  %59 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %60 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %59, i32 0, i32 0
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %63 = call i32 @hci_req_init(%struct.hci_request* %10, %struct.hci_dev* %62)
  %64 = load i32, i32* @HCI_OP_READ_LOCAL_AMP_INFO, align 4
  %65 = call i32 @hci_req_add(%struct.hci_request* %10, i32 %64, i32 0, i32* null)
  %66 = load i32, i32* @read_local_amp_info_complete, align 4
  %67 = call i32 @hci_req_run(%struct.hci_request* %10, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %72 = call i32 @a2mp_send_getinfo_rsp(%struct.hci_dev* %71)
  br label %73

73:                                               ; preds = %70, %57
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %76 = icmp ne %struct.hci_dev* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %79 = call i32 @hci_dev_put(%struct.hci_dev* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call i32 @skb_pull(%struct.sk_buff* %81, i32 4)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_info_rsp*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @a2mp_send_getinfo_rsp(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
