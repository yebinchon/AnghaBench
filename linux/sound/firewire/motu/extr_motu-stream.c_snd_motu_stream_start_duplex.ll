; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_snd_motu_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_snd_motu_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.snd_motu*, i32)* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"fail to start isochronous comm: %d\0A\00", align 1
@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fail to enable frame fetching: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_motu_stream_start_duplex(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %7 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %8 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %12 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %168

16:                                               ; preds = %1
  %17 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %18 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %17, i32 0, i32 4
  %19 = call i64 @amdtp_streaming_error(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %23 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %22, i32 0, i32 5
  %24 = call i64 @amdtp_streaming_error(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %16
  %27 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %28 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %27, i32 0, i32 1
  %29 = call i32 @amdtp_domain_stop(i32* %28)
  %30 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %31 = call i32 @finish_session(%struct.snd_motu* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %35 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %34, i32 0, i32 2
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = call %struct.TYPE_10__* @fw_parent_device(%struct.TYPE_11__* %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %33, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %32
  %44 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %45 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %44, i32 0, i32 6
  %46 = call i32 @fw_iso_resources_update(%struct.TYPE_12__* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %168

51:                                               ; preds = %43
  %52 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %53 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %52, i32 0, i32 7
  %54 = call i32 @fw_iso_resources_update(%struct.TYPE_12__* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %168

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %62 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %61, i32 0, i32 4
  %63 = call i32 @amdtp_stream_running(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %160, label %65

65:                                               ; preds = %60
  %66 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %67 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = call %struct.TYPE_10__* @fw_parent_device(%struct.TYPE_11__* %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %6, align 4
  %72 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %73 = call i32 @ensure_packet_formats(%struct.snd_motu* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %168

78:                                               ; preds = %65
  %79 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %80 = call i32 @begin_session(%struct.snd_motu* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %85 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %161

90:                                               ; preds = %78
  %91 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %92 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %91, i32 0, i32 1
  %93 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %94 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %93, i32 0, i32 5
  %95 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %96 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @amdtp_domain_add_stream(i32* %92, i32* %94, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %161

104:                                              ; preds = %90
  %105 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %106 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %105, i32 0, i32 1
  %107 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %108 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %107, i32 0, i32 4
  %109 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %110 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @amdtp_domain_add_stream(i32* %106, i32* %108, i32 %112, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %161

118:                                              ; preds = %104
  %119 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %120 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %119, i32 0, i32 1
  %121 = call i32 @amdtp_domain_start(i32* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %161

125:                                              ; preds = %118
  %126 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %127 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %126, i32 0, i32 5
  %128 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %129 = call i32 @amdtp_stream_wait_callback(i32* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %133 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %132, i32 0, i32 4
  %134 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %135 = call i32 @amdtp_stream_wait_callback(i32* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %131, %125
  %138 = load i32, i32* @ETIMEDOUT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %161

140:                                              ; preds = %131
  %141 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %142 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %141, i32 0, i32 3
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32 (%struct.snd_motu*, i32)*, i32 (%struct.snd_motu*, i32)** %146, align 8
  %148 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %149 = call i32 %147(%struct.snd_motu* %148, i32 1)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %140
  %153 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %154 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %153, i32 0, i32 2
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %161

159:                                              ; preds = %140
  br label %160

160:                                              ; preds = %159, %60
  store i32 0, i32* %2, align 4
  br label %168

161:                                              ; preds = %152, %137, %124, %117, %103, %83
  %162 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %163 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %162, i32 0, i32 1
  %164 = call i32 @amdtp_domain_stop(i32* %163)
  %165 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %166 = call i32 @finish_session(%struct.snd_motu* %165)
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %161, %160, %76, %57, %49, %15
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_motu*) #1

declare dso_local %struct.TYPE_10__* @fw_parent_device(%struct.TYPE_11__*) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_12__*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @ensure_packet_formats(%struct.snd_motu*) #1

declare dso_local i32 @begin_session(%struct.snd_motu*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, i32*, i32, i32) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
