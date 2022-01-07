; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_enable_audsys.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_enable_audsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { i32* }

@MT2701_INFRA_SYS_AUDIO = common dso_local global i64 0, align 8
@MT2701_TOP_AUD_A1SYS = common dso_local global i64 0, align 8
@MT2701_TOP_AUD_A2SYS = common dso_local global i64 0, align 8
@MT2701_AUDSYS_AFE = common dso_local global i64 0, align 8
@MT2701_AUDSYS_A1SYS = common dso_local global i64 0, align 8
@MT2701_AUDSYS_A2SYS = common dso_local global i64 0, align 8
@MT2701_AUDSYS_AFE_CONN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_base_afe*)* @mt2701_afe_enable_audsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2701_afe_enable_audsys(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mt2701_afe_private*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %6 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %6, i32 0, i32 0
  %8 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %7, align 8
  store %struct.mt2701_afe_private* %8, %struct.mt2701_afe_private** %4, align 8
  %9 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %10 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @MT2701_INFRA_SYS_AUDIO, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %136

20:                                               ; preds = %1
  %21 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %22 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @MT2701_TOP_AUD_A1SYS, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %127

31:                                               ; preds = %20
  %32 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %33 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @MT2701_TOP_AUD_A2SYS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_prepare_enable(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %119

42:                                               ; preds = %31
  %43 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %44 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @MT2701_AUDSYS_AFE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %111

53:                                               ; preds = %42
  %54 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %55 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @MT2701_AUDSYS_A1SYS, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_prepare_enable(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %103

64:                                               ; preds = %53
  %65 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %66 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @MT2701_AUDSYS_A2SYS, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_prepare_enable(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %95

75:                                               ; preds = %64
  %76 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %77 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @MT2701_AUDSYS_AFE_CONN, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clk_prepare_enable(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %87

86:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %136

87:                                               ; preds = %85
  %88 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %89 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @MT2701_AUDSYS_A2SYS, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @clk_disable_unprepare(i32 %93)
  br label %95

95:                                               ; preds = %87, %74
  %96 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %97 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @MT2701_AUDSYS_A1SYS, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @clk_disable_unprepare(i32 %101)
  br label %103

103:                                              ; preds = %95, %63
  %104 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %105 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @MT2701_AUDSYS_AFE, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clk_disable_unprepare(i32 %109)
  br label %111

111:                                              ; preds = %103, %52
  %112 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %113 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @MT2701_TOP_AUD_A2SYS, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @clk_disable_unprepare(i32 %117)
  br label %119

119:                                              ; preds = %111, %41
  %120 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %121 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @MT2701_TOP_AUD_A1SYS, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @clk_disable_unprepare(i32 %125)
  br label %127

127:                                              ; preds = %119, %30
  %128 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %129 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @MT2701_INFRA_SYS_AUDIO, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @clk_disable_unprepare(i32 %133)
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %127, %86, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
