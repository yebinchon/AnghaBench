; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_jack.c_snd_jack_kctl_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_jack.c_snd_jack_kctl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_jack_kctl = type { i32, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32, %struct.snd_jack_kctl* }
%struct.snd_card = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@snd_jack_kctl_private_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_jack_kctl* (%struct.snd_card*, i8*, i32)* @snd_jack_kctl_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_jack_kctl* @snd_jack_kctl_new(%struct.snd_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_jack_kctl*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  %9 = alloca %struct.snd_jack_kctl*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %13 = call %struct.snd_kcontrol* @snd_kctl_jack_new(i8* %11, %struct.snd_card* %12)
  store %struct.snd_kcontrol* %13, %struct.snd_kcontrol** %8, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %15 = icmp ne %struct.snd_kcontrol* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.snd_jack_kctl* null, %struct.snd_jack_kctl** %4, align 8
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %20 = call i32 @snd_ctl_add(%struct.snd_card* %18, %struct.snd_kcontrol* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.snd_jack_kctl* null, %struct.snd_jack_kctl** %4, align 8
  br label %47

24:                                               ; preds = %17
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.snd_jack_kctl* @kzalloc(i32 16, i32 %25)
  store %struct.snd_jack_kctl* %26, %struct.snd_jack_kctl** %9, align 8
  %27 = load %struct.snd_jack_kctl*, %struct.snd_jack_kctl** %9, align 8
  %28 = icmp ne %struct.snd_jack_kctl* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %44

30:                                               ; preds = %24
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %32 = load %struct.snd_jack_kctl*, %struct.snd_jack_kctl** %9, align 8
  %33 = getelementptr inbounds %struct.snd_jack_kctl, %struct.snd_jack_kctl* %32, i32 0, i32 1
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.snd_jack_kctl*, %struct.snd_jack_kctl** %9, align 8
  %36 = getelementptr inbounds %struct.snd_jack_kctl, %struct.snd_jack_kctl* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.snd_jack_kctl*, %struct.snd_jack_kctl** %9, align 8
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 1
  store %struct.snd_jack_kctl* %37, %struct.snd_jack_kctl** %39, align 8
  %40 = load i32, i32* @snd_jack_kctl_private_free, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.snd_jack_kctl*, %struct.snd_jack_kctl** %9, align 8
  store %struct.snd_jack_kctl* %43, %struct.snd_jack_kctl** %4, align 8
  br label %47

44:                                               ; preds = %29
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %46 = call i32 @snd_ctl_free_one(%struct.snd_kcontrol* %45)
  store %struct.snd_jack_kctl* null, %struct.snd_jack_kctl** %4, align 8
  br label %47

47:                                               ; preds = %44, %30, %23, %16
  %48 = load %struct.snd_jack_kctl*, %struct.snd_jack_kctl** %4, align 8
  ret %struct.snd_jack_kctl* %48
}

declare dso_local %struct.snd_kcontrol* @snd_kctl_jack_new(i8*, %struct.snd_card*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_jack_kctl* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_ctl_free_one(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
