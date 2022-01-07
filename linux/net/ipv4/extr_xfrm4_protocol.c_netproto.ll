; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_protocol.c_netproto.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_protocol.c_netproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_protocol = type { i32 }

@esp4_protocol = common dso_local global %struct.net_protocol zeroinitializer, align 4
@ah4_protocol = common dso_local global %struct.net_protocol zeroinitializer, align 4
@ipcomp4_protocol = common dso_local global %struct.net_protocol zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_protocol* (i8)* @netproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_protocol* @netproto(i8 zeroext %0) #0 {
  %2 = alloca %struct.net_protocol*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %9 [
    i32 128, label %6
    i32 130, label %7
    i32 129, label %8
  ]

6:                                                ; preds = %1
  store %struct.net_protocol* @esp4_protocol, %struct.net_protocol** %2, align 8
  br label %10

7:                                                ; preds = %1
  store %struct.net_protocol* @ah4_protocol, %struct.net_protocol** %2, align 8
  br label %10

8:                                                ; preds = %1
  store %struct.net_protocol* @ipcomp4_protocol, %struct.net_protocol** %2, align 8
  br label %10

9:                                                ; preds = %1
  store %struct.net_protocol* null, %struct.net_protocol** %2, align 8
  br label %10

10:                                               ; preds = %9, %8, %7, %6
  %11 = load %struct.net_protocol*, %struct.net_protocol** %2, align 8
  ret %struct.net_protocol* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
