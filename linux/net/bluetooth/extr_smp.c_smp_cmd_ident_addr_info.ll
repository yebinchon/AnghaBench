; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_ident_addr_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_ident_addr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i64, i32, i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, i64, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_ident_addr_info = type { i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_DIST_ID_KEY = common dso_local global i32 0, align 4
@SMP_DIST_SIGN = common dso_local global i32 0, align 4
@SMP_CMD_SIGN_INFO = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"ignoring IRK with no identity address\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"ignoring IRK with invalid identity address\00", align 1
@KEY_DIST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_ident_addr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_ident_addr_info(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_ident_addr_info*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.smp_chan*, align 8
  %9 = alloca %struct.hci_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.smp_cmd_ident_addr_info*
  store %struct.smp_cmd_ident_addr_info* %15, %struct.smp_cmd_ident_addr_info** %6, align 8
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %17 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %16, i32 0, i32 1
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  store %struct.l2cap_chan* %18, %struct.l2cap_chan** %7, align 8
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 0
  %21 = load %struct.smp_chan*, %struct.smp_chan** %20, align 8
  store %struct.smp_chan* %21, %struct.smp_chan** %8, align 8
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 0
  %24 = load %struct.hci_conn*, %struct.hci_conn** %23, align 8
  store %struct.hci_conn* %24, %struct.hci_conn** %9, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %32, i32* %3, align 4
  br label %152

33:                                               ; preds = %2
  %34 = load i32, i32* @SMP_DIST_ID_KEY, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %37 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %41 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SMP_DIST_SIGN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %48 = load i32, i32* @SMP_CMD_SIGN_INFO, align 4
  %49 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @skb_pull(%struct.sk_buff* %51, i32 16)
  %53 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %54 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %53, i32 0, i32 1
  %55 = load i32*, i32** @BDADDR_ANY, align 8
  %56 = call i64 @bacmp(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %60 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %59, i32 0, i32 1
  %61 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %62 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @hci_is_identity_address(i32* %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58, %50
  %67 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %68 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bt_dev_err(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %141

71:                                               ; preds = %58
  %72 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %73 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %72, i32 0, i32 2
  %74 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %75 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @hci_is_identity_address(i32* %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %71
  %80 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %81 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %80, i32 0, i32 1
  %82 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %83 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %82, i32 0, i32 2
  %84 = call i64 @bacmp(i32* %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %79
  %87 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %88 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86, %79
  %95 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %96 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @bt_dev_err(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %141

99:                                               ; preds = %86, %71
  %100 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %101 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %100, i32 0, i32 3
  %102 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %103 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %102, i32 0, i32 1
  %104 = call i32 @bacpy(i32* %101, i32* %103)
  %105 = load %struct.smp_cmd_ident_addr_info*, %struct.smp_cmd_ident_addr_info** %6, align 8
  %106 = getelementptr inbounds %struct.smp_cmd_ident_addr_info, %struct.smp_cmd_ident_addr_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %109 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %111 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %110, i32 0, i32 2
  %112 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %113 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @hci_bdaddr_is_rpa(i32* %111, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %99
  %118 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %119 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %118, i32 0, i32 2
  %120 = call i32 @bacpy(i32* %10, i32* %119)
  br label %124

121:                                              ; preds = %99
  %122 = load i32*, i32** @BDADDR_ANY, align 8
  %123 = call i32 @bacpy(i32* %10, i32* %122)
  br label %124

124:                                              ; preds = %121, %117
  %125 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %126 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %125, i32 0, i32 0
  %127 = load %struct.hci_conn*, %struct.hci_conn** %126, align 8
  %128 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %131 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %130, i32 0, i32 3
  %132 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %133 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %136 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @hci_add_irk(i32 %129, i32* %131, i64 %134, i32 %137, i32* %10)
  %139 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %140 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %124, %94, %66
  %142 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %143 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @KEY_DIST_MASK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %150 = call i32 @smp_distribute_keys(%struct.smp_chan* %149)
  br label %151

151:                                              ; preds = %148, %141
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %31
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @bacmp(i32*, i32*) #1

declare dso_local i64 @hci_is_identity_address(i32*, i64) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i64 @hci_bdaddr_is_rpa(i32*, i64) #1

declare dso_local i32 @hci_add_irk(i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @smp_distribute_keys(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
