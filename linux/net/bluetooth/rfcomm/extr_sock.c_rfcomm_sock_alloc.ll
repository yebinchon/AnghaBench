; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.rfcomm_dlc = type { %struct.sock*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rfcomm_dlc* }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@rfcomm_proto = common dso_local global i32 0, align 4
@rfcomm_sk_data_ready = common dso_local global i32 0, align 4
@rfcomm_sk_state_change = common dso_local global i32 0, align 4
@rfcomm_sock_destruct = common dso_local global i32 0, align 4
@RFCOMM_CONN_TIMEOUT = common dso_local global i32 0, align 4
@RFCOMM_MAX_CREDITS = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_MTU = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@rfcomm_sk_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32, i32, i32)* @rfcomm_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @rfcomm_sock_alloc(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rfcomm_dlc*, align 8
  %13 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = load i32, i32* @PF_BLUETOOTH, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.sock* @sk_alloc(%struct.net* %14, i32 %15, i32 %16, i32* @rfcomm_proto, i32 %17)
  store %struct.sock* %18, %struct.sock** %13, align 8
  %19 = load %struct.sock*, %struct.sock** %13, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %83

22:                                               ; preds = %5
  %23 = load %struct.socket*, %struct.socket** %8, align 8
  %24 = load %struct.sock*, %struct.sock** %13, align 8
  %25 = call i32 @sock_init_data(%struct.socket* %23, %struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %13, align 8
  %27 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.rfcomm_dlc* @rfcomm_dlc_alloc(i32 %30)
  store %struct.rfcomm_dlc* %31, %struct.rfcomm_dlc** %12, align 8
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %33 = icmp ne %struct.rfcomm_dlc* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load %struct.sock*, %struct.sock** %13, align 8
  %36 = call i32 @sk_free(%struct.sock* %35)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %83

37:                                               ; preds = %22
  %38 = load i32, i32* @rfcomm_sk_data_ready, align 4
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @rfcomm_sk_state_change, align 4
  %42 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %43 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %45 = load %struct.sock*, %struct.sock** %13, align 8
  %46 = call %struct.TYPE_3__* @rfcomm_pi(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.rfcomm_dlc* %44, %struct.rfcomm_dlc** %47, align 8
  %48 = load %struct.sock*, %struct.sock** %13, align 8
  %49 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %12, align 8
  %50 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %49, i32 0, i32 0
  store %struct.sock* %48, %struct.sock** %50, align 8
  %51 = load i32, i32* @rfcomm_sock_destruct, align 4
  %52 = load %struct.sock*, %struct.sock** %13, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @RFCOMM_CONN_TIMEOUT, align 4
  %55 = load %struct.sock*, %struct.sock** %13, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @RFCOMM_MAX_CREDITS, align 4
  %58 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %59 = mul nsw i32 %57, %58
  %60 = mul nsw i32 %59, 10
  %61 = load %struct.sock*, %struct.sock** %13, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @RFCOMM_MAX_CREDITS, align 4
  %64 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %65 = mul nsw i32 %63, %64
  %66 = mul nsw i32 %65, 10
  %67 = load %struct.sock*, %struct.sock** %13, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sock*, %struct.sock** %13, align 8
  %70 = load i32, i32* @SOCK_ZAPPED, align 4
  %71 = call i32 @sock_reset_flag(%struct.sock* %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sock*, %struct.sock** %13, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @BT_OPEN, align 4
  %76 = load %struct.sock*, %struct.sock** %13, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sock*, %struct.sock** %13, align 8
  %79 = call i32 @bt_sock_link(i32* @rfcomm_sk_list, %struct.sock* %78)
  %80 = load %struct.sock*, %struct.sock** %13, align 8
  %81 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %80)
  %82 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %82, %struct.sock** %6, align 8
  br label %83

83:                                               ; preds = %37, %34, %21
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %84
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local %struct.rfcomm_dlc* @rfcomm_dlc_alloc(i32) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_sock_link(i32*, %struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
