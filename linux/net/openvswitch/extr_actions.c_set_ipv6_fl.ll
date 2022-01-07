; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_ipv6_fl.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_set_ipv6_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6hdr*, i32, i32)* @set_ipv6_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ipv6_fl(%struct.ipv6hdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %8 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 16
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 16
  %16 = call i32 @OVS_SET_MASKED(i32 %11, i32 %13, i32 %15)
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = call i32 @OVS_SET_MASKED(i32 %21, i32 %23, i32 %25)
  %27 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %28 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @OVS_SET_MASKED(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @OVS_SET_MASKED(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
