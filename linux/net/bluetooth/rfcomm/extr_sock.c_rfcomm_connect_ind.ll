; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_connect_ind.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_connect_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_dlc = type { i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }
%struct.TYPE_3__ = type { %struct.rfcomm_dlc*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"session %p channel %d\00", align 1
@BT_LISTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"backlog full %d\00", align 1
@BTPROTO_RFCOMM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i32 0, align 4
@BT_SK_DEFER_SETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_connect_ind(%struct.rfcomm_session* %0, i32 %1, %struct.rfcomm_dlc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfcomm_dlc**, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rfcomm_dlc** %2, %struct.rfcomm_dlc*** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %14 = ptrtoint %struct.rfcomm_session* %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.rfcomm_session*, %struct.rfcomm_session** %5, align 8
  %18 = call i32 @rfcomm_session_getaddr(%struct.rfcomm_session* %17, i32* %10, i32* %11)
  %19 = load i32, i32* @BT_LISTEN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.sock* @rfcomm_get_sock_by_channel(i32 %19, i32 %20, i32* %10)
  store %struct.sock* %21, %struct.sock** %9, align 8
  %22 = load %struct.sock*, %struct.sock** %9, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call i32 @bh_lock_sock(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %9, align 8
  %29 = call i64 @sk_acceptq_is_full(%struct.sock* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %75

36:                                               ; preds = %25
  %37 = load %struct.sock*, %struct.sock** %9, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = load i32, i32* @BTPROTO_RFCOMM, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.sock* @rfcomm_sock_alloc(i32 %38, i32* null, i32 %39, i32 %40, i32 0)
  store %struct.sock* %41, %struct.sock** %8, align 8
  %42 = load %struct.sock*, %struct.sock** %8, align 8
  %43 = icmp ne %struct.sock* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = load i32, i32* @BTPROTO_RFCOMM, align 4
  %48 = call i32 @bt_sock_reclassify_lock(%struct.sock* %46, i32 %47)
  %49 = load %struct.sock*, %struct.sock** %8, align 8
  %50 = load %struct.sock*, %struct.sock** %9, align 8
  %51 = call i32 @rfcomm_sock_init(%struct.sock* %49, %struct.sock* %50)
  %52 = load %struct.sock*, %struct.sock** %8, align 8
  %53 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = call i32 @bacpy(i32* %54, i32* %10)
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = call i32 @bacpy(i32* %58, i32* %11)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.sock*, %struct.sock** %8, align 8
  %62 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @BT_CONFIG, align 4
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = load %struct.sock*, %struct.sock** %8, align 8
  %69 = call i32 @bt_accept_enqueue(%struct.sock* %67, %struct.sock* %68, i32 1)
  %70 = load %struct.sock*, %struct.sock** %8, align 8
  %71 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %70)
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %72, align 8
  %74 = load %struct.rfcomm_dlc**, %struct.rfcomm_dlc*** %7, align 8
  store %struct.rfcomm_dlc* %73, %struct.rfcomm_dlc** %74, align 8
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %45, %44, %31
  %76 = load %struct.sock*, %struct.sock** %9, align 8
  %77 = call i32 @bh_unlock_sock(%struct.sock* %76)
  %78 = load i32, i32* @BT_SK_DEFER_SETUP, align 4
  %79 = load %struct.sock*, %struct.sock** %9, align 8
  %80 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i64 @test_bit(i32 %78, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %75
  %85 = load %struct.sock*, %struct.sock** %9, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %86, align 8
  %88 = load %struct.sock*, %struct.sock** %9, align 8
  %89 = call i32 %87(%struct.sock* %88)
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %24
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @rfcomm_session_getaddr(%struct.rfcomm_session*, i32*, i32*) #1

declare dso_local %struct.sock* @rfcomm_get_sock_by_channel(i32, i32, i32*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.sock* @rfcomm_sock_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @bt_sock_reclassify_lock(%struct.sock*, i32) #1

declare dso_local i32 @rfcomm_sock_init(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @bt_accept_enqueue(%struct.sock*, %struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
