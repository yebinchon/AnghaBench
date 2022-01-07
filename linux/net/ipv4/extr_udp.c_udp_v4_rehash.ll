; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_v4_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_v4_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_v4_rehash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @sock_net(%struct.sock* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ipv4_portaddr_hash(i32 %5, i32 %9, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @udp_lib_rehash(%struct.sock* %15, i32 %16)
  ret void
}

declare dso_local i32 @ipv4_portaddr_hash(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @udp_lib_rehash(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
