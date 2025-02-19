; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_active_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_active_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFASTOPENBLACKHOLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_active_disable(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.net* @sock_net(%struct.sock* %4)
  store %struct.net* %5, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @atomic_inc(i32* %8)
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load i32, i32* @LINUX_MIB_TCPFASTOPENBLACKHOLE, align 4
  %16 = call i32 @NET_INC_STATS(%struct.net* %14, i32 %15)
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @NET_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
