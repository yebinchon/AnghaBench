; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_remove_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_remove_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { i32 }
%struct.snd_soundfont = type { %struct.snd_sf_zone* }
%struct.snd_sf_zone = type { i32, i32, %struct.snd_sf_zone*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sf_list*, %struct.snd_soundfont*, i32, i32)* @remove_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_info(%struct.snd_sf_list* %0, %struct.snd_soundfont* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_sf_list*, align 8
  %6 = alloca %struct.snd_soundfont*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_sf_zone*, align 8
  %10 = alloca %struct.snd_sf_zone*, align 8
  %11 = alloca %struct.snd_sf_zone*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %5, align 8
  store %struct.snd_soundfont* %1, %struct.snd_soundfont** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store %struct.snd_sf_zone* null, %struct.snd_sf_zone** %9, align 8
  %13 = load %struct.snd_soundfont*, %struct.snd_soundfont** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %13, i32 0, i32 0
  %15 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %14, align 8
  store %struct.snd_sf_zone* %15, %struct.snd_sf_zone** %11, align 8
  br label %16

16:                                               ; preds = %58, %4
  %17 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %18 = icmp ne %struct.snd_sf_zone* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %21 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %20, i32 0, i32 2
  %22 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %21, align 8
  store %struct.snd_sf_zone* %22, %struct.snd_sf_zone** %10, align 8
  %23 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %24 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %19
  %28 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %29 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %35 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %9, align 8
  %41 = icmp ne %struct.snd_sf_zone* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %10, align 8
  %44 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %9, align 8
  %45 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %44, i32 0, i32 2
  store %struct.snd_sf_zone* %43, %struct.snd_sf_zone** %45, align 8
  br label %50

46:                                               ; preds = %39
  %47 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %10, align 8
  %48 = load %struct.snd_soundfont*, %struct.snd_soundfont** %6, align 8
  %49 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %48, i32 0, i32 0
  store %struct.snd_sf_zone* %47, %struct.snd_sf_zone** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  %54 = call i32 @kfree(%struct.snd_sf_zone* %53)
  br label %57

55:                                               ; preds = %33, %27, %19
  %56 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %11, align 8
  store %struct.snd_sf_zone* %56, %struct.snd_sf_zone** %9, align 8
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %10, align 8
  store %struct.snd_sf_zone* %59, %struct.snd_sf_zone** %11, align 8
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.snd_sf_list*, %struct.snd_sf_list** %5, align 8
  %65 = call i32 @rebuild_presets(%struct.snd_sf_list* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local i32 @kfree(%struct.snd_sf_zone*) #1

declare dso_local i32 @rebuild_presets(%struct.snd_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
