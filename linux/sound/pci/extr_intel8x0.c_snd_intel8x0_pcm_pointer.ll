; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.intel8x0 = type { i32, i64 }
%struct.ichdev = type { i32, i64, i64, i64, i64, i64, i64 }

@ICH_REG_OFF_CIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_intel8x0_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.intel8x0*, align 8
  %5 = alloca %struct.ichdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.intel8x0* %14, %struct.intel8x0** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream* %15)
  store %struct.ichdev* %16, %struct.ichdev** %5, align 8
  store i32 10, i32* %9, align 4
  %17 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %18 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  br label %20

20:                                               ; preds = %75, %1
  %21 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %22 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %23 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICH_REG_OFF_CIV, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @igetbyte(%struct.intel8x0* %21, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %29 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %30 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %33 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i64 @igetword(%struct.intel8x0* %28, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %38 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %20
  %43 = call i32 @udelay(i32 10)
  br label %75

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %47 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %48 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ICH_REG_OFF_CIV, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @igetbyte(%struct.intel8x0* %46, i64 %51)
  %53 = icmp ne i32 %45, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %75

55:                                               ; preds = %44
  %56 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %57 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %79

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %64 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %65 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %68 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = call i64 @igetword(%struct.intel8x0* %63, i64 %70)
  %72 = icmp eq i64 %62, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %79

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %54, %42
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %9, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %20, label %79

79:                                               ; preds = %75, %73, %60
  %80 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %81 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %79
  %86 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %87 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = shl i64 %89, %88
  store i64 %90, i64* %6, align 8
  %91 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %92 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 %93, %94
  store i64 %95, i64* %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %7, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %102 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %85
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %109 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = udiv i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %11, align 4
  %113 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %114 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %117 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = udiv i64 %115, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %105
  %125 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %126 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %124, %105
  br label %129

129:                                              ; preds = %128, %85
  br label %130

130:                                              ; preds = %129, %79
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %133 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %135 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %139 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp uge i64 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %149

143:                                              ; preds = %130
  %144 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @bytes_to_frames(i32 %146, i64 %147)
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %142
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @igetbyte(%struct.intel8x0*, i64) #1

declare dso_local i64 @igetword(%struct.intel8x0*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
