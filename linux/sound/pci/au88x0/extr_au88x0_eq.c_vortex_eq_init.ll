; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_eq_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_eq.c_vortex_eq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@vortex_eqtoggle_kcontrol = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vortex_eq_kcontrol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s Playback Volume\00", align 1
@EqBandLabels = common dso_local global i8** null, align 8
@vortex_levels_kcontrol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @vortex_eq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_eq_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i32 @vortex_Eqlzr_init(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_eqtoggle_kcontrol, %struct.TYPE_7__* %9)
  store %struct.snd_kcontrol* %10, %struct.snd_kcontrol** %4, align 8
  %11 = icmp eq %struct.snd_kcontrol* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = call i32 @snd_ctl_add(i32 %20, %struct.snd_kcontrol* %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %80

26:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %60, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_eq_kcontrol, %struct.TYPE_7__* %31)
  store %struct.snd_kcontrol* %32, %struct.snd_kcontrol** %4, align 8
  %33 = icmp eq %struct.snd_kcontrol* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %80

37:                                               ; preds = %30
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8**, i8*** @EqBandLabels, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %50 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %55 = call i32 @snd_ctl_add(i32 %53, %struct.snd_kcontrol* %54)
  store i32 %55, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %80

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %27

63:                                               ; preds = %27
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_levels_kcontrol, %struct.TYPE_7__* %64)
  store %struct.snd_kcontrol* %65, %struct.snd_kcontrol** %4, align 8
  %66 = icmp eq %struct.snd_kcontrol* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %80

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %75 = call i32 @snd_ctl_add(i32 %73, %struct.snd_kcontrol* %74)
  store i32 %75, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %77, %67, %57, %34, %24, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @vortex_Eqlzr_init(%struct.TYPE_7__*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
