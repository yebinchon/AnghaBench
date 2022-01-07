; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.aaci* }
%struct.aaci = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@AACI_SL1TX = common dso_local global i64 0, align 8
@FRAME_PERIOD_US = common dso_local global i32 0, align 4
@AACI_SLFR = common dso_local global i64 0, align 8
@SLFR_1TXB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"timeout on slot 1 TX busy\0A\00", align 1
@SLFR_1RXV = common dso_local global i32 0, align 4
@SLFR_2RXV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"timeout on RX valid\0A\00", align 1
@AACI_SL1RX = common dso_local global i64 0, align 8
@AACI_SL2RX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"ac97 read back fail.  retry\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"wrong ac97 register read back (%x != %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @aaci_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @aaci_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.aaci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = load %struct.aaci*, %struct.aaci** %11, align 8
  store %struct.aaci* %12, %struct.aaci** %6, align 8
  store i32 10, i32* %8, align 4
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i16 -1, i16* %3, align 2
  br label %164

18:                                               ; preds = %2
  %19 = load %struct.aaci*, %struct.aaci** %6, align 8
  %20 = getelementptr inbounds %struct.aaci, %struct.aaci* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.aaci*, %struct.aaci** %6, align 8
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %24 = call i32 @aaci_ac97_select_codec(%struct.aaci* %22, %struct.snd_ac97* %23)
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 12
  %28 = or i32 %27, 524288
  %29 = trunc i32 %28 to i16
  %30 = load %struct.aaci*, %struct.aaci** %6, align 8
  %31 = getelementptr inbounds %struct.aaci, %struct.aaci* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AACI_SL1TX, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i16 zeroext %29, i64 %34)
  %36 = load i32, i32* @FRAME_PERIOD_US, align 4
  %37 = call i32 @udelay(i32 %36)
  %38 = load i32, i32* @FRAME_PERIOD_US, align 4
  %39 = mul nsw i32 %38, 8
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %57, %18
  %41 = call i32 @udelay(i32 1)
  %42 = load %struct.aaci*, %struct.aaci** %6, align 8
  %43 = getelementptr inbounds %struct.aaci, %struct.aaci* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AACI_SLFR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SLFR_1TXB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i1 [ false, %48 ], [ %56, %53 ]
  br i1 %58, label %40, label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @SLFR_1TXB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.aaci*, %struct.aaci** %6, align 8
  %66 = getelementptr inbounds %struct.aaci, %struct.aaci* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %158

70:                                               ; preds = %59
  %71 = load i32, i32* @FRAME_PERIOD_US, align 4
  %72 = call i32 @udelay(i32 %71)
  %73 = load i32, i32* @FRAME_PERIOD_US, align 4
  %74 = mul nsw i32 %73, 8
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %98, %70
  %76 = call i32 @udelay(i32 1)
  %77 = call i32 (...) @cond_resched()
  %78 = load %struct.aaci*, %struct.aaci** %6, align 8
  %79 = getelementptr inbounds %struct.aaci, %struct.aaci* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AACI_SLFR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  %84 = load i32, i32* @SLFR_1RXV, align 4
  %85 = load i32, i32* @SLFR_2RXV, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @SLFR_1RXV, align 4
  %91 = load i32, i32* @SLFR_2RXV, align 4
  %92 = or i32 %90, %91
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i1 [ false, %88 ], [ %97, %94 ]
  br i1 %99, label %75, label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @SLFR_1RXV, align 4
  %103 = load i32, i32* @SLFR_2RXV, align 4
  %104 = or i32 %102, %103
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.aaci*, %struct.aaci** %6, align 8
  %108 = getelementptr inbounds %struct.aaci, %struct.aaci* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %158

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %154, %112
  %114 = load %struct.aaci*, %struct.aaci** %6, align 8
  %115 = getelementptr inbounds %struct.aaci, %struct.aaci* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AACI_SL1RX, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl(i64 %118)
  %120 = ashr i32 %119, 12
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i16, i16* %5, align 2
  %123 = zext i16 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %113
  %126 = load %struct.aaci*, %struct.aaci** %6, align 8
  %127 = getelementptr inbounds %struct.aaci, %struct.aaci* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AACI_SL2RX, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @readl(i64 %130)
  %132 = ashr i32 %131, 4
  store i32 %132, i32* %9, align 4
  br label %157

133:                                              ; preds = %113
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.aaci*, %struct.aaci** %6, align 8
  %139 = getelementptr inbounds %struct.aaci, %struct.aaci* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 (i32*, i8*, ...) @dev_warn(i32* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %154

143:                                              ; preds = %133
  %144 = load %struct.aaci*, %struct.aaci** %6, align 8
  %145 = getelementptr inbounds %struct.aaci, %struct.aaci* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %9, align 4
  %149 = load i16, i16* %5, align 2
  %150 = zext i16 %149 to i32
  %151 = call i32 (i32*, i8*, ...) @dev_warn(i32* %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %150)
  store i32 -1, i32* %9, align 4
  br label %152

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %137
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %113, label %157

157:                                              ; preds = %154, %125
  br label %158

158:                                              ; preds = %157, %106, %64
  %159 = load %struct.aaci*, %struct.aaci** %6, align 8
  %160 = getelementptr inbounds %struct.aaci, %struct.aaci* %159, i32 0, i32 0
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* %9, align 4
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* %3, align 2
  br label %164

164:                                              ; preds = %158, %17
  %165 = load i16, i16* %3, align 2
  ret i16 %165
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @aaci_ac97_select_codec(%struct.aaci*, %struct.snd_ac97*) #1

declare dso_local i32 @writel(i16 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
