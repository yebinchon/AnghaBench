; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_setup_periods.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_setup_periods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ichdev = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32* }

@ICH_REG_OFF_BDBAR = common dso_local global i64 0, align 8
@ICH_REG_LVI_MASK = common dso_local global i32 0, align 4
@ICH_REG_OFF_LVI = common dso_local global i64 0, align 8
@ICH_REG_OFF_CIV = common dso_local global i64 0, align 8
@ICH_FIFOE = common dso_local global i32 0, align 4
@ICH_BCIS = common dso_local global i32 0, align 4
@ICH_LVBCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel8x0*, %struct.ichdev*)* @snd_intel8x0_setup_periods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0_setup_periods(%struct.intel8x0* %0, %struct.ichdev* %1) #0 {
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca %struct.ichdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  store %struct.ichdev* %1, %struct.ichdev** %4, align 8
  %8 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %9 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %8, i32 0, i32 15
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %12 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @ICH_REG_OFF_BDBAR, align 8
  %17 = add i64 %15, %16
  %18 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %19 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @iputdword(%struct.intel8x0* %14, i64 %17, i32 %20)
  %22 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %23 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %26 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %2
  %30 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %31 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %30, i32 0, i32 4
  store i32 2, i32* %31, align 4
  %32 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %33 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %32, i32 0, i32 3
  store i32 2, i32* %33, align 8
  %34 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %35 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 1
  %38 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %39 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %98, %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %43, 2
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %40
  %47 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %48 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cpu_to_le32(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 0
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %57 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %60 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %58, %61
  %63 = or i32 -2147483648, %62
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %71 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %74 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 1
  %77 = add nsw i32 %72, %76
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  %84 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %85 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %88 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %86, %89
  %91 = or i32 -2147483648, %90
  %92 = call i32 @cpu_to_le32(i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %46
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %5, align 4
  br label %40

101:                                              ; preds = %40
  %102 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %103 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %102, i32 0, i32 8
  store i32 2, i32* %103, align 4
  br label %168

104:                                              ; preds = %2
  %105 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %106 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %105, i32 0, i32 4
  store i32 1, i32* %106, align 4
  %107 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %108 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %107, i32 0, i32 3
  store i32 1, i32* %108, align 8
  %109 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %110 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %113 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %155, %104
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %117 = add nsw i32 %116, 1
  %118 = mul nsw i32 %117, 2
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %114
  %121 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %122 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = ashr i32 %124, 1
  %126 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %127 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %131 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = srem i32 %129, %132
  %134 = add nsw i32 %123, %133
  %135 = call i32 @cpu_to_le32(i32 %134)
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 0
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %142 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %145 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %143, %146
  %148 = or i32 -2147483648, %147
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %120
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 2
  store i32 %157, i32* %5, align 4
  br label %114

158:                                              ; preds = %114
  %159 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %160 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %163 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %161, %164
  %166 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %167 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %158, %101
  %169 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* @ICH_REG_OFF_LVI, align 8
  %172 = add i64 %170, %171
  %173 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %174 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %175 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %174, i32 0, i32 9
  store i32 %173, i32* %175, align 8
  %176 = call i32 @iputbyte(%struct.intel8x0* %169, i64 %172, i32 %173)
  %177 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %178 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %177, i32 0, i32 13
  store i64 0, i64* %178, align 8
  %179 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* @ICH_REG_OFF_CIV, align 8
  %182 = add i64 %180, %181
  %183 = call i32 @iputbyte(%struct.intel8x0* %179, i64 %182, i32 0)
  %184 = load i32, i32* @ICH_REG_LVI_MASK, align 4
  %185 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %186 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = srem i32 %184, %187
  %189 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %190 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %189, i32 0, i32 10
  store i32 %188, i32* %190, align 4
  %191 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %192 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %191, i32 0, i32 12
  store i64 0, i64* %192, align 8
  %193 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load %struct.ichdev*, %struct.ichdev** %4, align 8
  %196 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %195, i32 0, i32 11
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %194, %197
  %199 = load i32, i32* @ICH_FIFOE, align 4
  %200 = load i32, i32* @ICH_BCIS, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @ICH_LVBCI, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @iputbyte(%struct.intel8x0* %193, i64 %198, i32 %203)
  ret void
}

declare dso_local i32 @iputdword(%struct.intel8x0*, i64, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iputbyte(%struct.intel8x0*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
