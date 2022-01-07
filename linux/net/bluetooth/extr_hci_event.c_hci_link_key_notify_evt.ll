; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_link_key_notify_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_link_key_notify_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_link_key_notify = type { i64, i32, i32 }
%struct.hci_conn = type { i32, i32, i32 }
%struct.link_key = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@HCI_CONN_NEW_LINK_KEY = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_LK_CHANGED_COMBINATION = common dso_local global i64 0, align 8
@HCI_LK_DEBUG_COMBINATION = common dso_local global i64 0, align 8
@HCI_KEEP_DEBUG_KEYS = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@HCI_CONN_FLUSH_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_link_key_notify_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_link_key_notify_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_link_key_notify*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.link_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_ev_link_key_notify*
  store %struct.hci_ev_link_key_notify* %14, %struct.hci_ev_link_key_notify** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_dev_lock(%struct.hci_dev* %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* @ACL_LINK, align 4
  %23 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %23, i32 0, i32 2
  %25 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %21, i32 %22, i32* %24)
  store %struct.hci_conn* %25, %struct.hci_conn** %6, align 8
  %26 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %27 = icmp ne %struct.hci_conn* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %121

29:                                               ; preds = %2
  %30 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %31 = call i32 @hci_conn_hold(%struct.hci_conn* %30)
  %32 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %33 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %36 = call i32 @hci_conn_drop(%struct.hci_conn* %35)
  %37 = load i32, i32* @HCI_CONN_NEW_LINK_KEY, align 4
  %38 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %42 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %43 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @conn_set_key(%struct.hci_conn* %41, i64 %44, i32 %47)
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = load i32, i32* @HCI_MGMT, align 4
  %51 = call i32 @hci_dev_test_flag(%struct.hci_dev* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %29
  br label %121

54:                                               ; preds = %29
  %55 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %56 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %57 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %58 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %57, i32 0, i32 2
  %59 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %60 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %63 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.link_key* @hci_add_link_key(%struct.hci_dev* %55, %struct.hci_conn* %56, i32* %58, i32 %61, i64 %64, i32 %65, i32* %8)
  store %struct.link_key* %66, %struct.link_key** %7, align 8
  %67 = load %struct.link_key*, %struct.link_key** %7, align 8
  %68 = icmp ne %struct.link_key* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  br label %121

70:                                               ; preds = %54
  %71 = load %struct.hci_ev_link_key_notify*, %struct.hci_ev_link_key_notify** %5, align 8
  %72 = getelementptr inbounds %struct.hci_ev_link_key_notify, %struct.hci_ev_link_key_notify* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HCI_LK_CHANGED_COMBINATION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = load %struct.link_key*, %struct.link_key** %7, align 8
  %79 = getelementptr inbounds %struct.link_key, %struct.link_key* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.link_key*, %struct.link_key** %7, align 8
  %82 = getelementptr inbounds %struct.link_key, %struct.link_key* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @conn_set_key(%struct.hci_conn* %77, i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %76, %70
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = load %struct.link_key*, %struct.link_key** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @mgmt_new_link_key(%struct.hci_dev* %86, %struct.link_key* %87, i32 %88)
  %90 = load %struct.link_key*, %struct.link_key** %7, align 8
  %91 = getelementptr inbounds %struct.link_key, %struct.link_key* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HCI_LK_DEBUG_COMBINATION, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %85
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = load i32, i32* @HCI_KEEP_DEBUG_KEYS, align 4
  %98 = call i32 @hci_dev_test_flag(%struct.hci_dev* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.link_key*, %struct.link_key** %7, align 8
  %102 = getelementptr inbounds %struct.link_key, %struct.link_key* %101, i32 0, i32 1
  %103 = call i32 @list_del_rcu(i32* %102)
  %104 = load %struct.link_key*, %struct.link_key** %7, align 8
  %105 = load i32, i32* @rcu, align 4
  %106 = call i32 @kfree_rcu(%struct.link_key* %104, i32 %105)
  br label %121

107:                                              ; preds = %95, %85
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @HCI_CONN_FLUSH_KEY, align 4
  %112 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %113 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %112, i32 0, i32 0
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  br label %120

115:                                              ; preds = %107
  %116 = load i32, i32* @HCI_CONN_FLUSH_KEY, align 4
  %117 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %118 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %117, i32 0, i32 0
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %100, %69, %53, %28
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = call i32 @hci_dev_unlock(%struct.hci_dev* %122)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @conn_set_key(%struct.hci_conn*, i64, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.link_key* @hci_add_link_key(%struct.hci_dev*, %struct.hci_conn*, i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @mgmt_new_link_key(%struct.hci_dev*, %struct.link_key*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.link_key*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
