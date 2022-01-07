; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ipv6_rearrange_rthdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ah6.c_ipv6_rearrange_rthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ipv6_rt_hdr = type { i32, i32 }
%struct.rt0_hdr = type { %struct.in6_addr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6hdr*, %struct.ipv6_rt_hdr*)* @ipv6_rearrange_rthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_rearrange_rthdr(%struct.ipv6hdr* %0, %struct.ipv6_rt_hdr* %1) #0 {
  %3 = alloca %struct.ipv6hdr*, align 8
  %4 = alloca %struct.ipv6_rt_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.in6_addr, align 4
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %3, align 8
  store %struct.ipv6_rt_hdr* %1, %struct.ipv6_rt_hdr** %4, align 8
  %9 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %4, align 8
  %23 = bitcast %struct.ipv6_rt_hdr* %22 to %struct.rt0_hdr*
  %24 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %23, i32 0, i32 0
  %25 = load %struct.in6_addr*, %struct.in6_addr** %24, align 8
  store %struct.in6_addr* %25, %struct.in6_addr** %7, align 8
  %26 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %26, i64 %29
  %31 = bitcast %struct.in6_addr* %8 to i8*
  %32 = bitcast %struct.in6_addr* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i64 %37
  store %struct.in6_addr* %38, %struct.in6_addr** %7, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %40 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %39, i64 1
  %41 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memmove(%struct.in6_addr* %40, %struct.in6_addr* %41, i32 %46)
  %48 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %49 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %48, i64 0
  %50 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %51 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %50, i32 0, i32 0
  %52 = bitcast %struct.in6_addr* %49 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %55 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %54, i32 0, i32 0
  %56 = bitcast %struct.in6_addr* %55 to i8*
  %57 = bitcast %struct.in6_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  br label %58

58:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memmove(%struct.in6_addr*, %struct.in6_addr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
