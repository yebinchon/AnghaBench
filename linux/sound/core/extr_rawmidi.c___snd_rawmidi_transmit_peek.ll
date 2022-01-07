; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c___snd_rawmidi_transmit_peek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c___snd_rawmidi_transmit_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i32, %struct.snd_rawmidi_runtime* }
%struct.snd_rawmidi_runtime = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"snd_rawmidi_transmit_peek: output is not active!!!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_rawmidi_runtime*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %12, align 8
  store %struct.snd_rawmidi_runtime* %13, %struct.snd_rawmidi_runtime** %10, align 8
  %14 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %15 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %20 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rmidi_dbg(i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %140

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %26 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %27 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %138

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %39 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %6, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %137

49:                                               ; preds = %34
  %50 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %51 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %55 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %49
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %70 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = icmp sgt i32 %65, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %76 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %79 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %74, %64
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %85 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %88 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memcpy(i8* %83, i8* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %82
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %104 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %107 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %109, %110
  %112 = icmp sgt i32 %102, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %115 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %118 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %113, %101
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %10, align 8
  %129 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @memcpy(i8* %127, i8* %130, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %123, %82
  br label %137

137:                                              ; preds = %136, %37
  br label %138

138:                                              ; preds = %137, %33
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %18
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @rmidi_dbg(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
