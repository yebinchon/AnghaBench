; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.j1939_sock = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.j1939_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.j1939_priv = type { i32 }

@J1939_SOCK_BOUND = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @j1939_sk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.j1939_sock*, align 8
  %6 = alloca %struct.j1939_priv*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.j1939_sock* @j1939_sk(%struct.sock* %14)
  store %struct.j1939_sock* %15, %struct.j1939_sock** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @lock_sock(%struct.sock* %16)
  %18 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %19 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @J1939_SOCK_BOUND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %13
  %25 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %26 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %25, i32 0, i32 5
  %27 = load %struct.j1939_priv*, %struct.j1939_priv** %26, align 8
  store %struct.j1939_priv* %27, %struct.j1939_priv** %6, align 8
  %28 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %29 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %32 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %31, i32 0, i32 3
  %33 = call i32 @j1939_sock_pending_get(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @wait_event_interruptible(i32 %30, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %24
  %40 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @j1939_cancel_active_session(%struct.j1939_priv* %40, %struct.sock* %41)
  %43 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %44 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %45 = load i32, i32* @ESHUTDOWN, align 4
  %46 = call i32 @j1939_sk_queue_drop_all(%struct.j1939_priv* %43, %struct.j1939_sock* %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %24
  %48 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %49 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %50 = call i32 @j1939_jsk_del(%struct.j1939_priv* %48, %struct.j1939_sock* %49)
  %51 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %52 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %53 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %57 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @j1939_local_ecu_put(%struct.j1939_priv* %51, i32 %55, i32 %59)
  %61 = load %struct.j1939_priv*, %struct.j1939_priv** %6, align 8
  %62 = call i32 @j1939_netdev_stop(%struct.j1939_priv* %61)
  br label %63

63:                                               ; preds = %47, %13
  %64 = load %struct.j1939_sock*, %struct.j1939_sock** %5, align 8
  %65 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @kfree(i32 %66)
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = call i32 @sock_orphan(%struct.sock* %68)
  %70 = load %struct.socket*, %struct.socket** %3, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %71, align 8
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = call i32 @release_sock(%struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = call i32 @sock_put(%struct.sock* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %63, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.j1939_sock* @j1939_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @j1939_sock_pending_get(i32*) #1

declare dso_local i32 @j1939_cancel_active_session(%struct.j1939_priv*, %struct.sock*) #1

declare dso_local i32 @j1939_sk_queue_drop_all(%struct.j1939_priv*, %struct.j1939_sock*, i32) #1

declare dso_local i32 @j1939_jsk_del(%struct.j1939_priv*, %struct.j1939_sock*) #1

declare dso_local i32 @j1939_local_ecu_put(%struct.j1939_priv*, i32, i32) #1

declare dso_local i32 @j1939_netdev_stop(%struct.j1939_priv*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
