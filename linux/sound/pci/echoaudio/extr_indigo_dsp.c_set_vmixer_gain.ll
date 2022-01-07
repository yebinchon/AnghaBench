; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_indigo_dsp.c_set_vmixer_gain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_indigo_dsp.c_set_vmixer_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32**, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"set_vmixer_gain: pipe %d, out %d = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i64, i64, i32)* @set_vmixer_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vmixer_gain(%struct.echoaudio* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %13 = call i64 @num_pipes_out(%struct.echoaudio* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %18 = call i64 @num_busses_out(%struct.echoaudio* %17)
  %19 = icmp uge i64 %16, %18
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi i1 [ true, %4 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %70

28:                                               ; preds = %20
  %29 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %30 = call i64 @wait_handshake(%struct.echoaudio* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %70

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %36, i32* %44, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %47 = call i64 @num_pipes_out(%struct.echoaudio* %46)
  %48 = mul i64 %45, %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %54 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %52, i32* %60, align 4
  %61 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %62 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %35, %32, %25
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @num_pipes_out(%struct.echoaudio*) #1

declare dso_local i64 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
