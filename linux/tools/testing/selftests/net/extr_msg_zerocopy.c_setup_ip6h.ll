; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_setup_ip6h.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_setup_ip6h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32 }

@cfg_dst_addr = common dso_local global i32 0, align 4
@cfg_src_addr = common dso_local global i32 0, align 4
@IPPROTO_EGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6hdr*, i32)* @setup_ip6h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ip6h(%struct.ipv6hdr* %0, i32 %1) #0 {
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sockaddr_in6* bitcast (i32* @cfg_dst_addr to %struct.sockaddr_in6*), %struct.sockaddr_in6** %5, align 8
  store %struct.sockaddr_in6* bitcast (i32* @cfg_src_addr to %struct.sockaddr_in6*), %struct.sockaddr_in6** %6, align 8
  %7 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %8 = call i32 @memset(%struct.ipv6hdr* %7, i32 0, i32 24)
  %9 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %10 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %9, i32 0, i32 0
  store i32 6, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @htons(i32 %11)
  %13 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %14 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @IPPROTO_EGP, align 4
  %16 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %17 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 1
  store i32 2, i32* %19, align 4
  %20 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %24 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %29 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  ret i32 24
}

declare dso_local i32 @memset(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
