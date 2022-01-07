; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_get_by_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_get_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i32 }
%struct.j1939_priv = type { i32 }
%struct.j1939_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.j1939_session* (%struct.j1939_priv*, %struct.j1939_addr*, i32, i32)* @j1939_session_get_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.j1939_session* @j1939_session_get_by_addr(%struct.j1939_priv* %0, %struct.j1939_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.j1939_priv*, align 8
  %6 = alloca %struct.j1939_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.j1939_session*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %5, align 8
  store %struct.j1939_addr* %1, %struct.j1939_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %11 = call i32 @j1939_session_list_lock(%struct.j1939_priv* %10)
  %12 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %13 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %14 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %13, i32 0, i32 0
  %15 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.j1939_session* @j1939_session_get_by_addr_locked(%struct.j1939_priv* %12, i32* %14, %struct.j1939_addr* %15, i32 %16, i32 %17)
  store %struct.j1939_session* %18, %struct.j1939_session** %9, align 8
  %19 = load %struct.j1939_priv*, %struct.j1939_priv** %5, align 8
  %20 = call i32 @j1939_session_list_unlock(%struct.j1939_priv* %19)
  %21 = load %struct.j1939_session*, %struct.j1939_session** %9, align 8
  ret %struct.j1939_session* %21
}

declare dso_local i32 @j1939_session_list_lock(%struct.j1939_priv*) #1

declare dso_local %struct.j1939_session* @j1939_session_get_by_addr_locked(%struct.j1939_priv*, i32*, %struct.j1939_addr*, i32, i32) #1

declare dso_local i32 @j1939_session_list_unlock(%struct.j1939_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
