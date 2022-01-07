; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_shadow_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_cs4245_shadow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32 }

@CS4245_SAVE_TO_SHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs4245_shadow_control(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oxygen*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dg*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %10 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %9, i32 0, i32 0
  %11 = load %struct.dg*, %struct.dg** %10, align 8
  store %struct.dg* %11, %struct.dg** %6, align 8
  store i8 1, i8* %7, align 1
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  %15 = load %struct.dg*, %struct.dg** %6, align 8
  %16 = getelementptr inbounds %struct.dg, %struct.dg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call zeroext i8 @ARRAY_SIZE(i32 %17)
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CS4245_SAVE_TO_SHADOW, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %27 = load i8, i8* %7, align 1
  %28 = call i32 @cs4245_read_spi(%struct.oxygen* %26, i8 zeroext %27)
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = call i32 @cs4245_write_spi(%struct.oxygen* %30, i8 zeroext %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %28, %25 ], [ %32, %29 ]
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i8, i8* %7, align 1
  %42 = add i8 %41, 1
  store i8 %42, i8* %7, align 1
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local zeroext i8 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cs4245_read_spi(%struct.oxygen*, i8 zeroext) #1

declare dso_local i32 @cs4245_write_spi(%struct.oxygen*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
