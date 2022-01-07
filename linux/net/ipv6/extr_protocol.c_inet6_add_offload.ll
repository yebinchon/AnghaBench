; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_protocol.c_inet6_add_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_protocol.c_inet6_add_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_offload = type { i32 }

@inet6_offloads = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_add_offload(%struct.net_offload* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_offload*, align 8
  %4 = alloca i8, align 1
  store %struct.net_offload* %0, %struct.net_offload** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i32*, i32** @inet6_offloads, align 8
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = bitcast i32* %8 to %struct.net_offload**
  %10 = load %struct.net_offload*, %struct.net_offload** %3, align 8
  %11 = call i32 @cmpxchg(%struct.net_offload** %9, i32* null, %struct.net_offload* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 -1
  ret i32 %15
}

declare dso_local i32 @cmpxchg(%struct.net_offload**, i32*, %struct.net_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
