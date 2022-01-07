; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_fl6_update_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_fl6_update_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowi6 = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ipv6_txoptions = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipv6_sr_hdr = type { i64, %struct.in6_addr* }
%struct.rt0_hdr = type { %struct.in6_addr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addr* @fl6_update_dst(%struct.flowi6* %0, %struct.ipv6_txoptions* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.flowi6*, align 8
  %6 = alloca %struct.ipv6_txoptions*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ipv6_sr_hdr*, align 8
  store %struct.flowi6* %0, %struct.flowi6** %5, align 8
  store %struct.ipv6_txoptions* %1, %struct.ipv6_txoptions** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %9 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %6, align 8
  %10 = icmp ne %struct.ipv6_txoptions* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %6, align 8
  %13 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %3
  store %struct.in6_addr* null, %struct.in6_addr** %4, align 8
  br label %58

17:                                               ; preds = %11
  %18 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %19 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %20 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %19, i32 0, i32 0
  %21 = bitcast %struct.in6_addr* %18 to i8*
  %22 = bitcast %struct.in6_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %6, align 8
  %24 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %55 [
    i32 130, label %28
    i32 131, label %28
    i32 129, label %28
    i32 128, label %39
  ]

28:                                               ; preds = %17, %17, %17
  %29 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %30 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %29, i32 0, i32 0
  %31 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %6, align 8
  %32 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = bitcast %struct.TYPE_2__* %33 to %struct.rt0_hdr*
  %35 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %34, i32 0, i32 0
  %36 = load %struct.in6_addr*, %struct.in6_addr** %35, align 8
  %37 = bitcast %struct.in6_addr* %30 to i8*
  %38 = bitcast %struct.in6_addr* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %56

39:                                               ; preds = %17
  %40 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %6, align 8
  %41 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = bitcast %struct.TYPE_2__* %42 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %43, %struct.ipv6_sr_hdr** %8, align 8
  %44 = load %struct.flowi6*, %struct.flowi6** %5, align 8
  %45 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %44, i32 0, i32 0
  %46 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %46, i32 0, i32 1
  %48 = load %struct.in6_addr*, %struct.in6_addr** %47, align 8
  %49 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %48, i64 %51
  %53 = bitcast %struct.in6_addr* %45 to i8*
  %54 = bitcast %struct.in6_addr* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  br label %56

55:                                               ; preds = %17
  store %struct.in6_addr* null, %struct.in6_addr** %4, align 8
  br label %58

56:                                               ; preds = %39, %28
  %57 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  store %struct.in6_addr* %57, %struct.in6_addr** %4, align 8
  br label %58

58:                                               ; preds = %56, %55, %16
  %59 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  ret %struct.in6_addr* %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
