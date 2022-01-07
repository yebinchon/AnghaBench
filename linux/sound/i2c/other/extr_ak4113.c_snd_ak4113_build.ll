; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_build.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_snd_ak4113_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4113 = type { i32, %struct.snd_kcontrol**, i32, %struct.snd_pcm_substream* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AK4113_CONTROLS = common dso_local global i32 0, align 4
@snd_ak4113_iec958_controls = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ak4113_build(%struct.ak4113* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ak4113*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ak4113* %0, %struct.ak4113** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = icmp ne %struct.snd_pcm_substream* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %20 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %21 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %20, i32 0, i32 3
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %21, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %70, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AK4113_CONTROLS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load i32*, i32** @snd_ak4113_iec958_controls, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %32 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %30, %struct.ak4113* %31)
  store %struct.snd_kcontrol* %32, %struct.snd_kcontrol** %6, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %34 = icmp eq %struct.snd_kcontrol* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %81

38:                                               ; preds = %26
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %51 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %54 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %57 = call i32 @snd_ctl_add(i32 %55, %struct.snd_kcontrol* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %81

62:                                               ; preds = %38
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %64 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %65 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %64, i32 0, i32 1
  %66 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %66, i64 %68
  store %struct.snd_kcontrol* %63, %struct.snd_kcontrol** %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %22

73:                                               ; preds = %22
  %74 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %75 = call i32 @snd_ak4113_proc_init(%struct.ak4113* %74)
  %76 = load %struct.ak4113*, %struct.ak4113** %4, align 8
  %77 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %76, i32 0, i32 0
  %78 = load i32, i32* @HZ, align 4
  %79 = sdiv i32 %78, 10
  %80 = call i32 @schedule_delayed_work(i32* %77, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %60, %35, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.ak4113*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ak4113_proc_init(%struct.ak4113*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
