; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_add1_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_add1_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { i32*, %struct.ip6_sf_list*, %struct.in6_addr }
%struct.in6_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*, i32, %struct.in6_addr*)* @ip6_mc_add1_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_add1_src(%struct.ifmcaddr6* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ip6_sf_list*, align 8
  %9 = alloca %struct.ip6_sf_list*, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %9, align 8
  %10 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %11 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %10, i32 0, i32 0
  %12 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %11, align 8
  store %struct.ip6_sf_list* %12, %struct.ip6_sf_list** %8, align 8
  br label %13

13:                                               ; preds = %25, %3
  %14 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %15 = icmp ne %struct.ip6_sf_list* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %18 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %17, i32 0, i32 2
  %19 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %20 = call i64 @ipv6_addr_equal(%struct.in6_addr* %18, %struct.in6_addr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  store %struct.ip6_sf_list* %24, %struct.ip6_sf_list** %9, align 8
  br label %25

25:                                               ; preds = %23
  %26 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %27 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %26, i32 0, i32 1
  %28 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %27, align 8
  store %struct.ip6_sf_list* %28, %struct.ip6_sf_list** %8, align 8
  br label %13

29:                                               ; preds = %22, %13
  %30 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %31 = icmp ne %struct.ip6_sf_list* %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.ip6_sf_list* @kzalloc(i32 24, i32 %33)
  store %struct.ip6_sf_list* %34, %struct.ip6_sf_list** %8, align 8
  %35 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %36 = icmp ne %struct.ip6_sf_list* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %66

40:                                               ; preds = %32
  %41 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %42 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %41, i32 0, i32 2
  %43 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %44 = bitcast %struct.in6_addr* %42 to i8*
  %45 = bitcast %struct.in6_addr* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %9, align 8
  %47 = icmp ne %struct.ip6_sf_list* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %50 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %9, align 8
  %51 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %50, i32 0, i32 1
  store %struct.ip6_sf_list* %49, %struct.ip6_sf_list** %51, align 8
  br label %56

52:                                               ; preds = %40
  %53 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %54 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %55 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %54, i32 0, i32 0
  store %struct.ip6_sf_list* %53, %struct.ip6_sf_list** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %59 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %37
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local %struct.ip6_sf_list* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
