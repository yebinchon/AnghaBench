; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_sign_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_sign_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.TYPE_2__*, %struct.l2cap_chan* }
%struct.TYPE_2__ = type { i64 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { %struct.smp_csrk*, i32 }
%struct.smp_csrk = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_sign_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_DIST_SIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i64 0, align 8
@MGMT_CSRK_REMOTE_AUTHENTICATED = common dso_local global i32 0, align 4
@MGMT_CSRK_REMOTE_UNAUTHENTICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_sign_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_sign_info(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_sign_info*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.smp_chan*, align 8
  %9 = alloca %struct.smp_csrk*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.smp_cmd_sign_info*
  store %struct.smp_cmd_sign_info* %14, %struct.smp_cmd_sign_info** %6, align 8
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %16 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %15, i32 0, i32 1
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %16, align 8
  store %struct.l2cap_chan* %17, %struct.l2cap_chan** %7, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 0
  %20 = load %struct.smp_chan*, %struct.smp_chan** %19, align 8
  store %struct.smp_chan* %20, %struct.smp_chan** %8, align 8
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %29, i32* %3, align 4
  br label %73

30:                                               ; preds = %2
  %31 = load i32, i32* @SMP_DIST_SIGN, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %34 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_pull(%struct.sk_buff* %37, i32 4)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.smp_csrk* @kzalloc(i32 8, i32 %39)
  store %struct.smp_csrk* %40, %struct.smp_csrk** %9, align 8
  %41 = load %struct.smp_csrk*, %struct.smp_csrk** %9, align 8
  %42 = icmp ne %struct.smp_csrk* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %30
  %44 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %45 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @MGMT_CSRK_REMOTE_AUTHENTICATED, align 4
  %53 = load %struct.smp_csrk*, %struct.smp_csrk** %9, align 8
  %54 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @MGMT_CSRK_REMOTE_UNAUTHENTICATED, align 4
  %57 = load %struct.smp_csrk*, %struct.smp_csrk** %9, align 8
  %58 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.smp_csrk*, %struct.smp_csrk** %9, align 8
  %61 = getelementptr inbounds %struct.smp_csrk, %struct.smp_csrk* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.smp_cmd_sign_info*, %struct.smp_cmd_sign_info** %6, align 8
  %64 = getelementptr inbounds %struct.smp_cmd_sign_info, %struct.smp_cmd_sign_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %62, i32 %65, i32 4)
  br label %67

67:                                               ; preds = %59, %30
  %68 = load %struct.smp_csrk*, %struct.smp_csrk** %9, align 8
  %69 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %70 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %69, i32 0, i32 0
  store %struct.smp_csrk* %68, %struct.smp_csrk** %70, align 8
  %71 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %72 = call i32 @smp_distribute_keys(%struct.smp_chan* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.smp_csrk* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @smp_distribute_keys(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
