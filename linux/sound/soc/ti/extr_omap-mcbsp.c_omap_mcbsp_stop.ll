; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@XCCR = common dso_local global i32 0, align 4
@XDISABLE = common dso_local global i32 0, align 4
@SPCR2 = common dso_local global i32 0, align 4
@RCCR = common dso_local global i32 0, align 4
@RDISABLE = common dso_local global i32 0, align 4
@SPCR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*, i32)* @omap_mcbsp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_stop(%struct.omap_mcbsp* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %20 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %27 = load i32, i32* @XCCR, align 4
  %28 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @XDISABLE, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %39 = load i32, i32* @XCCR, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %2
  %43 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %44 = load i32, i32* @SPCR2, align 4
  %45 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %47 = load i32, i32* @SPCR2, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %5, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %46, i32 %47, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %56 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %42
  %62 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %63 = load i32, i32* @RCCR, align 4
  %64 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @RDISABLE, align 4
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %75 = load i32, i32* @RCCR, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %42
  %79 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %80 = load i32, i32* @SPCR1, align 4
  %81 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %83 = load i32, i32* @SPCR1, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %82, i32 %83, i32 %87)
  %89 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %90 = load i32, i32* @SPCR2, align 4
  %91 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %89, i32 %90)
  %92 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %93 = load i32, i32* @SPCR1, align 4
  %94 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %92, i32 %93)
  %95 = or i32 %91, %94
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %78
  %103 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %104 = load i32, i32* @SPCR2, align 4
  %105 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %107 = load i32, i32* @SPCR2, align 4
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, -65
  %110 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %106, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %102, %78
  %112 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %113 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %118 = call i32 @omap_mcbsp_st_stop(%struct.omap_mcbsp* %117)
  br label %119

119:                                              ; preds = %116, %111
  ret void
}

declare dso_local i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @omap_mcbsp_st_stop(%struct.omap_mcbsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
