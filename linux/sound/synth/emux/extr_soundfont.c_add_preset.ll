; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_add_preset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_add_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { %struct.snd_sf_zone** }
%struct.snd_sf_zone = type { i64, %struct.snd_sf_zone*, %struct.snd_sf_zone*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sf_list*, %struct.snd_sf_zone*)* @add_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_preset(%struct.snd_sf_list* %0, %struct.snd_sf_zone* %1) #0 {
  %3 = alloca %struct.snd_sf_list*, align 8
  %4 = alloca %struct.snd_sf_zone*, align 8
  %5 = alloca %struct.snd_sf_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_sf_zone*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %3, align 8
  store %struct.snd_sf_zone* %1, %struct.snd_sf_zone** %4, align 8
  %8 = load %struct.snd_sf_list*, %struct.snd_sf_list** %3, align 8
  %9 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %10 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %13 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %16 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.snd_sf_zone* @search_first_zone(%struct.snd_sf_list* %8, i32 %11, i32 %14, i32 %18)
  store %struct.snd_sf_zone* %19, %struct.snd_sf_zone** %5, align 8
  %20 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %21 = icmp ne %struct.snd_sf_zone* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %2
  %23 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %24 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %28 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %22
  %33 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  store %struct.snd_sf_zone* %33, %struct.snd_sf_zone** %7, align 8
  br label %34

34:                                               ; preds = %47, %32
  %35 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %7, align 8
  %36 = icmp ne %struct.snd_sf_zone* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %7, align 8
  %39 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %89

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %7, align 8
  %49 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %48, i32 0, i32 2
  %50 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %49, align 8
  store %struct.snd_sf_zone* %50, %struct.snd_sf_zone** %7, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.snd_sf_list*, %struct.snd_sf_list** %3, align 8
  %53 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %54 = call i32 @delete_preset(%struct.snd_sf_list* %52, %struct.snd_sf_zone* %53)
  store %struct.snd_sf_zone* null, %struct.snd_sf_zone** %5, align 8
  br label %55

55:                                               ; preds = %51, %22, %2
  %56 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %57 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %60 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %63 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @get_index(i32 %58, i32 %61, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %89

69:                                               ; preds = %55
  %70 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %71 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %72 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %71, i32 0, i32 2
  store %struct.snd_sf_zone* %70, %struct.snd_sf_zone** %72, align 8
  %73 = load %struct.snd_sf_list*, %struct.snd_sf_list** %3, align 8
  %74 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %73, i32 0, i32 0
  %75 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %75, i64 %77
  %79 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %78, align 8
  %80 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %81 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %80, i32 0, i32 1
  store %struct.snd_sf_zone* %79, %struct.snd_sf_zone** %81, align 8
  %82 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %83 = load %struct.snd_sf_list*, %struct.snd_sf_list** %3, align 8
  %84 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %83, i32 0, i32 0
  %85 = load %struct.snd_sf_zone**, %struct.snd_sf_zone*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %85, i64 %87
  store %struct.snd_sf_zone* %82, %struct.snd_sf_zone** %88, align 8
  br label %89

89:                                               ; preds = %69, %68, %45
  ret void
}

declare dso_local %struct.snd_sf_zone* @search_first_zone(%struct.snd_sf_list*, i32, i32, i32) #1

declare dso_local i32 @delete_preset(%struct.snd_sf_list*, %struct.snd_sf_zone*) #1

declare dso_local i32 @get_index(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
