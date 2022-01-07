; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_spdif_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_spdif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@VORTEX_SPDIF_FLAGS = common dso_local global i64 0, align 8
@VORTEX_SPDIF_CFG1 = common dso_local global i64 0, align 8
@VORTEX_CODEC_EN = common dso_local global i64 0, align 8
@EN_SPDIF = common dso_local global i32 0, align 4
@VORTEX_SPDIF_CFG0 = common dso_local global i64 0, align 8
@VORTEX_SPDIF_SMPRATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @vortex_spdif_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_spdif_init(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @VORTEX_SPDIF_FLAGS, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @VORTEX_SPDIF_FLAGS, align 8
  %21 = call i32 @hwread(i32 %19, i64 %20)
  %22 = and i32 %21, -786435
  %23 = call i32 @hwwrite(i32 %15, i64 %16, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %37, %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 11
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @VORTEX_SPDIF_CFG1, align 8
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @hwwrite(i32 %30, i64 %35, i32 0)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @VORTEX_CODEC_EN, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @VORTEX_CODEC_EN, align 8
  %49 = call i32 @hwread(i32 %47, i64 %48)
  %50 = load i32, i32* @EN_SPDIF, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @hwwrite(i32 %43, i64 %44, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 1572864000, %59
  %61 = add nsw i32 %60, 1
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 2048
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 131071
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %72

71:                                               ; preds = %65
  store i32 131071, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %68
  br label %74

73:                                               ; preds = %58
  store i32 2048, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @vortex_src_setupchannel(%struct.TYPE_4__* %75, i32 %76, i32 %77, i32 0, i32 1, i32 %78, i32 1, i32 0, i32 %79, i32 1)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @vortex_src_setupchannel(%struct.TYPE_4__* %81, i32 %82, i32 %83, i32 0, i32 1, i32 %84, i32 1, i32 0, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %74, %55, %40
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, 140
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  switch i32 %91, label %146 [
    i32 32000, label %92
    i32 44100, label %107
    i32 48000, label %120
  ]

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, -2
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, -3
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, -201326593
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, 50331648
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, -193
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, -3
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %146

107:                                              ; preds = %87
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, -2
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, -3
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, -251658241
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, 50331648
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, -193
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, -4
  store i32 %119, i32* %5, align 4
  br label %146

120:                                              ; preds = %87
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, -2
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, -3
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, -218103809
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, 33554432
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, -193
  store i32 %133, i32* %8, align 4
  br label %141

134:                                              ; preds = %120
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, 3
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, -65
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, 128
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %134, %123
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, 2
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = and i32 %144, -2
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %87, %141, %107, %92
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* @VORTEX_SPDIF_CFG0, align 8
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, 65535
  %153 = call i32 @hwwrite(i32 %149, i64 %150, i32 %152)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* @VORTEX_SPDIF_CFG1, align 8
  %158 = load i32, i32* %8, align 4
  %159 = ashr i32 %158, 16
  %160 = call i32 @hwwrite(i32 %156, i64 %157, i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @VORTEX_SPDIF_SMPRATE, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @hwwrite(i32 %163, i64 %164, i32 %165)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @hwread(i32, i64) #1

declare dso_local i32 @vortex_src_setupchannel(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
