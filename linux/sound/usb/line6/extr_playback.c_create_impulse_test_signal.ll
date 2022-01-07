; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_create_impulse_test_signal.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_create_impulse_test_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { i8*, i64, i8, i64 }
%struct.urb = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_line6_pcm*, %struct.urb*, i32)* @create_impulse_test_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_impulse_test_signal(%struct.snd_line6_pcm* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_line6_pcm*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %51

22:                                               ; preds = %3
  %23 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %24 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i16*
  store i16* %26, i16** %9, align 8
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to i16*
  store i16* %30, i16** %10, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %47, %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i16*, i16** %9, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 0
  %38 = load i16, i16* %37, align 2
  %39 = load i16*, i16** %10, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 0
  store i16 %38, i16* %40, align 2
  %41 = load i16*, i16** %10, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 1
  store i16 0, i16* %42, align 2
  %43 = load i16*, i16** %9, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 2
  store i16* %44, i16** %9, align 8
  %45 = load i16*, i16** %10, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 2
  store i16* %46, i16** %10, align 8
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %31

50:                                               ; preds = %31
  br label %111

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %56 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %13, align 8
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %14, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %106, %54
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %81, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 2
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %66

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i8*, i8** %14, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %14, align 8
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %61

109:                                              ; preds = %61
  br label %110

110:                                              ; preds = %109, %51
  br label %111

111:                                              ; preds = %110, %50
  %112 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %113 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %113, align 8
  %116 = icmp sle i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %119 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %118, i32 0, i32 2
  %120 = load i8, i8* %119, align 8
  %121 = load %struct.urb*, %struct.urb** %5, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 %120, i8* %127, align 1
  %128 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %129 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %4, align 8
  %132 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %117, %111
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
