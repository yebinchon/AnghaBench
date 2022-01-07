; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_getinfo_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_getinfo_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i32 }
%struct.sk_buff = type { i64 }
%struct.a2mp_cmd = type { i32 }
%struct.a2mp_info_rsp = type { i32, i64 }
%struct.a2mp_amp_assoc_req = type { i32 }
%struct.amp_ctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"id %d status 0x%2.2x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@A2MP_GETAMPASSOC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*, %struct.sk_buff*, %struct.a2mp_cmd*)* @a2mp_getinfo_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2mp_getinfo_rsp(%struct.amp_mgr* %0, %struct.sk_buff* %1, %struct.a2mp_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amp_mgr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.a2mp_cmd*, align 8
  %8 = alloca %struct.a2mp_info_rsp*, align 8
  %9 = alloca %struct.a2mp_amp_assoc_req, align 4
  %10 = alloca %struct.amp_ctrl*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.a2mp_cmd* %2, %struct.a2mp_cmd** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.a2mp_info_rsp*
  store %struct.a2mp_info_rsp* %14, %struct.a2mp_info_rsp** %8, align 8
  %15 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.a2mp_info_rsp*, %struct.a2mp_info_rsp** %8, align 8
  %26 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.a2mp_info_rsp*, %struct.a2mp_info_rsp** %8, align 8
  %29 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30)
  %32 = load %struct.a2mp_info_rsp*, %struct.a2mp_info_rsp** %8, align 8
  %33 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %24
  %40 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %41 = load %struct.a2mp_info_rsp*, %struct.a2mp_info_rsp** %8, align 8
  %42 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.amp_ctrl* @amp_ctrl_add(%struct.amp_mgr* %40, i32 %43)
  store %struct.amp_ctrl* %44, %struct.amp_ctrl** %10, align 8
  %45 = load %struct.amp_ctrl*, %struct.amp_ctrl** %10, align 8
  %46 = icmp ne %struct.amp_ctrl* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.a2mp_info_rsp*, %struct.a2mp_info_rsp** %8, align 8
  %52 = getelementptr inbounds %struct.a2mp_info_rsp, %struct.a2mp_info_rsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.a2mp_amp_assoc_req, %struct.a2mp_amp_assoc_req* %9, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %56 = load i32, i32* @A2MP_GETAMPASSOC_REQ, align 4
  %57 = load %struct.amp_mgr*, %struct.amp_mgr** %5, align 8
  %58 = call i32 @__next_ident(%struct.amp_mgr* %57)
  %59 = call i32 @a2mp_send(%struct.amp_mgr* %55, i32 %56, i32 %58, i32 4, %struct.a2mp_amp_assoc_req* %9)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @skb_pull(%struct.sk_buff* %60, i32 16)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %47, %36, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local %struct.amp_ctrl* @amp_ctrl_add(%struct.amp_mgr*, i32) #1

declare dso_local i32 @a2mp_send(%struct.amp_mgr*, i32, i32, i32, %struct.a2mp_amp_assoc_req*) #1

declare dso_local i32 @__next_ident(%struct.amp_mgr*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
