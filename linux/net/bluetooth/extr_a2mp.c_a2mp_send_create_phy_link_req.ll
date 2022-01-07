; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_create_phy_link_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_send_create_phy_link_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.amp_assoc }
%struct.amp_assoc = type { i32, i32 }
%struct.amp_mgr = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { i32 }
%struct.a2mp_physlink_req = type { i32, i32, i32 }

@READ_LOC_AMP_ASSOC_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s mgr %p assoc_len %zu\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@A2MP_CREATEPHYSLINK_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a2mp_send_create_phy_link_req(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.amp_assoc*, align 8
  %7 = alloca %struct.a2mp_physlink_req*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 2
  store %struct.amp_assoc* %11, %struct.amp_assoc** %6, align 8
  %12 = load i32, i32* @READ_LOC_AMP_ASSOC_FINAL, align 4
  %13 = call %struct.amp_mgr* @amp_mgr_lookup_by_state(i32 %12)
  store %struct.amp_mgr* %13, %struct.amp_mgr** %5, align 8
  %14 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %15 = icmp ne %struct.amp_mgr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %19 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 12, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.amp_mgr* %26, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.a2mp_physlink_req* @kzalloc(i64 %29, i32 %30)
  store %struct.a2mp_physlink_req* %31, %struct.a2mp_physlink_req** %7, align 8
  %32 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %7, align 8
  %33 = icmp ne %struct.a2mp_physlink_req* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  %35 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %36 = call i32 @amp_mgr_put(%struct.amp_mgr* %35)
  br label %77

37:                                               ; preds = %17
  %38 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %39 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %38, i32 0, i32 0
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %39, align 8
  store %struct.l2cap_chan* %40, %struct.l2cap_chan** %8, align 8
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %42 = icmp ne %struct.l2cap_chan* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %72

44:                                               ; preds = %37
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %7, align 8
  %49 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %7, align 8
  %54 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %7, align 8
  %56 = getelementptr inbounds %struct.a2mp_physlink_req, %struct.a2mp_physlink_req* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %59 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.amp_assoc*, %struct.amp_assoc** %6, align 8
  %62 = getelementptr inbounds %struct.amp_assoc, %struct.amp_assoc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32 %57, i32 %60, i32 %63)
  %65 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %66 = load i32, i32* @A2MP_CREATEPHYSLINK_REQ, align 4
  %67 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %68 = call i32 @__next_ident(%struct.amp_mgr* %67)
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %7, align 8
  %71 = call i32 @a2mp_send(%struct.amp_mgr* %65, i32 %66, i32 %68, i64 %69, %struct.a2mp_physlink_req* %70)
  br label %72

72:                                               ; preds = %44, %43
  %73 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %74 = call i32 @amp_mgr_put(%struct.amp_mgr* %73)
  %75 = load %struct.a2mp_physlink_req*, %struct.a2mp_physlink_req** %7, align 8
  %76 = call i32 @kfree(%struct.a2mp_physlink_req* %75)
  br label %77

77:                                               ; preds = %72, %34, %16
  ret void
}

declare dso_local %struct.amp_mgr* @amp_mgr_lookup_by_state(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.amp_mgr*, i64) #1

declare dso_local %struct.a2mp_physlink_req* @kzalloc(i64, i32) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i64, %struct.a2mp_physlink_req*) #1

declare dso_local i32 @__next_ident(%struct.amp_mgr*) #1

declare dso_local i32 @kfree(%struct.a2mp_physlink_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
