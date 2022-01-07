; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_pcm_chmap_ctl_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_pcm_chmap_ctl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_pcm_chmap = type { %struct.snd_pcm_chmap_elem* }
%struct.snd_pcm_chmap_elem = type { i32, i32* }
%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pcm_chmap_ctl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_chmap_ctl_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pcm_chmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_pcm_chmap* %12, %struct.snd_pcm_chmap** %6, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 1
  %16 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %18, align 8
  %20 = icmp ne %struct.snd_pcm_chmap_elem* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.snd_pcm_substream* @snd_pcm_chmap_substream(%struct.snd_pcm_chmap* %25, i32 %26)
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %8, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %29 = icmp ne %struct.snd_pcm_substream* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %105

33:                                               ; preds = %24
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @memset(i32* %38, i32 0, i32 8)
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %105

45:                                               ; preds = %33
  %46 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %46, i32 0, i32 0
  %48 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %47, align 8
  store %struct.snd_pcm_chmap_elem* %48, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %49

49:                                               ; preds = %99, %45
  %50 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %49
  %55 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %54
  %65 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %66 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @valid_chmap_channels(%struct.snd_pcm_chmap* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %85, i32* %93, align 4
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %72

97:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %105

98:                                               ; preds = %64, %54
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem* %100, i32 1
  store %struct.snd_pcm_chmap_elem* %101, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %49

102:                                              ; preds = %49
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %97, %44, %30, %21
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.snd_pcm_chmap* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local %struct.snd_pcm_substream* @snd_pcm_chmap_substream(%struct.snd_pcm_chmap*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @valid_chmap_channels(%struct.snd_pcm_chmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
