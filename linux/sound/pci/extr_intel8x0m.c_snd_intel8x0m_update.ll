; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0m = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ichdev = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32*, i64 }

@ICH_REG_OFF_CIV = common dso_local global i64 0, align 8
@ICH_REG_LVI_MASK = common dso_local global i32 0, align 4
@ICH_REG_OFF_LVI = common dso_local global i64 0, align 8
@ICH_FIFOE = common dso_local global i32 0, align 4
@ICH_BCIS = common dso_local global i32 0, align 4
@ICH_LVBCI = common dso_local global i32 0, align 4
@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_REG_OFF_PIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel8x0m*, %struct.ichdev*)* @snd_intel8x0m_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0m_update(%struct.intel8x0m* %0, %struct.ichdev* %1) #0 {
  %3 = alloca %struct.intel8x0m*, align 8
  %4 = alloca %struct.ichdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel8x0m* %0, %struct.intel8x0m** %3, align 8
  store %struct.ichdev* %1, %struct.ichdev** %4, align 8
  %10 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %11 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ICH_REG_OFF_CIV, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @igetbyte(%struct.intel8x0m* %13, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %20 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %24 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %25 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %29 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %30 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %50

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %36 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %49 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %23
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %53 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %57 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %61 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %64 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %69 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %73 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %74 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @ICH_REG_OFF_LVI, align 8
  %80 = add i64 %78, %79
  %81 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %82 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @iputbyte(%struct.intel8x0m* %77, i64 %80, i32 %83)
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %135, %50
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %85
  %90 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %91 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %95 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %98 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %102 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %101, i32 0, i32 13
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %105 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %108 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %103, %111
  %113 = call i32 @cpu_to_le32(i64 %112)
  %114 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %115 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %114, i32 0, i32 12
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %118 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  store i32 %113, i32* %122, align 4
  %123 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %124 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, -1
  store i64 %126, i64* %124, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %89
  %129 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %130 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %133 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %132, i32 0, i32 8
  store i64 %131, i64* %133, align 8
  store i32 1, i32* %9, align 4
  br label %134

134:                                              ; preds = %128, %89
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %85

138:                                              ; preds = %85
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %143 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %142, i32 0, i32 11
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %148 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %147, i32 0, i32 0
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %151 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %150, i32 0, i32 11
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @snd_pcm_period_elapsed(i64 %152)
  %154 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %155 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %154, i32 0, i32 0
  %156 = call i32 @spin_lock(i32* %155)
  br label %157

157:                                              ; preds = %146, %141, %138
  %158 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %159 = load i64, i64* %5, align 8
  %160 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %161 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %160, i32 0, i32 10
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = load i32, i32* @ICH_FIFOE, align 4
  %165 = load i32, i32* @ICH_BCIS, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @ICH_LVBCI, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @iputbyte(%struct.intel8x0m* %158, i64 %163, i32 %168)
  ret void
}

declare dso_local i32 @igetbyte(%struct.intel8x0m*, i64) #1

declare dso_local i32 @iputbyte(%struct.intel8x0m*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
