; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_sf_markstate.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_sf_markstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32*, %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { i32, i32*, %struct.ip6_sf_list* }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @sf_markstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sf_markstate(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca %struct.ip6_sf_list*, align 8
  %4 = alloca i32, align 4
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %5 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %6 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @MCAST_EXCLUDE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %12 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %11, i32 0, i32 1
  %13 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %12, align 8
  store %struct.ip6_sf_list* %13, %struct.ip6_sf_list** %3, align 8
  br label %14

14:                                               ; preds = %60, %1
  %15 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %16 = icmp ne %struct.ip6_sf_list* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %14
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %19 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @MCAST_EXCLUDE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %28 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MCAST_EXCLUDE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %36 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MCAST_INCLUDE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %34, %25
  %44 = phi i1 [ false, %25 ], [ %42, %34 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %47 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %59

48:                                               ; preds = %17
  %49 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %50 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @MCAST_INCLUDE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %58 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %48, %43
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %62 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %61, i32 0, i32 2
  %63 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %62, align 8
  store %struct.ip6_sf_list* %63, %struct.ip6_sf_list** %3, align 8
  br label %14

64:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
