; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_leave_memory_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_leave_memory_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@tcp_memory_pressure = common dso_local global i32 0, align 4
@LINUX_MIB_TCPMEMORYPRESSURESCHRONO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_leave_memory_pressure(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i32, i32* @tcp_memory_pressure, align 4
  %5 = call i32 @READ_ONCE(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = call i64 @xchg(i32* @tcp_memory_pressure, i32 0)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @sock_net(%struct.sock* %13)
  %15 = load i32, i32* @LINUX_MIB_TCPMEMORYPRESSURESCHRONO, align 4
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %16, %17
  %19 = call i32 @jiffies_to_msecs(i64 %18)
  %20 = call i32 @NET_ADD_STATS(i32 %14, i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %7, %12, %8
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i32 @NET_ADD_STATS(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
