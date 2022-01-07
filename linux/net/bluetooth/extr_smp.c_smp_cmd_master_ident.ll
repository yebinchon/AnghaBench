; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_master_ident.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_master_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i64, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, %struct.smp_ltk*, i32, i32 }
%struct.smp_ltk = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_master_ident = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_DIST_ENC_KEY = common dso_local global i32 0, align 4
@SMP_DIST_ID_KEY = common dso_local global i32 0, align 4
@SMP_CMD_IDENT_INFO = common dso_local global i32 0, align 4
@SMP_DIST_SIGN = common dso_local global i32 0, align 4
@SMP_CMD_SIGN_INFO = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@SMP_LTK = common dso_local global i32 0, align 4
@KEY_DIST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_master_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_master_ident(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_master_ident*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.smp_chan*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca %struct.hci_conn*, align 8
  %11 = alloca %struct.smp_ltk*, align 8
  %12 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.smp_cmd_master_ident*
  store %struct.smp_cmd_master_ident* %17, %struct.smp_cmd_master_ident** %6, align 8
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 1
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %19, align 8
  store %struct.l2cap_chan* %20, %struct.l2cap_chan** %7, align 8
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 0
  %23 = load %struct.smp_chan*, %struct.smp_chan** %22, align 8
  store %struct.smp_chan* %23, %struct.smp_chan** %8, align 8
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 0
  %26 = load %struct.hci_conn*, %struct.hci_conn** %25, align 8
  %27 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %26, i32 0, i32 3
  %28 = load %struct.hci_dev*, %struct.hci_dev** %27, align 8
  store %struct.hci_dev* %28, %struct.hci_dev** %9, align 8
  %29 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %30 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %29, i32 0, i32 0
  %31 = load %struct.hci_conn*, %struct.hci_conn** %30, align 8
  store %struct.hci_conn* %31, %struct.hci_conn** %10, align 8
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %40, i32* %3, align 4
  br label %113

41:                                               ; preds = %2
  %42 = load i32, i32* @SMP_DIST_ENC_KEY, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %45 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %49 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SMP_DIST_ID_KEY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %56 = load i32, i32* @SMP_CMD_IDENT_INFO, align 4
  %57 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %55, i32 %56)
  br label %70

58:                                               ; preds = %41
  %59 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %60 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SMP_DIST_SIGN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %67 = load i32, i32* @SMP_CMD_SIGN_INFO, align 4
  %68 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %58
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @skb_pull(%struct.sk_buff* %71, i32 8)
  %73 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %74 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %80 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 2
  %82 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %83 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SMP_LTK, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %88 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %91 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.smp_cmd_master_ident*, %struct.smp_cmd_master_ident** %6, align 8
  %94 = getelementptr inbounds %struct.smp_cmd_master_ident, %struct.smp_cmd_master_ident* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.smp_cmd_master_ident*, %struct.smp_cmd_master_ident** %6, align 8
  %97 = getelementptr inbounds %struct.smp_cmd_master_ident, %struct.smp_cmd_master_ident* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.smp_ltk* @hci_add_ltk(%struct.hci_dev* %79, i32* %81, i32 %84, i32 %85, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98)
  store %struct.smp_ltk* %99, %struct.smp_ltk** %11, align 8
  %100 = load %struct.smp_ltk*, %struct.smp_ltk** %11, align 8
  %101 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %102 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %101, i32 0, i32 1
  store %struct.smp_ltk* %100, %struct.smp_ltk** %102, align 8
  %103 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %104 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @KEY_DIST_MASK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %70
  %110 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %111 = call i32 @smp_distribute_keys(%struct.smp_chan* %110)
  br label %112

112:                                              ; preds = %109, %70
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %39
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.smp_ltk* @hci_add_ltk(%struct.hci_dev*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @smp_distribute_keys(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
