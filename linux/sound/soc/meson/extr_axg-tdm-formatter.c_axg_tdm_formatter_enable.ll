; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_tdm_formatter = type { i32, i32, %struct.TYPE_7__*, i32, i32, %struct.axg_tdm_stream*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_8__*, %struct.axg_tdm_stream*)*, i32 (i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.axg_tdm_stream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_tdm_formatter*)* @axg_tdm_formatter_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_formatter_enable(%struct.axg_tdm_formatter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axg_tdm_formatter*, align 8
  %4 = alloca %struct.axg_tdm_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axg_tdm_formatter* %0, %struct.axg_tdm_formatter** %3, align 8
  %7 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %8 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %7, i32 0, i32 5
  %9 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %8, align 8
  store %struct.axg_tdm_stream* %9, %struct.axg_tdm_stream** %4, align 8
  %10 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %11 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %18 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %112

22:                                               ; preds = %1
  %23 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %24 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @reset_control_reset(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %112

31:                                               ; preds = %22
  %32 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %4, align 8
  %33 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @axg_tdm_sclk_invert(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %41 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 180, i32 0
  %47 = call i32 @clk_set_phase(i32 %42, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %112

52:                                               ; preds = %31
  %53 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %54 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (i32, %struct.TYPE_8__*, %struct.axg_tdm_stream*)*, i32 (i32, %struct.TYPE_8__*, %struct.axg_tdm_stream*)** %58, align 8
  %60 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %61 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %64 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %69 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %68, i32 0, i32 5
  %70 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %69, align 8
  %71 = call i32 %59(i32 %62, %struct.TYPE_8__* %67, %struct.axg_tdm_stream* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %112

76:                                               ; preds = %52
  %77 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %78 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %112

85:                                               ; preds = %76
  %86 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %87 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @clk_prepare_enable(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %94 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @clk_disable_unprepare(i32 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %112

98:                                               ; preds = %85
  %99 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %100 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32 (i32)*, i32 (i32)** %104, align 8
  %106 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %107 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 %105(i32 %108)
  %110 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %3, align 8
  %111 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %98, %92, %83, %74, %50, %29, %21
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @reset_control_reset(i32) #1

declare dso_local i32 @axg_tdm_sclk_invert(i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
