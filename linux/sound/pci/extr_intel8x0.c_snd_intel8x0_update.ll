; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ichdev = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32*, i64 }

@ICH_REG_OFF_CIV = common dso_local global i64 0, align 8
@ICH_BCIS = common dso_local global i32 0, align 4
@ICH_REG_LVI_MASK = common dso_local global i32 0, align 4
@ICH_REG_OFF_LVI = common dso_local global i64 0, align 8
@ICH_FIFOE = common dso_local global i32 0, align 4
@ICH_LVBCI = common dso_local global i32 0, align 4
@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_REG_OFF_PIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel8x0*, %struct.ichdev*)* @snd_intel8x0_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0_update(%struct.intel8x0* %0, %struct.ichdev* %1) #0 {
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca %struct.ichdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  store %struct.ichdev* %1, %struct.ichdev** %4, align 8
  %12 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %13 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %16 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %22 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = call i32 @igetbyte(%struct.intel8x0* %19, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ICH_REG_OFF_CIV, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @igetbyte(%struct.intel8x0* %26, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ICH_BCIS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %70

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %39 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  %43 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %44 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %48 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %49 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %69

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %55 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %68 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %42
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %73 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %77 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %81 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %70
  %85 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %86 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %89 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %70
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %95 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %99 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %100 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @ICH_REG_OFF_LVI, align 8
  %106 = add i64 %104, %105
  %107 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %108 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @iputbyte(%struct.intel8x0* %103, i64 %106, i32 %109)
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %161, %92
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %164

115:                                              ; preds = %111
  %116 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %117 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %121 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %124 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = srem i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %128 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %127, i32 0, i32 13
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %131 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %134 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %129, %137
  %139 = call i32 @cpu_to_le32(i64 %138)
  %140 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %141 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %140, i32 0, i32 12
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %144 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  store i32 %139, i32* %148, align 4
  %149 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %150 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, -1
  store i64 %152, i64* %150, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %115
  %155 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %156 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %159 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %158, i32 0, i32 8
  store i64 %157, i64* %159, align 8
  store i32 1, i32* %11, align 4
  br label %160

160:                                              ; preds = %154, %115
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %111

164:                                              ; preds = %111
  %165 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %166 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %165, i32 0, i32 0
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %164
  %172 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %173 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %172, i32 0, i32 11
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %178 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %177, i32 0, i32 11
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @snd_pcm_period_elapsed(i64 %179)
  br label %181

181:                                              ; preds = %176, %171, %164
  %182 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %185 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %184, i32 0, i32 10
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %183, %186
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @ICH_FIFOE, align 4
  %190 = load i32, i32* @ICH_BCIS, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @ICH_LVBCI, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %188, %193
  %195 = call i32 @iputbyte(%struct.intel8x0* %182, i64 %187, i32 %194)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @igetbyte(%struct.intel8x0*, i64) #1

declare dso_local i32 @iputbyte(%struct.intel8x0*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
