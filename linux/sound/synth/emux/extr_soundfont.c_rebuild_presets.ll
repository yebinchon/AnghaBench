; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_rebuild_presets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_rebuild_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { %struct.snd_soundfont*, i32 }
%struct.snd_soundfont = type { %struct.snd_sf_zone*, %struct.snd_soundfont* }
%struct.snd_sf_zone = type { i32*, i32, i32, %struct.snd_sf_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sf_list*)* @rebuild_presets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rebuild_presets(%struct.snd_sf_list* %0) #0 {
  %2 = alloca %struct.snd_sf_list*, align 8
  %3 = alloca %struct.snd_soundfont*, align 8
  %4 = alloca %struct.snd_sf_zone*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %2, align 8
  %5 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %6 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @memset(i32 %7, i32 0, i32 4)
  %9 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %10 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %9, i32 0, i32 0
  %11 = load %struct.snd_soundfont*, %struct.snd_soundfont** %10, align 8
  store %struct.snd_soundfont* %11, %struct.snd_soundfont** %3, align 8
  br label %12

12:                                               ; preds = %54, %1
  %13 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %14 = icmp ne %struct.snd_soundfont* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %16, i32 0, i32 0
  %18 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %17, align 8
  store %struct.snd_sf_zone* %18, %struct.snd_sf_zone** %4, align 8
  br label %19

19:                                               ; preds = %49, %15
  %20 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %21 = icmp ne %struct.snd_sf_zone* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %24 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22
  %28 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %29 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %34 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %35 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %34, i32 0, i32 1
  %36 = call i32* @set_sample(%struct.snd_soundfont* %33, i32* %35)
  %37 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %38 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %40 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %49

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %27, %22
  %46 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %47 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %48 = call i32 @add_preset(%struct.snd_sf_list* %46, %struct.snd_sf_zone* %47)
  br label %49

49:                                               ; preds = %45, %43
  %50 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %51 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %50, i32 0, i32 3
  %52 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %51, align 8
  store %struct.snd_sf_zone* %52, %struct.snd_sf_zone** %4, align 8
  br label %19

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %56 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %55, i32 0, i32 1
  %57 = load %struct.snd_soundfont*, %struct.snd_soundfont** %56, align 8
  store %struct.snd_soundfont* %57, %struct.snd_soundfont** %3, align 8
  br label %12

58:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32* @set_sample(%struct.snd_soundfont*, i32*) #1

declare dso_local i32 @add_preset(%struct.snd_sf_list*, %struct.snd_sf_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
