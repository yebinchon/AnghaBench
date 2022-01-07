; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_add_lc_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_add_lc_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { %struct.snd_kcontrol** }

@lc_controls = common dso_local global %struct.snd_kcontrol** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @add_lc_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_lc_controls(%struct.oxygen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.xonar_wm87x6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 1
  %10 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %9, align 8
  store %struct.xonar_wm87x6* %10, %struct.xonar_wm87x6** %4, align 8
  %11 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** @lc_controls, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol** %11)
  %13 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %14 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %13, i32 0, i32 0
  %15 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol** %15)
  %17 = icmp ne i32 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %55, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** @lc_controls, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol** %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** @lc_controls, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %26, i64 %28
  %30 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %31 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol** %29, %struct.oxygen* %30)
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %6, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %33 = icmp ne %struct.snd_kcontrol* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %25
  %38 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %39 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %42 = call i32 @snd_ctl_add(i32 %40, %struct.snd_kcontrol* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %37
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %49 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %4, align 8
  %50 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %49, i32 0, i32 0
  %51 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %51, i64 %53
  store %struct.snd_kcontrol* %48, %struct.snd_kcontrol** %54, align 8
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %20

58:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %45, %34
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol**) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol**, %struct.oxygen*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
