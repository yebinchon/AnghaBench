; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_delete_preset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_delete_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { %struct.snd_sf_zone** }
%struct.snd_sf_zone = type { %struct.snd_sf_zone*, %struct.snd_sf_zone*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sf_list*, %struct.snd_sf_zone*)* @delete_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_preset(%struct.snd_sf_list* %0, %struct.snd_sf_zone* %1) #0 {
  %3 = alloca %struct.snd_sf_list*, align 8
  %4 = alloca %struct.snd_sf_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sf_zone*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %3, align 8
  store %struct.snd_sf_zone* %1, %struct.snd_sf_zone** %4, align 8
  %7 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %8 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %11 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %14 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_index(i32 %9, i32 %12, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.snd_sf_list*, %struct.snd_sf_list** %3, align 8
  %22 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %21, i32 0, i32 0
  %23 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %23, i64 %25
  %27 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %26, align 8
  store %struct.snd_sf_zone* %27, %struct.snd_sf_zone** %6, align 8
  br label %28

28:                                               ; preds = %52, %20
  %29 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %6, align 8
  %30 = icmp ne %struct.snd_sf_zone* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %50, %31
  %33 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %6, align 8
  %34 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %33, i32 0, i32 1
  %35 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %34, align 8
  %36 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %37 = icmp eq %struct.snd_sf_zone* %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %40 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %39, i32 0, i32 1
  %41 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %40, align 8
  %42 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %6, align 8
  %43 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %42, i32 0, i32 1
  store %struct.snd_sf_zone* %41, %struct.snd_sf_zone** %43, align 8
  %44 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %45 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %44, i32 0, i32 0
  %46 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %45, align 8
  store %struct.snd_sf_zone* %46, %struct.snd_sf_zone** %4, align 8
  %47 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %48 = icmp eq %struct.snd_sf_zone* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %56

50:                                               ; preds = %38
  br label %32

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %6, align 8
  %54 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %53, i32 0, i32 1
  %55 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %54, align 8
  store %struct.snd_sf_zone* %55, %struct.snd_sf_zone** %6, align 8
  br label %28

56:                                               ; preds = %19, %49, %28
  ret void
}

declare dso_local i32 @get_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
