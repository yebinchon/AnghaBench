; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_kctrl_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_kctrl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i64* }
%struct.rsnd_kctrl_cfg = type { i32, i64*, i32, i32, i32 (i32, i32)*, i64, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @rsnd_kctrl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_kctrl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.rsnd_kctrl_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.rsnd_kctrl_cfg* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.rsnd_kctrl_cfg* %10, %struct.rsnd_kctrl_cfg** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %12 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %11, i32 0, i32 6
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %13(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %105, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %108

27:                                               ; preds = %21
  %28 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %27
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %43 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %41, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %54 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  br label %104

68:                                               ; preds = %27
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %79 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %77, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %90 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %99 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %97, i64* %103, align 8
  br label %104

104:                                              ; preds = %68, %32
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %21

108:                                              ; preds = %21
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %113 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %112, i32 0, i32 4
  %114 = load i32 (i32, i32)*, i32 (i32, i32)** %113, align 8
  %115 = icmp ne i32 (i32, i32)* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %118 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %117, i32 0, i32 4
  %119 = load i32 (i32, i32)*, i32 (i32, i32)** %118, align 8
  %120 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %121 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.rsnd_kctrl_cfg*, %struct.rsnd_kctrl_cfg** %6, align 8
  %124 = getelementptr inbounds %struct.rsnd_kctrl_cfg, %struct.rsnd_kctrl_cfg* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %119(i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %116, %111, %108
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.rsnd_kctrl_cfg* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
