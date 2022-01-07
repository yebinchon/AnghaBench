; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__*, %struct.pcm_vol* }
%struct.TYPE_12__ = type { i32 }
%struct.pcm_vol = type { i8*, i64, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_vortex_pcm_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcm_vol*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.TYPE_13__* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %9, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load %struct.pcm_vol*, %struct.pcm_vol** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %21, i64 %23
  store %struct.pcm_vol* %24, %struct.pcm_vol** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = call i64 @VORTEX_IS_QUAD(%struct.TYPE_13__* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 4, i32 2
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %136, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %139

34:                                               ; preds = %30
  %35 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %36 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %42, %52
  br i1 %53, label %54, label %135

54:                                               ; preds = %34
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %65 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %63, i8* %69, align 1
  %70 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %71 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %134

74:                                               ; preds = %54
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %79 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %91 [
    i32 1, label %84
    i32 2, label %90
    i32 4, label %107
  ]

84:                                               ; preds = %74
  %85 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %86 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  br label %115

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %74, %90
  %92 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %93 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %5, align 4
  br label %102

99:                                               ; preds = %91
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 %100, 2
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %94, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %7, align 4
  br label %115

107:                                              ; preds = %74
  %108 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %109 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %107, %102, %84
  %116 = load %struct.pcm_vol*, %struct.pcm_vol** %11, align 8
  %117 = getelementptr inbounds %struct.pcm_vol, %struct.pcm_vol* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %8, align 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i8, i8* %8, align 1
  %133 = call i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_13__* %123, i32 %130, i32 %131, i8 zeroext %132)
  br label %134

134:                                              ; preds = %115, %54
  store i32 1, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %34
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %30

139:                                              ; preds = %30
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_13__* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @VORTEX_IS_QUAD(%struct.TYPE_13__*) #1

declare dso_local i32 @vortex_mix_setinputvolumebyte(%struct.TYPE_13__*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
