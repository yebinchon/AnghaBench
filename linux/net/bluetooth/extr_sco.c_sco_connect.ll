; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.sco_conn = type { i32 }
%struct.hci_conn = type { i64, i32 }
%struct.hci_dev = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%pMR -> %pMR\00", align 1
@BDADDR_BREDR = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@disable_esco = common dso_local global i32 0, align 4
@ESCO_LINK = common dso_local global i32 0, align 4
@SCO_LINK = common dso_local global i32 0, align 4
@BT_VOICE_TRANSPARENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_CONNECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @sco_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_connect(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sco_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %14)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* @BDADDR_BREDR, align 4
  %23 = call %struct.hci_dev* @hci_get_route(i32* %18, i32* %21, i32 %22)
  store %struct.hci_dev* %23, %struct.hci_dev** %6, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %25 = icmp ne %struct.hci_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @EHOSTUNREACH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %128

29:                                               ; preds = %1
  %30 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %31 = call i32 @hci_dev_lock(%struct.hci_dev* %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %33 = call i64 @lmp_esco_capable(%struct.hci_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @disable_esco, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ESCO_LINK, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %35, %29
  %41 = load i32, i32* @SCO_LINK, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BT_VOICE_TRANSPARENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %51 = call i32 @lmp_transp_capable(%struct.hci_dev* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %55 = call i64 @lmp_esco_capable(%struct.hci_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %122

60:                                               ; preds = %53, %42
  %61 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call %struct.hci_conn* @hci_connect_sco(%struct.hci_dev* %61, i32 %62, i32* %65, i64 %69)
  store %struct.hci_conn* %70, %struct.hci_conn** %5, align 8
  %71 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %72 = call i64 @IS_ERR(%struct.hci_conn* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.hci_conn* %75)
  store i32 %76, i32* %7, align 4
  br label %122

77:                                               ; preds = %60
  %78 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %79 = call %struct.sco_conn* @sco_conn_add(%struct.hci_conn* %78)
  store %struct.sco_conn* %79, %struct.sco_conn** %4, align 8
  %80 = load %struct.sco_conn*, %struct.sco_conn** %4, align 8
  %81 = icmp ne %struct.sco_conn* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %84 = call i32 @hci_conn_drop(%struct.hci_conn* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %122

87:                                               ; preds = %77
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call %struct.TYPE_2__* @sco_pi(%struct.sock* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %92 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %91, i32 0, i32 1
  %93 = call i32 @bacpy(i32* %90, i32* %92)
  %94 = load %struct.sco_conn*, %struct.sco_conn** %4, align 8
  %95 = load %struct.sock*, %struct.sock** %3, align 8
  %96 = call i32 @sco_chan_add(%struct.sco_conn* %94, %struct.sock* %95, i32* null)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %122

100:                                              ; preds = %87
  %101 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %102 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BT_CONNECTED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.sock*, %struct.sock** %3, align 8
  %108 = call i32 @sco_sock_clear_timer(%struct.sock* %107)
  %109 = load i64, i64* @BT_CONNECTED, align 8
  %110 = load %struct.sock*, %struct.sock** %3, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %121

112:                                              ; preds = %100
  %113 = load i64, i64* @BT_CONNECT, align 8
  %114 = load %struct.sock*, %struct.sock** %3, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.sock*, %struct.sock** %3, align 8
  %117 = load %struct.sock*, %struct.sock** %3, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @sco_sock_set_timer(%struct.sock* %116, i32 %119)
  br label %121

121:                                              ; preds = %112, %106
  br label %122

122:                                              ; preds = %121, %99, %82, %74, %57
  %123 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %124 = call i32 @hci_dev_unlock(%struct.hci_dev* %123)
  %125 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %126 = call i32 @hci_dev_put(%struct.hci_dev* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %122, %26
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @BT_DBG(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @sco_pi(%struct.sock*) #1

declare dso_local %struct.hci_dev* @hci_get_route(i32*, i32*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local i32 @lmp_transp_capable(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_connect_sco(%struct.hci_dev*, i32, i32*, i64) #1

declare dso_local i64 @IS_ERR(%struct.hci_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.hci_conn*) #1

declare dso_local %struct.sco_conn* @sco_conn_add(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @sco_chan_add(%struct.sco_conn*, %struct.sock*, i32*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @sco_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
