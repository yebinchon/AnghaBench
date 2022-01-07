; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_do_clkgen_single.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_do_clkgen_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_spdif_in = type { i32, i32, i64 }

@IMG_SPDIF_IN_CLKGEN_NOM_SHIFT = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CLKGEN_NOM_MASK = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CLKGEN_HLD_SHIFT = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CLKGEN_HLD_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CLKGEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_spdif_in*, i32)* @img_spdif_in_do_clkgen_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_in_do_clkgen_single(%struct.img_spdif_in* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_spdif_in*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.img_spdif_in* %0, %struct.img_spdif_in** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @img_spdif_in_check_max_rate(%struct.img_spdif_in* %12, i32 %13, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %67

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @img_spdif_in_do_clkgen_calc(i32 %20, i32* %6, i32* %7, i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IMG_SPDIF_IN_CLKGEN_NOM_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @IMG_SPDIF_IN_CLKGEN_NOM_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IMG_SPDIF_IN_CLKGEN_HLD_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @IMG_SPDIF_IN_CLKGEN_HLD_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %41 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %40, i32 0, i32 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %45 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %27
  %49 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %50 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %49, i32 0, i32 1
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %27
  %56 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @IMG_SPDIF_IN_CLKGEN, align 4
  %59 = call i32 @img_spdif_in_writel(%struct.img_spdif_in* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %62 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %64 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %63, i32 0, i32 1
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %48, %25, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @img_spdif_in_check_max_rate(%struct.img_spdif_in*, i32, i64*) #1

declare dso_local i32 @img_spdif_in_do_clkgen_calc(i32, i32*, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @img_spdif_in_writel(%struct.img_spdif_in*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
