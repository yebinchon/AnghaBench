; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_start_pair.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_start_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_asrc_pair = type { i32, i32, %struct.fsl_asrc* }
%struct.fsl_asrc = type { i32 }

@REG_ASRCTR = common dso_local global i32 0, align 4
@REG_ASRCFG = common dso_local global i32 0, align 4
@REG_ASRCNCR = common dso_local global i32 0, align 4
@REG_ASRIER = common dso_local global i32 0, align 4
@ASRIER_AOLIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_asrc_pair*)* @fsl_asrc_start_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_asrc_start_pair(%struct.fsl_asrc_pair* %0) #0 {
  %2 = alloca %struct.fsl_asrc_pair*, align 8
  %3 = alloca %struct.fsl_asrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_asrc_pair* %0, %struct.fsl_asrc_pair** %2, align 8
  %8 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %9 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %8, i32 0, i32 2
  %10 = load %struct.fsl_asrc*, %struct.fsl_asrc** %9, align 8
  store %struct.fsl_asrc* %10, %struct.fsl_asrc** %3, align 8
  %11 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %12 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 10, i32* %6, align 4
  %14 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @REG_ASRCTR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ASRCTR_ASRCEi_MASK(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ASRCTR_ASRCE(i32 %20)
  %22 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %41, %1
  %24 = call i32 @udelay(i32 5)
  %25 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REG_ASRCFG, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %5)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ASRCFG_INIRQi_MASK(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %23, label %43

43:                                               ; preds = %41
  %44 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @REG_ASRCNCR, align 4
  %48 = call i32 @regmap_read(i32 %46, i32 %47, i32* %5)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %63, %43
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %52 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 4
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %58 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @REG_ASRDI(i32 %60)
  %62 = call i32 @regmap_write(i32 %59, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %68 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @REG_ASRIER, align 4
  %71 = load i32, i32* @ASRIER_AOLIE, align 4
  %72 = call i32 @regmap_write(i32 %69, i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ASRCTR_ASRCEi_MASK(i32) #1

declare dso_local i32 @ASRCTR_ASRCE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ASRCFG_INIRQi_MASK(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @REG_ASRDI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
