; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@sco_proto = common dso_local global i32 0, align 4
@sco_sock_destruct = common dso_local global i32 0, align 4
@SCO_CONN_TIMEOUT = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@BT_VOICE_CVSD_16BIT = common dso_local global i32 0, align 4
@sco_sock_timeout = common dso_local global i32 0, align 4
@sco_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32, i32, i32)* @sco_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @sco_sock_alloc(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.net*, %struct.net** %7, align 8
  %14 = load i32, i32* @PF_BLUETOOTH, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call %struct.sock* @sk_alloc(%struct.net* %13, i32 %14, i32 %15, i32* @sco_proto, i32 %16)
  store %struct.sock* %17, %struct.sock** %12, align 8
  %18 = load %struct.sock*, %struct.sock** %12, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %55

21:                                               ; preds = %5
  %22 = load %struct.socket*, %struct.socket** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %12, align 8
  %24 = call i32 @sock_init_data(%struct.socket* %22, %struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %12, align 8
  %26 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load i32, i32* @sco_sock_destruct, align 4
  %30 = load %struct.sock*, %struct.sock** %12, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @SCO_CONN_TIMEOUT, align 4
  %33 = load %struct.sock*, %struct.sock** %12, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sock*, %struct.sock** %12, align 8
  %36 = load i32, i32* @SOCK_ZAPPED, align 4
  %37 = call i32 @sock_reset_flag(%struct.sock* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.sock*, %struct.sock** %12, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @BT_OPEN, align 4
  %42 = load %struct.sock*, %struct.sock** %12, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @BT_VOICE_CVSD_16BIT, align 4
  %45 = load %struct.sock*, %struct.sock** %12, align 8
  %46 = call %struct.TYPE_3__* @sco_pi(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %12, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i32, i32* @sco_sock_timeout, align 4
  %51 = call i32 @timer_setup(i32* %49, i32 %50, i32 0)
  %52 = load %struct.sock*, %struct.sock** %12, align 8
  %53 = call i32 @bt_sock_link(i32* @sco_sk_list, %struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %54, %struct.sock** %6, align 8
  br label %55

55:                                               ; preds = %21, %20
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %56
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_3__* @sco_pi(%struct.sock*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @bt_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
