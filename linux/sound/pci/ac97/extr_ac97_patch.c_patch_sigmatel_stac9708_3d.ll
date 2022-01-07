; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9708_3d.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_sigmatel_stac9708_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_kcontrol = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@snd_ac97_controls_3d = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"3D Control Sigmatel - Depth\00", align 1
@AC97_3D_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"3D Control Sigmatel - Rear Depth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_sigmatel_stac9708_3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_sigmatel_stac9708_3d(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @snd_ac97_controls_3d, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %14 = call %struct.snd_kcontrol* @snd_ac97_cnew(i32* %12, %struct.snd_ac97* %13)
  store %struct.snd_kcontrol* %14, %struct.snd_kcontrol** %4, align 8
  %15 = call i32 @snd_ctl_add(i32 %10, %struct.snd_kcontrol* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strcpy(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @AC97_3D_CONTROL, align 4
  %26 = call i8* @AC97_SINGLE_VALUE(i32 %25, i32 0, i32 3, i32 0)
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %30 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @snd_ac97_controls_3d, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %37 = call %struct.snd_kcontrol* @snd_ac97_cnew(i32* %35, %struct.snd_ac97* %36)
  store %struct.snd_kcontrol* %37, %struct.snd_kcontrol** %4, align 8
  %38 = call i32 @snd_ctl_add(i32 %33, %struct.snd_kcontrol* %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %19
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strcpy(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @AC97_3D_CONTROL, align 4
  %49 = call i8* @AC97_SINGLE_VALUE(i32 %48, i32 2, i32 3, i32 0)
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %53 = load i32, i32* @AC97_3D_CONTROL, align 4
  %54 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %52, i32 %53, i32 0)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %42, %40, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ac97_cnew(i32*, %struct.snd_ac97*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @AC97_SINGLE_VALUE(i32, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
