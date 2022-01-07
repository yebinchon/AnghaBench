; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lola_stream = type { i32, i32, i32, i32 }

@PLAY = common dso_local global i32 0, align 4
@MAX_STREAM_IN_COUNT = common dso_local global i64 0, align 8
@LOLA_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't read wcaps for 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid wcaps 0x%x for 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOLA_PAR_STREAM_FORMATS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't read FORMATS 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid formats 0x%x for 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, %struct.lola_stream*, i32, i32, i32)* @lola_init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_init_stream(%struct.lola* %0, %struct.lola_stream* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lola*, align 8
  %8 = alloca %struct.lola_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %7, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %16 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %19 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %22 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PLAY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i64, i64* @MAX_STREAM_IN_COUNT, align 8
  %28 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %29 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  br label %34

34:                                               ; preds = %26, %5
  %35 = load %struct.lola*, %struct.lola** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @LOLA_PAR_AUDIO_WIDGET_CAP, align 4
  %38 = call i32 @lola_read_param(%struct.lola* %35, i32 %36, i32 %37, i32* %12)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.lola*, %struct.lola** %7, align 8
  %43 = getelementptr inbounds %struct.lola, %struct.lola* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %137

50:                                               ; preds = %34
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @PLAY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 15732223
  %57 = icmp ne i32 %56, 16
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.lola*, %struct.lola** %7, align 8
  %60 = getelementptr inbounds %struct.lola, %struct.lola* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %137

69:                                               ; preds = %54
  br label %97

70:                                               ; preds = %50
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 15731967
  %73 = icmp ne i32 %72, 1048592
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load %struct.lola*, %struct.lola** %7, align 8
  %76 = getelementptr inbounds %struct.lola, %struct.lola* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %137

85:                                               ; preds = %70
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, 4608
  %88 = icmp eq i32 %87, 4608
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.lola*, %struct.lola** %7, align 8
  %93 = getelementptr inbounds %struct.lola, %struct.lola* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %85
  br label %97

97:                                               ; preds = %96, %69
  %98 = load %struct.lola*, %struct.lola** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @LOLA_PAR_STREAM_FORMATS, align 4
  %101 = call i32 @lola_read_param(%struct.lola* %98, i32 %99, i32 %100, i32* %12)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load %struct.lola*, %struct.lola** %7, align 8
  %106 = getelementptr inbounds %struct.lola, %struct.lola* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %137

113:                                              ; preds = %97
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 3
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %120 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %121
  %126 = load %struct.lola*, %struct.lola** %7, align 8
  %127 = getelementptr inbounds %struct.lola, %struct.lola* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %137

136:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %125, %104, %74, %58, %41
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
