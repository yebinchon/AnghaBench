; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_change_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_change_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, i32*, i32)* @change_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_volume(%struct.urb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %138

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %70

28:                                               ; preds = %25
  %29 = load %struct.urb*, %struct.urb** %4, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  store i32* %39, i32** %9, align 8
  br label %40

40:                                               ; preds = %66, %28
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ult i32* %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call signext i16 @le16_to_cpu(i32 %46)
  store i16 %47, i16* %10, align 2
  %48 = load i16, i16* %10, align 2
  %49 = sext i16 %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %49, %55
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i8* @clamp(i32 %58, i32 -32768, i32 32767)
  %60 = ptrtoint i8* %59 to i16
  store i16 %60, i16* %10, align 2
  %61 = load i16, i16* %10, align 2
  %62 = call i32 @cpu_to_le16(i16 signext %61)
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %44
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %8, align 8
  br label %40

69:                                               ; preds = %40
  br label %138

70:                                               ; preds = %25
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %73, label %137

73:                                               ; preds = %70
  %74 = load %struct.urb*, %struct.urb** %4, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.urb*, %struct.urb** %4, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %133, %73
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = add nsw i32 %92, %97
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = shl i32 %102, 16
  %104 = add nsw i32 %98, %103
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %105, %111
  %113 = ashr i32 %112, 8
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i8* @clamp(i32 %114, i32 -8388608, i32 8388607)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i32, i32* %14, align 4
  %122 = ashr i32 %121, 8
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8 %123, i8* %125, align 1
  %126 = load i32, i32* %14, align 4
  %127 = ashr i32 %126, 16
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %12, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  store i8 %128, i8* %130, align 1
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %88
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  store i8* %135, i8** %12, align 8
  br label %84

136:                                              ; preds = %84
  br label %137

137:                                              ; preds = %136, %70
  br label %138

138:                                              ; preds = %24, %137, %69
  ret void
}

declare dso_local signext i16 @le16_to_cpu(i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
