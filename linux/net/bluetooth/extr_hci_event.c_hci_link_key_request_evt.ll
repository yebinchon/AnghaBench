; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_link_key_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_link_key_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_link_key_req = type { %struct.hci_cp_link_key_reply }
%struct.hci_cp_link_key_reply = type { i32, i32 }
%struct.hci_conn = type { i32, i64, i32 }
%struct.link_key = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_MGMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s link key not found for %pMR\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s found key type %u for %pMR\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_CONN_NEW_LINK_KEY = common dso_local global i32 0, align 4
@HCI_LK_UNAUTH_COMBINATION_P192 = common dso_local global i32 0, align 4
@HCI_LK_UNAUTH_COMBINATION_P256 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s ignoring unauthenticated key\00", align 1
@HCI_LK_COMBINATION = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@BT_SECURITY_FIPS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"%s ignoring key unauthenticated for high security\00", align 1
@HCI_LINK_KEY_SIZE = common dso_local global i32 0, align 4
@HCI_OP_LINK_KEY_REPLY = common dso_local global i32 0, align 4
@HCI_OP_LINK_KEY_NEG_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_link_key_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_link_key_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_link_key_req*, align 8
  %6 = alloca %struct.hci_cp_link_key_reply, align 4
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.link_key*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_link_key_req*
  store %struct.hci_ev_link_key_req* %13, %struct.hci_ev_link_key_req** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load i32, i32* @HCI_MGMT, align 4
  %20 = call i32 @hci_dev_test_flag(%struct.hci_dev* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %150

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = call i32 @hci_dev_lock(%struct.hci_dev* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load %struct.hci_ev_link_key_req*, %struct.hci_ev_link_key_req** %5, align 8
  %28 = getelementptr inbounds %struct.hci_ev_link_key_req, %struct.hci_ev_link_key_req* %27, i32 0, i32 0
  %29 = call %struct.link_key* @hci_find_link_key(%struct.hci_dev* %26, %struct.hci_cp_link_key_reply* %28)
  store %struct.link_key* %29, %struct.link_key** %8, align 8
  %30 = load %struct.link_key*, %struct.link_key** %8, align 8
  %31 = icmp ne %struct.link_key* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hci_ev_link_key_req*, %struct.hci_ev_link_key_req** %5, align 8
  %37 = getelementptr inbounds %struct.hci_ev_link_key_req, %struct.hci_ev_link_key_req* %36, i32 0, i32 0
  %38 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.hci_cp_link_key_reply* %37)
  br label %142

39:                                               ; preds = %23
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.link_key*, %struct.link_key** %8, align 8
  %44 = getelementptr inbounds %struct.link_key, %struct.link_key* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hci_ev_link_key_req*, %struct.hci_ev_link_key_req** %5, align 8
  %47 = getelementptr inbounds %struct.hci_ev_link_key_req, %struct.hci_ev_link_key_req* %46, i32 0, i32 0
  %48 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45, %struct.hci_cp_link_key_reply* %47)
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = load i32, i32* @ACL_LINK, align 4
  %51 = load %struct.hci_ev_link_key_req*, %struct.hci_ev_link_key_req** %5, align 8
  %52 = getelementptr inbounds %struct.hci_ev_link_key_req, %struct.hci_ev_link_key_req* %51, i32 0, i32 0
  %53 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %49, i32 %50, %struct.hci_cp_link_key_reply* %52)
  store %struct.hci_conn* %53, %struct.hci_conn** %7, align 8
  %54 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %55 = icmp ne %struct.hci_conn* %54, null
  br i1 %55, label %56, label %125

56:                                               ; preds = %39
  %57 = load i32, i32* @HCI_CONN_NEW_LINK_KEY, align 4
  %58 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 2
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load %struct.link_key*, %struct.link_key** %8, align 8
  %62 = getelementptr inbounds %struct.link_key, %struct.link_key* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HCI_LK_UNAUTH_COMBINATION_P192, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %56
  %67 = load %struct.link_key*, %struct.link_key** %8, align 8
  %68 = getelementptr inbounds %struct.link_key, %struct.link_key* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HCI_LK_UNAUTH_COMBINATION_P256, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66, %56
  %73 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %74 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 255
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %142

88:                                               ; preds = %77, %72, %66
  %89 = load %struct.link_key*, %struct.link_key** %8, align 8
  %90 = getelementptr inbounds %struct.link_key, %struct.link_key* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HCI_LK_COMBINATION, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load %struct.link_key*, %struct.link_key** %8, align 8
  %96 = getelementptr inbounds %struct.link_key, %struct.link_key* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 16
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  %100 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %101 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BT_SECURITY_FIPS, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105, %99
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %142

116:                                              ; preds = %105, %94, %88
  %117 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %118 = load %struct.link_key*, %struct.link_key** %8, align 8
  %119 = getelementptr inbounds %struct.link_key, %struct.link_key* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.link_key*, %struct.link_key** %8, align 8
  %122 = getelementptr inbounds %struct.link_key, %struct.link_key* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @conn_set_key(%struct.hci_conn* %117, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %116, %39
  %126 = getelementptr inbounds %struct.hci_cp_link_key_reply, %struct.hci_cp_link_key_reply* %6, i32 0, i32 1
  %127 = load %struct.hci_ev_link_key_req*, %struct.hci_ev_link_key_req** %5, align 8
  %128 = getelementptr inbounds %struct.hci_ev_link_key_req, %struct.hci_ev_link_key_req* %127, i32 0, i32 0
  %129 = call i32 @bacpy(i32* %126, %struct.hci_cp_link_key_reply* %128)
  %130 = getelementptr inbounds %struct.hci_cp_link_key_reply, %struct.hci_cp_link_key_reply* %6, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.link_key*, %struct.link_key** %8, align 8
  %133 = getelementptr inbounds %struct.link_key, %struct.link_key* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HCI_LINK_KEY_SIZE, align 4
  %136 = call i32 @memcpy(i32 %131, i32 %134, i32 %135)
  %137 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %138 = load i32, i32* @HCI_OP_LINK_KEY_REPLY, align 4
  %139 = call i32 @hci_send_cmd(%struct.hci_dev* %137, i32 %138, i32 8, %struct.hci_cp_link_key_reply* %6)
  %140 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %141 = call i32 @hci_dev_unlock(%struct.hci_dev* %140)
  br label %150

142:                                              ; preds = %111, %83, %32
  %143 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %144 = load i32, i32* @HCI_OP_LINK_KEY_NEG_REPLY, align 4
  %145 = load %struct.hci_ev_link_key_req*, %struct.hci_ev_link_key_req** %5, align 8
  %146 = getelementptr inbounds %struct.hci_ev_link_key_req, %struct.hci_ev_link_key_req* %145, i32 0, i32 0
  %147 = call i32 @hci_send_cmd(%struct.hci_dev* %143, i32 %144, i32 6, %struct.hci_cp_link_key_reply* %146)
  %148 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %149 = call i32 @hci_dev_unlock(%struct.hci_dev* %148)
  br label %150

150:                                              ; preds = %142, %125, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.link_key* @hci_find_link_key(%struct.hci_dev*, %struct.hci_cp_link_key_reply*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, %struct.hci_cp_link_key_reply*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @conn_set_key(%struct.hci_conn*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, %struct.hci_cp_link_key_reply*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_link_key_reply*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
