; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_soundfont_remove_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_soundfont.c_snd_soundfont_remove_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { i64, i64, i64, i64, i32, %struct.TYPE_4__, i32, %struct.snd_soundfont*, i32 }
%struct.TYPE_4__ = type { i32, i32 (i32, %struct.snd_sf_zone*, i32)*, i32 (i32)* }
%struct.snd_sf_zone = type { i64, %struct.TYPE_3__, %struct.snd_sf_zone* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soundfont = type { %struct.snd_sf_zone*, %struct.snd_sf_zone*, %struct.snd_soundfont* }
%struct.snd_sf_sample = type { i64, %struct.TYPE_3__, %struct.snd_sf_sample* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soundfont_remove_unlocked(%struct.snd_sf_list* %0) #0 {
  %2 = alloca %struct.snd_sf_list*, align 8
  %3 = alloca %struct.snd_soundfont*, align 8
  %4 = alloca %struct.snd_sf_zone*, align 8
  %5 = alloca %struct.snd_sf_zone*, align 8
  %6 = alloca %struct.snd_sf_sample*, align 8
  %7 = alloca %struct.snd_sf_sample*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %2, align 8
  %8 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %9 = call i32 @lock_preset(%struct.snd_sf_list* %8)
  %10 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %11 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %17 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %21 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %19(i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %27 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %31 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %30, i32 0, i32 7
  %32 = load %struct.snd_soundfont*, %struct.snd_soundfont** %31, align 8
  store %struct.snd_soundfont* %32, %struct.snd_soundfont** %3, align 8
  br label %33

33:                                               ; preds = %125, %25
  %34 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %35 = icmp ne %struct.snd_soundfont* %34, null
  br i1 %35, label %36, label %129

36:                                               ; preds = %33
  %37 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %38 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %37, i32 0, i32 1
  %39 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %38, align 8
  store %struct.snd_sf_zone* %39, %struct.snd_sf_zone** %4, align 8
  br label %40

40:                                               ; preds = %61, %36
  %41 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %42 = icmp ne %struct.snd_sf_zone* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %45 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %48 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %63

52:                                               ; preds = %43
  %53 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %54 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %53, i32 0, i32 2
  %55 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %54, align 8
  store %struct.snd_sf_zone* %55, %struct.snd_sf_zone** %5, align 8
  %56 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  %57 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %58 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %57, i32 0, i32 1
  store %struct.snd_sf_zone* %56, %struct.snd_sf_zone** %58, align 8
  %59 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %4, align 8
  %60 = call i32 @kfree(%struct.snd_sf_zone* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %5, align 8
  store %struct.snd_sf_zone* %62, %struct.snd_sf_zone** %4, align 8
  br label %40

63:                                               ; preds = %51, %40
  %64 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %65 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %64, i32 0, i32 0
  %66 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %65, align 8
  %67 = bitcast %struct.snd_sf_zone* %66 to %struct.snd_sf_sample*
  store %struct.snd_sf_sample* %67, %struct.snd_sf_sample** %6, align 8
  br label %68

68:                                               ; preds = %122, %63
  %69 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %70 = icmp ne %struct.snd_sf_sample* %69, null
  br i1 %70, label %71, label %124

71:                                               ; preds = %68
  %72 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %73 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %76 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %124

80:                                               ; preds = %71
  %81 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %82 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %81, i32 0, i32 2
  %83 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %82, align 8
  store %struct.snd_sf_sample* %83, %struct.snd_sf_sample** %7, align 8
  %84 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %7, align 8
  %85 = bitcast %struct.snd_sf_sample* %84 to %struct.snd_sf_zone*
  %86 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %87 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %86, i32 0, i32 0
  store %struct.snd_sf_zone* %85, %struct.snd_sf_zone** %87, align 8
  %88 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %89 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %93 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %99 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32 (i32, %struct.snd_sf_zone*, i32)*, i32 (i32, %struct.snd_sf_zone*, i32)** %100, align 8
  %102 = icmp ne i32 (i32, %struct.snd_sf_zone*, i32)* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %80
  %104 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %105 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32 (i32, %struct.snd_sf_zone*, i32)*, i32 (i32, %struct.snd_sf_zone*, i32)** %106, align 8
  %108 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %109 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %113 = bitcast %struct.snd_sf_sample* %112 to %struct.snd_sf_zone*
  %114 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %115 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 %107(i32 %111, %struct.snd_sf_zone* %113, i32 %116)
  br label %118

118:                                              ; preds = %103, %80
  %119 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %120 = bitcast %struct.snd_sf_sample* %119 to %struct.snd_sf_zone*
  %121 = call i32 @kfree(%struct.snd_sf_zone* %120)
  br label %122

122:                                              ; preds = %118
  %123 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %7, align 8
  store %struct.snd_sf_sample* %123, %struct.snd_sf_sample** %6, align 8
  br label %68

124:                                              ; preds = %79, %68
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.snd_soundfont*, %struct.snd_soundfont** %3, align 8
  %127 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %126, i32 0, i32 2
  %128 = load %struct.snd_soundfont*, %struct.snd_soundfont** %127, align 8
  store %struct.snd_soundfont* %128, %struct.snd_soundfont** %3, align 8
  br label %33

129:                                              ; preds = %33
  %130 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %131 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %134 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %136 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %139 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  %140 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %141 = call i32 @rebuild_presets(%struct.snd_sf_list* %140)
  %142 = load %struct.snd_sf_list*, %struct.snd_sf_list** %2, align 8
  %143 = call i32 @unlock_preset(%struct.snd_sf_list* %142)
  ret i32 0
}

declare dso_local i32 @lock_preset(%struct.snd_sf_list*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_sf_zone*) #1

declare dso_local i32 @rebuild_presets(%struct.snd_sf_list*) #1

declare dso_local i32 @unlock_preset(%struct.snd_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
