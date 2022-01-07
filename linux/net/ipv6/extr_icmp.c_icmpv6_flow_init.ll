; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_flow_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_flow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi6 = type { i32, i64, i32, i32, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icmpv6_flow_init(%struct.sock* %0, %struct.flowi6* %1, i32 %2, %struct.in6_addr* %3, %struct.in6_addr* %4, i32 %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.flowi6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.flowi6* %1, %struct.flowi6** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.in6_addr* %3, %struct.in6_addr** %10, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %14 = call i32 @memset(%struct.flowi6* %13, i32 0, i32 32)
  %15 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %16 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %15, i32 0, i32 5
  %17 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %18 = bitcast %struct.in6_addr* %16 to i8*
  %19 = bitcast %struct.in6_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %21 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %20, i32 0, i32 4
  %22 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %23 = bitcast %struct.in6_addr* %21 to i8*
  %24 = bitcast %struct.in6_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %26 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %27 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %32 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %35 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = load %struct.flowi6*, %struct.flowi6** %8, align 8
  %38 = call i32 @flowi6_to_flowi(%struct.flowi6* %37)
  %39 = call i32 @security_sk_classify_flow(%struct.sock* %36, i32 %38)
  ret void
}

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @security_sk_classify_flow(%struct.sock*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
