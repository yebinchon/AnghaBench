; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_release_pair.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_release_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_asrc_pair = type { i32, i64, i64, %struct.fsl_asrc* }
%struct.fsl_asrc = type { i32, i32**, i32, i32 }

@REG_ASRCTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_asrc_pair*)* @fsl_asrc_release_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_asrc_release_pair(%struct.fsl_asrc_pair* %0) #0 {
  %2 = alloca %struct.fsl_asrc_pair*, align 8
  %3 = alloca %struct.fsl_asrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.fsl_asrc_pair* %0, %struct.fsl_asrc_pair** %2, align 8
  %6 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %6, i32 0, i32 3
  %8 = load %struct.fsl_asrc*, %struct.fsl_asrc** %7, align 8
  store %struct.fsl_asrc* %8, %struct.fsl_asrc** %3, align 8
  %9 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REG_ASRCTR, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ASRCTR_ASRCEi_MASK(i32 %16)
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %17, i32 0)
  %19 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* null, i32** %37, align 8
  %38 = load %struct.fsl_asrc_pair*, %struct.fsl_asrc_pair** %2, align 8
  %39 = getelementptr inbounds %struct.fsl_asrc_pair, %struct.fsl_asrc_pair* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.fsl_asrc*, %struct.fsl_asrc** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ASRCTR_ASRCEi_MASK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
