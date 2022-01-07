; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lx6464es = type { i32*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"->lx_pcm_prepare\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to stop hardware. Error code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to close hardware. Error code %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"opening hardware\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to open hardware. Error code %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to start hardware. Error code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lx_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.lx6464es* %7, %struct.lx6464es** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %15 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %21 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %24 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %1
  %32 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = call i32 @lx_hardware_stop(%struct.lx6464es* %32, %struct.snd_pcm_substream* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %123

45:                                               ; preds = %31
  %46 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = call i32 @lx_hardware_close(%struct.lx6464es* %46, %struct.snd_pcm_substream* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %53 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %123

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %62 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %69 = call i32 @lx_hardware_open(%struct.lx6464es* %67, %struct.snd_pcm_substream* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  %73 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %74 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %123

80:                                               ; preds = %60
  %81 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %83 = call i32 @lx_hardware_start(%struct.lx6464es* %81, %struct.snd_pcm_substream* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %88 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %123

94:                                               ; preds = %80
  %95 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %96 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 1, i32* %100, align 4
  %101 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %102 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %103, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %94
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %120 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %113, %110
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %86, %72, %51, %37
  %124 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %125 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.lx6464es* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_hardware_stop(%struct.lx6464es*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lx_hardware_close(%struct.lx6464es*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @lx_hardware_open(%struct.lx6464es*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @lx_hardware_start(%struct.lx6464es*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
