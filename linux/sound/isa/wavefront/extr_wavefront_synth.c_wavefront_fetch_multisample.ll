; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_fetch_multisample.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_fetch_multisample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i8* }

@WFC_UPLOAD_MULTISAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"upload multisample failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WF_DEBUG_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"msample %d has %d samples\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"upload multisample failed during sample loop.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"msample sample[%d] = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @wavefront_fetch_multisample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_fetch_multisample(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %16 = call i32 @munge_int32(i32 %14, i8* %15, i32 2)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @WFC_UPLOAD_MULTISAMPLE, align 4
  %19 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %21 = call i64 @snd_wavefront_cmd(i32* %17, i32 %18, i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 @snd_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %98

27:                                               ; preds = %2
  %28 = load i32, i32* @WF_DEBUG_DATA, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @DPRINT(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8 zeroext %33)
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8 %36, i8* %40, align 8
  %41 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 1, %43
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %94, %27
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @wavefront_read(i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @snd_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %98

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %59, i8* %60, align 1
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @wavefront_read(i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32 @snd_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %98

68:                                               ; preds = %57
  %69 = load i32, i32* %11, align 4
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %70, i8* %71, align 1
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %73 = call zeroext i8 @demunge_int32(i8* %72, i32 2)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %73, i8* %81, align 1
  %82 = load i32, i32* @WF_DEBUG_DATA, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @DPRINT(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %83, i8 zeroext %92)
  br label %94

94:                                               ; preds = %68
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %45

97:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %64, %53, %23
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @munge_int32(i32, i8*, i32) #1

declare dso_local i64 @snd_wavefront_cmd(i32*, i32, i8*, i8*) #1

declare dso_local i32 @snd_printk(i8*) #1

declare dso_local i32 @DPRINT(i32, i8*, i32, i8 zeroext) #1

declare dso_local i32 @wavefront_read(i32*) #1

declare dso_local zeroext i8 @demunge_int32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
