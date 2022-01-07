; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_build_udp_v4_csum.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_build_udp_v4_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32 }
%struct.udphdr = type { i64 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iphdr*, %struct.udphdr*, i32)* @build_udp_v4_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_udp_v4_csum(%struct.iphdr* %0, %struct.udphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca %struct.udphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %4, align 8
  store %struct.udphdr* %1, %struct.udphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %8, align 4
  %9 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %10 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @add_csum_hword(i8* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @IPPROTO_UDP, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %7, align 8
  %18 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %19 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %24 = bitcast %struct.udphdr* %23 to i8*
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @build_ip_csum(i8* %24, i32 %25, i64 %26)
  ret i32 %27
}

declare dso_local i64 @add_csum_hword(i8*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @build_ip_csum(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
