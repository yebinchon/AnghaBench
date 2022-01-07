; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_ltk_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_ltk_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_le_ltk_req = type { i64, i64, i32 }
%struct.hci_cp_le_ltk_reply = type { i32, i32 }
%struct.hci_cp_le_ltk_neg_reply = type { i32, i32 }
%struct.hci_conn = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smp_ltk = type { i64, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s handle 0x%4.4x\00", align 1
@HCI_OP_LE_LTK_REPLY = common dso_local global i32 0, align 4
@SMP_STK = common dso_local global i64 0, align 8
@HCI_CONN_STK_ENCRYPT = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@HCI_OP_LE_LTK_NEG_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_ltk_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_ltk_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_le_ltk_req*, align 8
  %6 = alloca %struct.hci_cp_le_ltk_reply, align 4
  %7 = alloca %struct.hci_cp_le_ltk_neg_reply, align 4
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca %struct.smp_ltk*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_ev_le_ltk_req*
  store %struct.hci_ev_le_ltk_req* %14, %struct.hci_ev_le_ltk_req** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %19 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @__le16_to_cpu(i32 %20)
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %27 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__le16_to_cpu(i32 %28)
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %25, i32 %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %8, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %32 = icmp eq %struct.hci_conn* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %146

34:                                               ; preds = %2
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 6
  %38 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.smp_ltk* @hci_find_ltk(%struct.hci_dev* %35, i32* %37, i32 %40, i32 %43)
  store %struct.smp_ltk* %44, %struct.smp_ltk** %9, align 8
  %45 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %46 = icmp ne %struct.smp_ltk* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %146

48:                                               ; preds = %34
  %49 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %50 = call i64 @smp_ltk_is_sc(%struct.smp_ltk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %54 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %59 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  br label %146

63:                                               ; preds = %57
  br label %82

64:                                               ; preds = %48
  %65 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %66 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %69 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %64
  %73 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %74 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %77 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72, %64
  br label %146

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %63
  %83 = getelementptr inbounds %struct.hci_cp_le_ltk_reply, %struct.hci_cp_le_ltk_reply* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %86 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %89 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @memcpy(i32 %84, i32 %87, i32 %90)
  %92 = getelementptr inbounds %struct.hci_cp_le_ltk_reply, %struct.hci_cp_le_ltk_reply* %6, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %95 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %99 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memset(i32 %97, i32 0, i32 %103)
  %105 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %106 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cpu_to_le16(i32 %107)
  %109 = getelementptr inbounds %struct.hci_cp_le_ltk_reply, %struct.hci_cp_le_ltk_reply* %6, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %111 = call i32 @smp_ltk_sec_level(%struct.smp_ltk* %110)
  %112 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %113 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %115 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %118 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %120 = load i32, i32* @HCI_OP_LE_LTK_REPLY, align 4
  %121 = call i32 @hci_send_cmd(%struct.hci_dev* %119, i32 %120, i32 8, %struct.hci_cp_le_ltk_reply* %6)
  %122 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %123 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SMP_STK, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %82
  %128 = load i32, i32* @HCI_CONN_STK_ENCRYPT, align 4
  %129 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %130 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %129, i32 0, i32 1
  %131 = call i32 @set_bit(i32 %128, i32* %130)
  %132 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %133 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %132, i32 0, i32 4
  %134 = call i32 @list_del_rcu(i32* %133)
  %135 = load %struct.smp_ltk*, %struct.smp_ltk** %9, align 8
  %136 = load i32, i32* @rcu, align 4
  %137 = call i32 @kfree_rcu(%struct.smp_ltk* %135, i32 %136)
  br label %143

138:                                              ; preds = %82
  %139 = load i32, i32* @HCI_CONN_STK_ENCRYPT, align 4
  %140 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %141 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %140, i32 0, i32 1
  %142 = call i32 @clear_bit(i32 %139, i32* %141)
  br label %143

143:                                              ; preds = %138, %127
  %144 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %145 = call i32 @hci_dev_unlock(%struct.hci_dev* %144)
  br label %157

146:                                              ; preds = %80, %62, %47, %33
  %147 = load %struct.hci_ev_le_ltk_req*, %struct.hci_ev_le_ltk_req** %5, align 8
  %148 = getelementptr inbounds %struct.hci_ev_le_ltk_req, %struct.hci_ev_le_ltk_req* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.hci_cp_le_ltk_neg_reply, %struct.hci_cp_le_ltk_neg_reply* %7, i32 0, i32 0
  store i32 %149, i32* %150, align 4
  %151 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %152 = load i32, i32* @HCI_OP_LE_LTK_NEG_REPLY, align 4
  %153 = bitcast %struct.hci_cp_le_ltk_neg_reply* %7 to %struct.hci_cp_le_ltk_reply*
  %154 = call i32 @hci_send_cmd(%struct.hci_dev* %151, i32 %152, i32 8, %struct.hci_cp_le_ltk_reply* %153)
  %155 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %156 = call i32 @hci_dev_unlock(%struct.hci_dev* %155)
  br label %157

157:                                              ; preds = %146, %143
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local %struct.smp_ltk* @hci_find_ltk(%struct.hci_dev*, i32*, i32, i32) #1

declare dso_local i64 @smp_ltk_is_sc(%struct.smp_ltk*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @smp_ltk_sec_level(%struct.smp_ltk*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_le_ltk_reply*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.smp_ltk*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
