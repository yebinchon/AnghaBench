; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_remote_feat_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_remote_feat_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32*, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_le_remote_feat_complete = type { i32, i32, i32 }
%struct.hci_conn = type { i64, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_LE_SLAVE_FEATURES = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_remote_feat_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_remote_feat_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_le_remote_feat_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_ev_le_remote_feat_complete*
  store %struct.hci_ev_le_remote_feat_complete* %12, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hci_ev_le_remote_feat_complete*, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %17 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, %struct.hci_ev_le_remote_feat_complete* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load %struct.hci_ev_le_remote_feat_complete*, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, %struct.hci_ev_le_remote_feat_complete* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le16_to_cpu(i32 %25)
  %27 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %22, i32 %26)
  store %struct.hci_conn* %27, %struct.hci_conn** %6, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %29 = icmp ne %struct.hci_conn* %28, null
  br i1 %29, label %30, label %85

30:                                               ; preds = %2
  %31 = load %struct.hci_ev_le_remote_feat_complete*, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %32 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, %struct.hci_ev_le_remote_feat_complete* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hci_ev_le_remote_feat_complete*, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %42 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, %struct.hci_ev_le_remote_feat_complete* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 8)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_CONFIG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HCI_LE_SLAVE_FEATURES, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %62 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.hci_ev_le_remote_feat_complete*, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %67 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, %struct.hci_ev_le_remote_feat_complete* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 26
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %75

71:                                               ; preds = %65, %60, %51
  %72 = load %struct.hci_ev_le_remote_feat_complete*, %struct.hci_ev_le_remote_feat_complete** %5, align 8
  %73 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, %struct.hci_ev_le_remote_feat_complete* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i64, i64* @BT_CONNECTED, align 8
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @hci_connect_cfm(%struct.hci_conn* %79, i32 %80)
  %82 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %83 = call i32 @hci_conn_drop(%struct.hci_conn* %82)
  br label %84

84:                                               ; preds = %75, %45
  br label %85

85:                                               ; preds = %84, %2
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = call i32 @hci_dev_unlock(%struct.hci_dev* %86)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
