; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_input_volume_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_input_volume_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i8* }

@CS4245_PGA_A_CTRL = common dso_local global i64 0, align 8
@CS4245_PGA_B_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*, i8, i8)* @input_volume_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_volume_apply(%struct.oxygen* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.dg*, align 8
  %9 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %11 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %10, i32 0, i32 0
  %12 = load %struct.dg*, %struct.dg** %11, align 8
  store %struct.dg* %12, %struct.dg** %8, align 8
  %13 = load i8, i8* %6, align 1
  %14 = load %struct.dg*, %struct.dg** %8, align 8
  %15 = getelementptr inbounds %struct.dg, %struct.dg* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* @CS4245_PGA_A_CTRL, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8 %13, i8* %18, align 1
  %19 = load i8, i8* %7, align 1
  %20 = load %struct.dg*, %struct.dg** %8, align 8
  %21 = getelementptr inbounds %struct.dg, %struct.dg* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* @CS4245_PGA_B_CTRL, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 %19, i8* %24, align 1
  %25 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %26 = load i64, i64* @CS4245_PGA_A_CTRL, align 8
  %27 = call i32 @cs4245_write_spi(%struct.oxygen* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %34 = load i64, i64* @CS4245_PGA_B_CTRL, align 8
  %35 = call i32 @cs4245_write_spi(%struct.oxygen* %33, i64 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @cs4245_write_spi(%struct.oxygen*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
