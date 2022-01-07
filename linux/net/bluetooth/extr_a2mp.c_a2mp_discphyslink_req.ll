; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_discphyslink_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_discphyslink_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.a2mp_cmd = type { i32, i32 }
%struct.a2mp_physlink_req = type { i32, i32 }
%struct.a2mp_physlink_rsp = type { i32, i32, i32 }
%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"local_id %d remote_id %d\00", align 1
@A2MP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@A2MP_STATUS_INVALID_CTRL_ID = common dso_local global i32 0, align 4
@AMP_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no phys link exist\00", align 1
@A2MP_STATUS_NO_PHYSICAL_LINK_EXISTS = common dso_local global i32 0, align 4
@A2MP_DISCONNPHYSLINK_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_discphyslink_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_discphyslink_req(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.a2mp_cmd*, align 8
  %8 = alloca %struct.a2mp_physlink_req*, align 8
  %9 = alloca %struct.a2mp_physlink_rsp, align 4
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.a2mp_physlink_req*
  store %struct.a2mp_physlink_req* %16, %struct.a2mp_physlink_req** %8, align 8
  %17 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %28 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %31 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %35 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %39 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @A2MP_STATUS_SUCCESS, align 4
  %43 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %8, align 8
  %45 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.hci_dev* @hci_dev_get(i32 %46)
  store %struct.hci_dev* %47, %struct.hci_dev** %10, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %49 = icmp ne %struct.hci_dev* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %26
  %51 = load i32, i32* @A2MP_STATUS_INVALID_CTRL_ID, align 4
  %52 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  br label %74

53:                                               ; preds = %26
  %54 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %55 = load i32, i32* @AMP_LINK, align 4
  %56 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %57 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %54, i32 %55, i32* %61)
  store %struct.hci_conn* %62, %struct.hci_conn** %11, align 8
  %63 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %64 = icmp ne %struct.hci_conn* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %53
  %66 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %67 = call i32 @bt_dev_err(%struct.hci_dev* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @A2MP_STATUS_NO_PHYSICAL_LINK_EXISTS, align 4
  %69 = getelementptr inbounds %struct.a2mp_physlink_rsp, %struct.a2mp_physlink_rsp* %9, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  br label %71

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %65
  %72 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %73 = call i32 @hci_dev_put(%struct.hci_dev* %72)
  br label %74

74:                                               ; preds = %71, %50
  %75 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %76 = load i32, i32* @A2MP_DISCONNPHYSLINK_RSP, align 4
  %77 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @a2mp_send(%struct.amp_mgr* %75, i32 %76, i32 %79, i32 12, %struct.a2mp_physlink_rsp* %9)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call i32 @skb_pull(%struct.sk_buff* %81, i32 8)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %74, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.hci_dev* @hci_dev_get(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_physlink_rsp*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
