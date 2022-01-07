; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_update_wm8776_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_update_wm8776_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32*, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@WM8776_DACLVOL = common dso_local global i64 0, align 8
@WM8776_DACRVOL = common dso_local global i64 0, align 8
@WM8776_DACMASTER = common dso_local global i64 0, align 8
@WM8776_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @update_wm8776_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wm8776_volume(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  %4 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %6 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %5, i32 0, i32 1
  %7 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  store %struct.xonar_wm87x6* %7, %struct.xonar_wm87x6** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %14 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %1
  %20 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %21 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %26 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @WM8776_DACLVOL, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %24, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %19
  %33 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %34 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %39 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @WM8776_DACRVOL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %37, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %32, %19
  %46 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %47 = load i64, i64* @WM8776_DACMASTER, align 8
  %48 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %49 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WM8776_UPDATE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @wm8776_write(%struct.oxygen* %46, i64 %47, i32 %54)
  %56 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %57 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %62 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @WM8776_DACLVOL, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %67 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %72 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @WM8776_DACRVOL, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %45, %32
  br label %145

77:                                               ; preds = %1
  %78 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %79 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %84 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @WM8776_DACLVOL, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %82, %88
  %90 = zext i1 %89 to i32
  %91 = shl i32 %90, 0
  store i32 %91, i32* %4, align 4
  %92 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %93 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %98 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @WM8776_DACLVOL, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %96, %102
  %104 = zext i1 %103 to i32
  %105 = shl i32 %104, 1
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %77
  %112 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %113 = load i64, i64* @WM8776_DACLVOL, align 8
  %114 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %115 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, 2
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %125

123:                                              ; preds = %111
  %124 = load i32, i32* @WM8776_UPDATE, align 4
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i32 [ 0, %122 ], [ %124, %123 ]
  %127 = or i32 %118, %126
  %128 = call i32 @wm8776_write(%struct.oxygen* %112, i64 %113, i32 %127)
  br label %129

129:                                              ; preds = %125, %77
  %130 = load i32, i32* %4, align 4
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %135 = load i64, i64* @WM8776_DACRVOL, align 8
  %136 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %137 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @WM8776_UPDATE, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @wm8776_write(%struct.oxygen* %134, i64 %135, i32 %142)
  br label %144

144:                                              ; preds = %133, %129
  br label %145

145:                                              ; preds = %144, %76
  ret void
}

declare dso_local i32 @wm8776_write(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
