; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_auth_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_auth_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_auth_complete = type { i64, i32 }
%struct.hci_conn = type { i64, i32, i32, i32, i32 }
%struct.hci_cp_set_conn_encrypt = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_CONN_AUTH_FAILURE = common dso_local global i32 0, align 4
@HCI_CONN_REAUTH_PEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"re-auth of legacy device is not possible.\00", align 1
@HCI_CONN_AUTH = common dso_local global i32 0, align 4
@HCI_ERROR_PIN_OR_KEY_MISSING = common dso_local global i64 0, align 8
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_OP_SET_CONN_ENCRYPT = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_auth_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_auth_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_auth_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_set_conn_encrypt, align 4
  %8 = alloca %struct.hci_cp_set_conn_encrypt, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_auth_complete*
  store %struct.hci_ev_auth_complete* %13, %struct.hci_ev_auth_complete** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %18 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %25 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @__le16_to_cpu(i32 %26)
  %28 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %23, i32 %27)
  store %struct.hci_conn* %28, %struct.hci_conn** %6, align 8
  %29 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %30 = icmp ne %struct.hci_conn* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %171

32:                                               ; preds = %2
  %33 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %34 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @HCI_CONN_AUTH_FAILURE, align 4
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 1
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = call i64 @hci_conn_ssp_enabled(%struct.hci_conn* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @HCI_CONN_REAUTH_PEND, align 4
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = call i32 @bt_dev_info(%struct.hci_dev* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %64

54:                                               ; preds = %45, %37
  %55 = load i32, i32* @HCI_CONN_AUTH, align 4
  %56 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 1
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %51
  br label %82

65:                                               ; preds = %32
  %66 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %67 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HCI_ERROR_PIN_OR_KEY_MISSING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @HCI_CONN_AUTH_FAILURE, align 4
  %73 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %74 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %73, i32 0, i32 1
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %79 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @mgmt_auth_failed(%struct.hci_conn* %77, i64 %80)
  br label %82

82:                                               ; preds = %76, %64
  %83 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %84 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %85 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %84, i32 0, i32 1
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  %87 = load i32, i32* @HCI_CONN_REAUTH_PEND, align 4
  %88 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 1
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  %91 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %92 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BT_CONFIG, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %82
  %97 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %98 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %96
  %102 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %103 = call i64 @hci_conn_ssp_enabled(%struct.hci_conn* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %107 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %7, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %7, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %112 = load i32, i32* @HCI_OP_SET_CONN_ENCRYPT, align 4
  %113 = call i32 @hci_send_cmd(%struct.hci_dev* %111, i32 %112, i32 8, %struct.hci_cp_set_conn_encrypt* %7)
  br label %125

114:                                              ; preds = %101, %96
  %115 = load i64, i64* @BT_CONNECTED, align 8
  %116 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %117 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %119 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %120 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @hci_connect_cfm(%struct.hci_conn* %118, i64 %121)
  %123 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %124 = call i32 @hci_conn_drop(%struct.hci_conn* %123)
  br label %125

125:                                              ; preds = %114, %105
  br label %139

126:                                              ; preds = %82
  %127 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %128 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %129 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @hci_auth_cfm(%struct.hci_conn* %127, i64 %130)
  %132 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %133 = call i32 @hci_conn_hold(%struct.hci_conn* %132)
  %134 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %135 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %136 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %138 = call i32 @hci_conn_drop(%struct.hci_conn* %137)
  br label %139

139:                                              ; preds = %126, %125
  %140 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %141 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %142 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %141, i32 0, i32 1
  %143 = call i64 @test_bit(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %139
  %146 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %147 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %145
  %151 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %152 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %8, i32 0, i32 1
  store i32 %153, i32* %154, align 4
  %155 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, %struct.hci_cp_set_conn_encrypt* %8, i32 0, i32 0
  store i32 1, i32* %155, align 4
  %156 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %157 = load i32, i32* @HCI_OP_SET_CONN_ENCRYPT, align 4
  %158 = call i32 @hci_send_cmd(%struct.hci_dev* %156, i32 %157, i32 8, %struct.hci_cp_set_conn_encrypt* %8)
  br label %169

159:                                              ; preds = %145
  %160 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %161 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %162 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %161, i32 0, i32 1
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  %164 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %165 = load %struct.hci_ev_auth_complete*, %struct.hci_ev_auth_complete** %5, align 8
  %166 = getelementptr inbounds %struct.hci_ev_auth_complete, %struct.hci_ev_auth_complete* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @hci_encrypt_cfm(%struct.hci_conn* %164, i64 %167, i32 0)
  br label %169

169:                                              ; preds = %159, %150
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %31
  %172 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %173 = call i32 @hci_dev_unlock(%struct.hci_dev* %172)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @hci_conn_ssp_enabled(%struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_auth_failed(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_set_conn_encrypt*) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_auth_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_encrypt_cfm(%struct.hci_conn*, i64, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
