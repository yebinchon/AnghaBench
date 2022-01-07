; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_jsk_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_jsk_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }
%struct.j1939_sock = type { i32, i32*, i32 }

@J1939_SOCK_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_priv*, %struct.j1939_sock*)* @j1939_jsk_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_jsk_del(%struct.j1939_priv* %0, %struct.j1939_sock* %1) #0 {
  %3 = alloca %struct.j1939_priv*, align 8
  %4 = alloca %struct.j1939_sock*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %3, align 8
  store %struct.j1939_sock* %1, %struct.j1939_sock** %4, align 8
  %5 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %6 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %9 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %8, i32 0, i32 2
  %10 = call i32 @list_del_init(i32* %9)
  %11 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %12 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %11, i32 0, i32 0
  %13 = call i32 @spin_unlock_bh(i32* %12)
  %14 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %15 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %17 = call i32 @j1939_priv_put(%struct.j1939_priv* %16)
  %18 = load i32, i32* @J1939_SOCK_BOUND, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %21 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @j1939_priv_put(%struct.j1939_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
