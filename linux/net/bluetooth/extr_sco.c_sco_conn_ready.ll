; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_conn_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_conn_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sco_conn = type { %struct.TYPE_5__*, %struct.sock* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sock = type { i32 (%struct.sock*)*, i8*, i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@BT_CONNECTED = common dso_local global i8* null, align 8
@BTPROTO_SCO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BT_SK_DEFER_SETUP = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sco_conn*)* @sco_conn_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sco_conn_ready(%struct.sco_conn* %0) #0 {
  %2 = alloca %struct.sco_conn*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sco_conn* %0, %struct.sco_conn** %2, align 8
  %5 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %6 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %5, i32 0, i32 1
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %4, align 8
  %8 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sco_conn* %8)
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sco_sock_clear_timer(%struct.sock* %13)
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @bh_lock_sock(%struct.sock* %15)
  %17 = load i8*, i8** @BT_CONNECTED, align 8
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 2
  %22 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %21, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 %22(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @bh_unlock_sock(%struct.sock* %25)
  br label %115

27:                                               ; preds = %1
  %28 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %29 = call i32 @sco_conn_lock(%struct.sco_conn* %28)
  %30 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %31 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %36 = call i32 @sco_conn_unlock(%struct.sco_conn* %35)
  br label %115

37:                                               ; preds = %27
  %38 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %39 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call %struct.sock* @sco_get_sock_listen(i32* %41)
  store %struct.sock* %42, %struct.sock** %3, align 8
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = icmp ne %struct.sock* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %47 = call i32 @sco_conn_unlock(%struct.sco_conn* %46)
  br label %115

48:                                               ; preds = %37
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @bh_lock_sock(%struct.sock* %49)
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i32 @sock_net(%struct.sock* %51)
  %53 = load i32, i32* @BTPROTO_SCO, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call %struct.sock* @sco_sock_alloc(i32 %52, i32* null, i32 %53, i32 %54, i32 0)
  store %struct.sock* %55, %struct.sock** %4, align 8
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = icmp ne %struct.sock* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @bh_unlock_sock(%struct.sock* %59)
  %61 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %62 = call i32 @sco_conn_unlock(%struct.sco_conn* %61)
  br label %115

63:                                               ; preds = %48
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = call i32 @sco_sock_init(%struct.sock* %64, %struct.sock* %65)
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %71 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i32 @bacpy(i32* %69, i32* %73)
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = call %struct.TYPE_4__* @sco_pi(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %79 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @bacpy(i32* %77, i32* %81)
  %83 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %84 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @hci_conn_hold(%struct.TYPE_5__* %85)
  %87 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = load %struct.sock*, %struct.sock** %3, align 8
  %90 = call i32 @__sco_chan_add(%struct.sco_conn* %87, %struct.sock* %88, %struct.sock* %89)
  %91 = load i32, i32* @BT_SK_DEFER_SETUP, align 4
  %92 = load %struct.sock*, %struct.sock** %3, align 8
  %93 = call %struct.TYPE_6__* @bt_sk(%struct.sock* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i64 @test_bit(i32 %91, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %63
  %98 = load i8*, i8** @BT_CONNECT2, align 8
  %99 = load %struct.sock*, %struct.sock** %4, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %105

101:                                              ; preds = %63
  %102 = load i8*, i8** @BT_CONNECTED, align 8
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %107, align 8
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = call i32 %108(%struct.sock* %109)
  %111 = load %struct.sock*, %struct.sock** %3, align 8
  %112 = call i32 @bh_unlock_sock(%struct.sock* %111)
  %113 = load %struct.sco_conn*, %struct.sco_conn** %2, align 8
  %114 = call i32 @sco_conn_unlock(%struct.sco_conn* %113)
  br label %115

115:                                              ; preds = %34, %45, %58, %105, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sco_conn*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sco_conn_lock(%struct.sco_conn*) #1

declare dso_local i32 @sco_conn_unlock(%struct.sco_conn*) #1

declare dso_local %struct.sock* @sco_get_sock_listen(i32*) #1

declare dso_local %struct.sock* @sco_sock_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sco_sock_init(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @hci_conn_hold(%struct.TYPE_5__*) #1

declare dso_local i32 @__sco_chan_add(%struct.sco_conn*, %struct.sock*, %struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @bt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
