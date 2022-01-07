; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isight = type { i64, i32, %struct.TYPE_8__, i32*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@REG_SAMPLE_RATE = common dso_local global i32 0, align 4
@RATE_48000 = common dso_local global i32 0, align 4
@REG_AUDIO_ENABLE = common dso_local global i32 0, align 4
@AUDIO_ENABLE = common dso_local global i32 0, align 4
@FW_ISO_CONTEXT_RECEIVE = common dso_local global i32 0, align 4
@isight_packet = common dso_local global i32 0, align 4
@QUEUE_LENGTH = common dso_local global i32 0, align 4
@audio_packet = common dso_local global i32 0, align 4
@FW_ISO_CONTEXT_MATCH_ALL_TAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isight*)* @isight_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isight_start_streaming(%struct.isight* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isight*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isight* %0, %struct.isight** %3, align 8
  %6 = load %struct.isight*, %struct.isight** %3, align 8
  %7 = getelementptr inbounds %struct.isight, %struct.isight* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.isight*, %struct.isight** %3, align 8
  %12 = getelementptr inbounds %struct.isight, %struct.isight* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.isight*, %struct.isight** %3, align 8
  %17 = call i32 @isight_stop_streaming(%struct.isight* %16)
  br label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %136

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.isight*, %struct.isight** %3, align 8
  %22 = load i32, i32* @REG_SAMPLE_RATE, align 4
  %23 = load i32, i32* @RATE_48000, align 4
  %24 = call i32 @cpu_to_be32(i32 %23)
  %25 = call i32 @reg_write(%struct.isight* %21, i32 %22, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %134

29:                                               ; preds = %20
  %30 = load %struct.isight*, %struct.isight** %3, align 8
  %31 = call i32 @isight_connect(%struct.isight* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %134

35:                                               ; preds = %29
  %36 = load %struct.isight*, %struct.isight** %3, align 8
  %37 = load i32, i32* @REG_AUDIO_ENABLE, align 4
  %38 = load i32, i32* @AUDIO_ENABLE, align 4
  %39 = call i32 @cpu_to_be32(i32 %38)
  %40 = call i32 @reg_write(%struct.isight* %36, i32 %37, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %127

44:                                               ; preds = %35
  %45 = load %struct.isight*, %struct.isight** %3, align 8
  %46 = getelementptr inbounds %struct.isight, %struct.isight* %45, i32 0, i32 5
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @FW_ISO_CONTEXT_RECEIVE, align 4
  %51 = load %struct.isight*, %struct.isight** %3, align 8
  %52 = getelementptr inbounds %struct.isight, %struct.isight* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.isight*, %struct.isight** %3, align 8
  %56 = getelementptr inbounds %struct.isight, %struct.isight* %55, i32 0, i32 5
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @isight_packet, align 4
  %61 = load %struct.isight*, %struct.isight** %3, align 8
  %62 = call i32* @fw_iso_context_create(i32 %49, i32 %50, i32 %54, i32 %59, i32 4, i32 %60, %struct.isight* %61)
  %63 = load %struct.isight*, %struct.isight** %3, align 8
  %64 = getelementptr inbounds %struct.isight, %struct.isight* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load %struct.isight*, %struct.isight** %3, align 8
  %66 = getelementptr inbounds %struct.isight, %struct.isight* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @IS_ERR(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %44
  %71 = load %struct.isight*, %struct.isight** %3, align 8
  %72 = getelementptr inbounds %struct.isight, %struct.isight* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @PTR_ERR(i32* %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.isight*, %struct.isight** %3, align 8
  %76 = getelementptr inbounds %struct.isight, %struct.isight* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  br label %127

77:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @QUEUE_LENGTH, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %78
  %83 = load %struct.isight*, %struct.isight** %3, align 8
  %84 = getelementptr inbounds %struct.isight, %struct.isight* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.isight*, %struct.isight** %3, align 8
  %87 = getelementptr inbounds %struct.isight, %struct.isight* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.isight*, %struct.isight** %3, align 8
  %90 = getelementptr inbounds %struct.isight, %struct.isight* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @fw_iso_context_queue(i32* %85, i32* @audio_packet, i32* %88, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %82
  br label %120

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %78

106:                                              ; preds = %78
  %107 = load %struct.isight*, %struct.isight** %3, align 8
  %108 = getelementptr inbounds %struct.isight, %struct.isight* %107, i32 0, i32 1
  store i32 1, i32* %108, align 8
  %109 = load %struct.isight*, %struct.isight** %3, align 8
  %110 = getelementptr inbounds %struct.isight, %struct.isight* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.isight*, %struct.isight** %3, align 8
  %112 = getelementptr inbounds %struct.isight, %struct.isight* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @FW_ISO_CONTEXT_MATCH_ALL_TAGS, align 4
  %115 = call i32 @fw_iso_context_start(i32* %113, i32 -1, i32 0, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %120

119:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %136

120:                                              ; preds = %118, %101
  %121 = load %struct.isight*, %struct.isight** %3, align 8
  %122 = getelementptr inbounds %struct.isight, %struct.isight* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @fw_iso_context_destroy(i32* %123)
  %125 = load %struct.isight*, %struct.isight** %3, align 8
  %126 = getelementptr inbounds %struct.isight, %struct.isight* %125, i32 0, i32 3
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %70, %43
  %128 = load %struct.isight*, %struct.isight** %3, align 8
  %129 = getelementptr inbounds %struct.isight, %struct.isight* %128, i32 0, i32 2
  %130 = call i32 @fw_iso_resources_free(%struct.TYPE_8__* %129)
  %131 = load %struct.isight*, %struct.isight** %3, align 8
  %132 = load i32, i32* @REG_AUDIO_ENABLE, align 4
  %133 = call i32 @reg_write(%struct.isight* %131, i32 %132, i32 0)
  br label %134

134:                                              ; preds = %127, %34, %28
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %119, %18
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @isight_stop_streaming(%struct.isight*) #1

declare dso_local i32 @reg_write(%struct.isight*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @isight_connect(%struct.isight*) #1

declare dso_local i32* @fw_iso_context_create(i32, i32, i32, i32, i32, i32, %struct.isight*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @fw_iso_context_queue(i32*, i32*, i32*, i32) #1

declare dso_local i32 @fw_iso_context_start(i32*, i32, i32, i32) #1

declare dso_local i32 @fw_iso_context_destroy(i32*) #1

declare dso_local i32 @fw_iso_resources_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
