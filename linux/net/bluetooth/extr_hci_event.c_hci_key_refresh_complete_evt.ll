; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_key_refresh_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_key_refresh_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_key_refresh_complete = type { i64, i32 }
%struct.hci_conn = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s status 0x%2.2x handle 0x%4.4x\00", align 1
@LE_LINK = common dso_local global i64 0, align 8
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_ERROR_AUTH_FAILURE = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_key_refresh_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_key_refresh_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_key_refresh_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hci_ev_key_refresh_complete*
  store %struct.hci_ev_key_refresh_complete* %11, %struct.hci_ev_key_refresh_complete** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %16 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %19 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @__le16_to_cpu(i32 %20)
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17, i32 %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_dev_lock(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %27 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @__le16_to_cpu(i32 %28)
  %30 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %25, i32 %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %6, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %32 = icmp ne %struct.hci_conn* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %110

34:                                               ; preds = %2
  %35 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LE_LINK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %110

41:                                               ; preds = %34
  %42 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %43 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %54 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 3
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %58 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BT_CONNECTED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %69 = load i32, i32* @HCI_ERROR_AUTH_FAILURE, align 4
  %70 = call i32 @hci_disconnect(%struct.hci_conn* %68, i32 %69)
  %71 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %72 = call i32 @hci_conn_drop(%struct.hci_conn* %71)
  br label %110

73:                                               ; preds = %61, %52
  %74 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %75 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BT_CONFIG, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %81 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @BT_CONNECTED, align 8
  %86 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %90 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %91 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @hci_connect_cfm(%struct.hci_conn* %89, i64 %92)
  %94 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %95 = call i32 @hci_conn_drop(%struct.hci_conn* %94)
  br label %109

96:                                               ; preds = %73
  %97 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %98 = load %struct.hci_ev_key_refresh_complete*, %struct.hci_ev_key_refresh_complete** %5, align 8
  %99 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, %struct.hci_ev_key_refresh_complete* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @hci_auth_cfm(%struct.hci_conn* %97, i64 %100)
  %102 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %103 = call i32 @hci_conn_hold(%struct.hci_conn* %102)
  %104 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %105 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %106 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %108 = call i32 @hci_conn_drop(%struct.hci_conn* %107)
  br label %109

109:                                              ; preds = %96, %88
  br label %110

110:                                              ; preds = %109, %67, %40, %33
  %111 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %112 = call i32 @hci_dev_unlock(%struct.hci_dev* %111)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_disconnect(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_auth_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
