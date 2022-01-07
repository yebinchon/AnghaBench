; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_conn = type { i32 }
%struct.l2cap_chan = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.l2cap_chan* (%struct.l2cap_chan*)* }

@ACL_LINK = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"hcon %p bdaddr %pMR status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i64)* @l2cap_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_connect_cfm(%struct.hci_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.l2cap_chan*, align 8
  %10 = alloca %struct.l2cap_chan*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 3
  %13 = load %struct.hci_dev*, %struct.hci_dev** %12, align 8
  store %struct.hci_dev* %13, %struct.hci_dev** %5, align 8
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACL_LINK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LE_LINK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %116

26:                                               ; preds = %19, %2
  %27 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 1
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %27, i32* %29, i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @bt_to_errno(i64 %36)
  %38 = call i32 @l2cap_conn_del(%struct.hci_conn* %35, i32 %37)
  br label %116

39:                                               ; preds = %26
  %40 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %41 = call %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn* %40)
  store %struct.l2cap_conn* %41, %struct.l2cap_conn** %6, align 8
  %42 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %43 = icmp ne %struct.l2cap_conn* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %116

45:                                               ; preds = %39
  %46 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %47 = call i64 @bdaddr_dst_type(%struct.hci_conn* %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 0
  %50 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 1
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @hci_bdaddr_list_lookup(i32* %49, i32* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %116

56:                                               ; preds = %45
  %57 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %58 = call %struct.l2cap_chan* @l2cap_global_fixed_chan(%struct.l2cap_chan* null, %struct.hci_conn* %57)
  store %struct.l2cap_chan* %58, %struct.l2cap_chan** %7, align 8
  br label %59

59:                                               ; preds = %106, %56
  %60 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %61 = icmp ne %struct.l2cap_chan* %60, null
  br i1 %61, label %62, label %113

62:                                               ; preds = %59
  %63 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %65 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %106

70:                                               ; preds = %62
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %72 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %71)
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %74 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.l2cap_chan* (%struct.l2cap_chan*)*, %struct.l2cap_chan* (%struct.l2cap_chan*)** %76, align 8
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %79 = call %struct.l2cap_chan* %77(%struct.l2cap_chan* %78)
  store %struct.l2cap_chan* %79, %struct.l2cap_chan** %9, align 8
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %81 = icmp ne %struct.l2cap_chan* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %70
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %84 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %83, i32 0, i32 3
  %85 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %86 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %85, i32 0, i32 2
  %87 = call i32 @bacpy(i32* %84, i32* %86)
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 2
  %90 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 1
  %92 = call i32 @bacpy(i32* %89, i32* %91)
  %93 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %94 = call i32 @bdaddr_src_type(%struct.hci_conn* %93)
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %96 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %99 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  %102 = call i32 @__l2cap_chan_add(%struct.l2cap_conn* %100, %struct.l2cap_chan* %101)
  br label %103

103:                                              ; preds = %82, %70
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %105 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %104)
  br label %106

106:                                              ; preds = %103, %69
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %108 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %109 = call %struct.l2cap_chan* @l2cap_global_fixed_chan(%struct.l2cap_chan* %107, %struct.hci_conn* %108)
  store %struct.l2cap_chan* %109, %struct.l2cap_chan** %10, align 8
  %110 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %111 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %110)
  %112 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  store %struct.l2cap_chan* %112, %struct.l2cap_chan** %7, align 8
  br label %59

113:                                              ; preds = %59
  %114 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %115 = call i32 @l2cap_conn_ready(%struct.l2cap_conn* %114)
  br label %116

116:                                              ; preds = %113, %55, %44, %34, %25
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i32*, i64) #1

declare dso_local i32 @l2cap_conn_del(%struct.hci_conn*, i32) #1

declare dso_local i32 @bt_to_errno(i64) #1

declare dso_local %struct.l2cap_conn* @l2cap_conn_add(%struct.hci_conn*) #1

declare dso_local i64 @bdaddr_dst_type(%struct.hci_conn*) #1

declare dso_local i64 @hci_bdaddr_list_lookup(i32*, i32*, i64) #1

declare dso_local %struct.l2cap_chan* @l2cap_global_fixed_chan(%struct.l2cap_chan*, %struct.hci_conn*) #1

declare dso_local i64 @__l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @bdaddr_src_type(%struct.hci_conn*) #1

declare dso_local i32 @__l2cap_chan_add(%struct.l2cap_conn*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_conn_ready(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
