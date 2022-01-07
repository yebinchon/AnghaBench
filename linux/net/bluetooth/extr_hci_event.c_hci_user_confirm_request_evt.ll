; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_user_confirm_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_user_confirm_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_user_confirm_req = type { i32, i32 }
%struct.hci_conn = type { i32, i32, i64, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_MGMT = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i64 0, align 8
@HCI_IO_NO_INPUT_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Rejecting request: remote device can't provide MITM\00", align 1
@HCI_OP_USER_CONFIRM_NEG_REPLY = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Confirming auto-accept as acceptor\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Auto-accept of user confirmation with %ums delay\00", align 1
@HCI_OP_USER_CONFIRM_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_user_confirm_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_user_confirm_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_user_confirm_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hci_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hci_ev_user_confirm_req*
  store %struct.hci_ev_user_confirm_req* %15, %struct.hci_ev_user_confirm_req** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load i32, i32* @HCI_MGMT, align 4
  %24 = call i32 @hci_dev_test_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %142

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = load i32, i32* @ACL_LINK, align 4
  %30 = load %struct.hci_ev_user_confirm_req*, %struct.hci_ev_user_confirm_req** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_user_confirm_req, %struct.hci_ev_user_confirm_req* %30, i32 0, i32 1
  %32 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %28, i32 %29, i32* %31)
  store %struct.hci_conn* %32, %struct.hci_conn** %9, align 8
  %33 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %34 = icmp ne %struct.hci_conn* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %142

36:                                               ; preds = %27
  %37 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BT_SECURITY_MEDIUM, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %36
  %51 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %52 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HCI_IO_NO_INPUT_OUTPUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = load i32, i32* @HCI_OP_USER_CONFIRM_NEG_REPLY, align 4
  %60 = load %struct.hci_ev_user_confirm_req*, %struct.hci_ev_user_confirm_req** %5, align 8
  %61 = getelementptr inbounds %struct.hci_ev_user_confirm_req, %struct.hci_ev_user_confirm_req* %60, i32 0, i32 1
  %62 = call i32 @hci_send_cmd(%struct.hci_dev* %58, i32 %59, i32 4, i32* %61)
  br label %142

63:                                               ; preds = %50, %36
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %68 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HCI_IO_NO_INPUT_OUTPUT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %130

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %77 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HCI_IO_NO_INPUT_OUTPUT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %130

81:                                               ; preds = %75, %72
  %82 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %83 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %84 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %83, i32 0, i32 7
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %81
  %88 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HCI_IO_NO_INPUT_OUTPUT, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %93
  %100 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %131

101:                                              ; preds = %96, %87, %81
  %102 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %103 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %101
  %111 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %112 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @msecs_to_jiffies(i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %116 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %115, i32 0, i32 6
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  %121 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %120, i32 0, i32 5
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @queue_delayed_work(i32 %119, i32* %121, i32 %122)
  br label %142

124:                                              ; preds = %101
  %125 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %126 = load i32, i32* @HCI_OP_USER_CONFIRM_REPLY, align 4
  %127 = load %struct.hci_ev_user_confirm_req*, %struct.hci_ev_user_confirm_req** %5, align 8
  %128 = getelementptr inbounds %struct.hci_ev_user_confirm_req, %struct.hci_ev_user_confirm_req* %127, i32 0, i32 1
  %129 = call i32 @hci_send_cmd(%struct.hci_dev* %125, i32 %126, i32 4, i32* %128)
  br label %142

130:                                              ; preds = %75, %66
  br label %131

131:                                              ; preds = %130, %99
  %132 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %133 = load %struct.hci_ev_user_confirm_req*, %struct.hci_ev_user_confirm_req** %5, align 8
  %134 = getelementptr inbounds %struct.hci_ev_user_confirm_req, %struct.hci_ev_user_confirm_req* %133, i32 0, i32 1
  %135 = load i32, i32* @ACL_LINK, align 4
  %136 = load %struct.hci_ev_user_confirm_req*, %struct.hci_ev_user_confirm_req** %5, align 8
  %137 = getelementptr inbounds %struct.hci_ev_user_confirm_req, %struct.hci_ev_user_confirm_req* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @mgmt_user_confirm_request(%struct.hci_dev* %132, i32* %134, i32 %135, i32 0, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %131, %124, %110, %56, %35, %26
  %143 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %144 = call i32 @hci_dev_unlock(%struct.hci_dev* %143)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mgmt_user_confirm_request(%struct.hci_dev*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
