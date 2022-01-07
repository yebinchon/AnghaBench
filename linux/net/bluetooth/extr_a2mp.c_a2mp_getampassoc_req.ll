; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_getampassoc_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_getampassoc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.a2mp_cmd = type { i32, i32 }
%struct.a2mp_amp_assoc_req = type { i32 }
%struct.hci_dev = type { i64 }
%struct.a2mp_amp_assoc_rsp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"id %d\00", align 1
@READ_LOC_AMP_ASSOC = common dso_local global i32 0, align 4
@AMP_TYPE_BREDR = common dso_local global i64 0, align 8
@A2MP_STATUS_COLLISION_OCCURED = common dso_local global i32 0, align 4
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4
@A2MP_GETAMPASSOC_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_getampassoc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_getampassoc_req(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.a2mp_cmd*, align 8
  %8 = alloca %struct.a2mp_amp_assoc_req*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca %struct.amp_mgr*, align 8
  %11 = alloca %struct.a2mp_amp_assoc_rsp, align 4
  store %struct.amp_mgr* %0, %struct.amp_mgr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.a2mp_amp_assoc_req*
  store %struct.a2mp_amp_assoc_req* %16, %struct.a2mp_amp_assoc_req** %8, align 8
  %17 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.a2mp_amp_assoc_req*, %struct.a2mp_amp_assoc_req** %8, align 8
  %28 = getelementptr inbounds %struct.a2mp_amp_assoc_req, %struct.a2mp_amp_assoc_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @READ_LOC_AMP_ASSOC, align 4
  %32 = call %struct.amp_mgr* @amp_mgr_lookup_by_state(i32 %31)
  store %struct.amp_mgr* %32, %struct.amp_mgr** %10, align 8
  %33 = load %struct.a2mp_amp_assoc_req*, %struct.a2mp_amp_assoc_req** %8, align 8
  %34 = getelementptr inbounds %struct.a2mp_amp_assoc_req, %struct.a2mp_amp_assoc_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.hci_dev* @hci_dev_get(i32 %35)
  store %struct.hci_dev* %36, %struct.hci_dev** %9, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %38 = icmp ne %struct.hci_dev* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AMP_TYPE_BREDR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.amp_mgr*, %struct.amp_mgr** %10, align 8
  %47 = icmp ne %struct.amp_mgr* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45, %39, %26
  %49 = load %struct.a2mp_amp_assoc_req*, %struct.a2mp_amp_assoc_req** %8, align 8
  %50 = getelementptr inbounds %struct.a2mp_amp_assoc_req, %struct.a2mp_amp_assoc_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %11, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.amp_mgr*, %struct.amp_mgr** %10, align 8
  %54 = icmp ne %struct.amp_mgr* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* @A2MP_STATUS_COLLISION_OCCURED, align 4
  %57 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %11, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.amp_mgr*, %struct.amp_mgr** %10, align 8
  %59 = call i32 @amp_mgr_put(%struct.amp_mgr* %58)
  br label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %62 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, %struct.a2mp_amp_assoc_rsp* %11, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %65 = load i32, i32* @A2MP_GETAMPASSOC_RSP, align 4
  %66 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @a2mp_send(%struct.amp_mgr* %64, i32 %65, i32 %68, i32 8, %struct.a2mp_amp_assoc_rsp* %11)
  br label %74

70:                                               ; preds = %45
  %71 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %72 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %73 = call i32 @amp_read_loc_assoc(%struct.hci_dev* %71, %struct.amp_mgr* %72)
  br label %74

74:                                               ; preds = %70, %63
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

83:                                               ; preds = %80, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.amp_mgr* @amp_mgr_lookup_by_state(i32) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_amp_assoc_rsp*) #1

declare dso_local i32 @amp_read_loc_assoc(%struct.hci_dev*, %struct.amp_mgr*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
