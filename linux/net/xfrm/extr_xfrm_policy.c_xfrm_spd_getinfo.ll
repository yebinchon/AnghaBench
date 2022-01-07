; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_spd_getinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_spd_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.xfrmk_spdinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@XFRM_POLICY_IN = common dso_local global i64 0, align 8
@XFRM_POLICY_OUT = common dso_local global i64 0, align 8
@XFRM_POLICY_FWD = common dso_local global i64 0, align 8
@XFRM_POLICY_MAX = common dso_local global i64 0, align 8
@xfrm_policy_hashmax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_spd_getinfo(%struct.net* %0, %struct.xfrmk_spdinfo* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xfrmk_spdinfo*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.xfrmk_spdinfo* %1, %struct.xfrmk_spdinfo** %4, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @XFRM_POLICY_IN, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %13 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %22 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.net*, %struct.net** %3, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @XFRM_POLICY_FWD, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %31 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.net*, %struct.net** %3, align 8
  %33 = getelementptr inbounds %struct.net, %struct.net* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @XFRM_POLICY_IN, align 8
  %37 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %38 = add i64 %36, %37
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %42 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.net*, %struct.net** %3, align 8
  %44 = getelementptr inbounds %struct.net, %struct.net* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @XFRM_POLICY_OUT, align 8
  %48 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %53 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.net*, %struct.net** %3, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @XFRM_POLICY_FWD, align 8
  %59 = load i64, i64* @XFRM_POLICY_MAX, align 8
  %60 = add i64 %58, %59
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %64 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.net*, %struct.net** %3, align 8
  %66 = getelementptr inbounds %struct.net, %struct.net* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %70 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @xfrm_policy_hashmax, align 4
  %72 = load %struct.xfrmk_spdinfo*, %struct.xfrmk_spdinfo** %4, align 8
  %73 = getelementptr inbounds %struct.xfrmk_spdinfo, %struct.xfrmk_spdinfo* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
