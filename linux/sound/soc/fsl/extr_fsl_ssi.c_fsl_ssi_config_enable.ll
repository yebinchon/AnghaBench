; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_config_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_config_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { i32, i32, i32, i64, %struct.TYPE_2__*, %struct.fsl_ssi_regvals* }
%struct.TYPE_2__ = type { i64 }
%struct.fsl_ssi_regvals = type { i32, i32, i32, i32 }

@TX = common dso_local global i64 0, align 8
@RX = common dso_local global i64 0, align 8
@REG_SSI_SOR = common dso_local global i32 0, align 4
@REG_SSI_SRCR = common dso_local global i32 0, align 4
@REG_SSI_STCR = common dso_local global i32 0, align 4
@REG_SSI_SIER = common dso_local global i32 0, align 4
@REG_SSI_SCR = common dso_local global i32 0, align 4
@SSI_SCR_SSIEN = common dso_local global i32 0, align 4
@REG_SSI_SFCSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout waiting TX FIFO filling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_ssi*, i32)* @fsl_ssi_config_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_ssi_config_enable(%struct.fsl_ssi* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_ssi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_ssi_regvals*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %12, i32 0, i32 5
  %14 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %13, align 8
  store %struct.fsl_ssi_regvals* %14, %struct.fsl_ssi_regvals** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @TX, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @RX, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REG_SSI_SOR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @SSI_SOR_xX_CLR(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SSI_SOR_xX_CLR(i32 %30)
  %32 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %29, i32 %31)
  %33 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %127

45:                                               ; preds = %39, %21
  %46 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %47 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %54 = load i64, i64* @RX, align 8
  %55 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %53, i64 %54
  %56 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %59 = load i64, i64* @TX, align 8
  %60 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %58, i64 %59
  %61 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %57, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %65 = load i64, i64* @RX, align 8
  %66 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %64, i64 %65
  %67 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %70 = load i64, i64* @TX, align 8
  %71 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %69, i64 %70
  %72 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %68, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %76 = load i64, i64* @RX, align 8
  %77 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %75, i64 %76
  %78 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %81 = load i64, i64* @TX, align 8
  %82 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %80, i64 %81
  %83 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %79, %84
  store i32 %85, i32* %7, align 4
  br label %105

86:                                               ; preds = %45
  %87 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %87, i64 %89
  %91 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  %93 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %93, i64 %95
  %97 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %99, i64 %101
  %103 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %86, %52
  %106 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %107 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @REG_SSI_SRCR, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @regmap_update_bits(i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %114 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @REG_SSI_STCR, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %121 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @REG_SSI_SIER, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @regmap_update_bits(i32 %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %105, %44
  %128 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %129 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %168

132:                                              ; preds = %127
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %132
  store i32 100, i32* %10, align 4
  %136 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %137 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @REG_SSI_SCR, align 4
  %140 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %141 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %142 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %154, %135
  %144 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %145 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @REG_SSI_SFCSR, align 4
  %148 = call i32 @regmap_read(i32 %146, i32 %147, i32* %11)
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @SSI_SFCSR_TFCNT0(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %158

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %143, label %158

158:                                              ; preds = %154, %152
  %159 = load i32, i32* %11, align 4
  %160 = call i64 @SSI_SFCSR_TFCNT0(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %164 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @dev_warn(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %162, %158
  br label %168

168:                                              ; preds = %167, %132, %127
  %169 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %170 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @REG_SSI_SCR, align 4
  %173 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %173, i64 %175
  %177 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.fsl_ssi_regvals*, %struct.fsl_ssi_regvals** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %179, i64 %181
  %183 = getelementptr inbounds %struct.fsl_ssi_regvals, %struct.fsl_ssi_regvals* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @regmap_update_bits(i32 %171, i32 %172, i32 %178, i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @BIT(i32 %186)
  %188 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %189 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SSI_SOR_xX_CLR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @SSI_SFCSR_TFCNT0(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
