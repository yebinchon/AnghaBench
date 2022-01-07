; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_setup_iph.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_setup_iph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cfg_dst_addr = common dso_local global i32 0, align 4
@cfg_src_addr = common dso_local global i32 0, align 4
@IPPROTO_EGP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iphdr*, i64)* @setup_iph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_iph(%struct.iphdr* %0, i64 %1) #0 {
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  store %struct.iphdr* %0, %struct.iphdr** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.sockaddr_in* bitcast (i32* @cfg_dst_addr to %struct.sockaddr_in*), %struct.sockaddr_in** %5, align 8
  store %struct.sockaddr_in* bitcast (i32* @cfg_src_addr to %struct.sockaddr_in*), %struct.sockaddr_in** %6, align 8
  %7 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %8 = call i32 @memset(%struct.iphdr* %7, i32 0, i32 40)
  %9 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %10 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %9, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %12 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 1
  store i32 5, i32* %14, align 4
  %15 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 2
  store i32 2, i32* %16, align 8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @IPPROTO_EGP, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %4, align 8
  %33 = add i64 40, %32
  %34 = call i32 @htons(i64 %33)
  %35 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %38 = bitcast %struct.iphdr* %37 to i8*
  %39 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 1
  %43 = call i32 @get_ip_csum(i8* %38, i32 %42)
  %44 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  ret i32 40
}

declare dso_local i32 @memset(%struct.iphdr*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @get_ip_csum(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
