; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@PCR0 = common dso_local global i32 0, align 4
@FSXM = common dso_local global i32 0, align 4
@FSRM = common dso_local global i32 0, align 4
@CLKXM = common dso_local global i32 0, align 4
@CLKRM = common dso_local global i32 0, align 4
@SPCR2 = common dso_local global i32 0, align 4
@SPCR1 = common dso_local global i32 0, align 4
@XCCR = common dso_local global i32 0, align 4
@XDISABLE = common dso_local global i32 0, align 4
@RCCR = common dso_local global i32 0, align 4
@RDISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*, i32)* @omap_mcbsp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_start(%struct.omap_mcbsp* %0, i32 %1) #0 {
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
  store i32 0, i32* %7, align 4
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %23 = call i32 @omap_mcbsp_st_start(%struct.omap_mcbsp* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %26 = load i32, i32* @PCR0, align 4
  %27 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FSXM, align 4
  %30 = load i32, i32* @FSRM, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CLKXM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CLKRM, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %40 = load i32, i32* @SPCR2, align 4
  %41 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %39, i32 %40)
  %42 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %43 = load i32, i32* @SPCR1, align 4
  %44 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %42, i32 %43)
  %45 = or i32 %41, %44
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38, %24
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %55 = load i32, i32* @SPCR2, align 4
  %56 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %58 = load i32, i32* @SPCR2, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 64
  %61 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %57, i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %53, %50
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %66 = load i32, i32* @SPCR2, align 4
  %67 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %69 = load i32, i32* @SPCR2, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %68, i32 %69, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %77 = load i32, i32* @SPCR1, align 4
  %78 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %80 = load i32, i32* @SPCR1, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %79, i32 %80, i32 %83)
  %85 = call i32 @udelay(i32 500)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %62
  %89 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %90 = load i32, i32* @SPCR2, align 4
  %91 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %93 = load i32, i32* @SPCR2, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, 128
  %96 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %88, %62
  %98 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %99 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %97
  %105 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %106 = load i32, i32* @XCCR, align 4
  %107 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @XDISABLE, align 4
  br label %113

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %119 = load i32, i32* @XCCR, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %118, i32 %119, i32 %120)
  %122 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %123 = load i32, i32* @RCCR, align 4
  %124 = call i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* @RDISABLE, align 4
  br label %130

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %136 = load i32, i32* @RCCR, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %130, %97
  %140 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %141 = call i32 @omap_mcbsp_dump_reg(%struct.omap_mcbsp* %140)
  ret void
}

declare dso_local i32 @omap_mcbsp_st_start(%struct.omap_mcbsp*) #1

declare dso_local i32 @MCBSP_READ_CACHE(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @omap_mcbsp_dump_reg(%struct.omap_mcbsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
