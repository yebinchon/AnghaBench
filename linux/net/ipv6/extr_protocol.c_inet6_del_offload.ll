; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_protocol.c_inet6_del_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_protocol.c_inet6_del_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_offload = type { i32 }

@inet6_offloads = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_del_offload(%struct.net_offload* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_offload*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.net_offload* %0, %struct.net_offload** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32*, i32** @inet6_offloads, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = bitcast i32* %9 to %struct.net_offload**
  %11 = load %struct.net_offload*, %struct.net_offload** %3, align 8
  %12 = call %struct.net_offload* @cmpxchg(%struct.net_offload** %10, %struct.net_offload* %11, i32* null)
  %13 = load %struct.net_offload*, %struct.net_offload** %3, align 8
  %14 = icmp eq %struct.net_offload* %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 -1
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @synchronize_net()
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local %struct.net_offload* @cmpxchg(%struct.net_offload**, %struct.net_offload*, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
