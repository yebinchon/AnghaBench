; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_udp6_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_udp6_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hdr = type { i32 }
%struct.udphdr = type { i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@UDP_HLEN = common dso_local global i32 0, align 4
@udp_payload = common dso_local global i64 0, align 8
@payload_len = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_hdr*, %struct.udphdr*)* @udp6_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_checksum(%struct.ip6_hdr* %0, %struct.udphdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6_hdr*, align 8
  %5 = alloca %struct.udphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ip6_hdr* %0, %struct.ip6_hdr** %4, align 8
  store %struct.udphdr* %1, %struct.udphdr** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ip6_hdr*, %struct.ip6_hdr** %4, align 8
  %9 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %8, i32 0, i32 0
  %10 = load i32, i32* @IPPROTO_UDP, align 4
  %11 = call i32 @raw_checksum(i32* %9, i32 8, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %13 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @raw_checksum(i32* %13, i32 4, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %17 = bitcast %struct.udphdr* %16 to i32*
  %18 = load i32, i32* @UDP_HLEN, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @raw_checksum(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @udp_payload, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* @payload_len, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @raw_checksum(i32* %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 65535, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @htons(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @CSUM_MANGLED_0, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @raw_checksum(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
