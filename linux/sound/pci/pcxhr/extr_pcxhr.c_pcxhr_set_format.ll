; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_stream = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.snd_pcxhr = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@HEADER_FMT_BASE_LIN = common dso_local global i32 0, align 4
@HEADER_FMT_16BITS = common dso_local global i32 0, align 4
@HEADER_FMT_INTEL = common dso_local global i32 0, align 4
@HEADER_FMT_24BITS = common dso_local global i32 0, align 4
@HEADER_FMT_BASE_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error pcxhr_set_format() : unknown format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HEADER_FMT_UPTO11 = common dso_local global i32 0, align 4
@HEADER_FMT_UPTO32 = common dso_local global i32 0, align 4
@HEADER_FMT_MONO = common dso_local global i32 0, align 4
@CMD_FORMAT_STREAM_IN = common dso_local global i32 0, align 4
@CMD_FORMAT_STREAM_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR pcxhr_set_format err=%x;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_stream*)* @pcxhr_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_set_format(%struct.pcxhr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcxhr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcxhr*, align 8
  %9 = alloca %struct.pcxhr_rmh, align 8
  %10 = alloca i32, align 4
  store %struct.pcxhr_stream* %0, %struct.pcxhr_stream** %3, align 8
  %11 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %12 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.TYPE_8__* %13)
  store %struct.snd_pcxhr* %14, %struct.snd_pcxhr** %8, align 8
  %15 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %16 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %44 [
    i32 128, label %18
    i32 131, label %20
    i32 132, label %26
    i32 129, label %30
    i32 130, label %36
    i32 133, label %40
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @HEADER_FMT_BASE_LIN, align 4
  store i32 %19, i32* %10, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load i32, i32* @HEADER_FMT_BASE_LIN, align 4
  %22 = load i32, i32* @HEADER_FMT_16BITS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HEADER_FMT_INTEL, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %10, align 4
  br label %53

26:                                               ; preds = %1
  %27 = load i32, i32* @HEADER_FMT_BASE_LIN, align 4
  %28 = load i32, i32* @HEADER_FMT_16BITS, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %10, align 4
  br label %53

30:                                               ; preds = %1
  %31 = load i32, i32* @HEADER_FMT_BASE_LIN, align 4
  %32 = load i32, i32* @HEADER_FMT_24BITS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HEADER_FMT_INTEL, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  br label %53

36:                                               ; preds = %1
  %37 = load i32, i32* @HEADER_FMT_BASE_LIN, align 4
  %38 = load i32, i32* @HEADER_FMT_24BITS, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %10, align 4
  br label %53

40:                                               ; preds = %1
  %41 = load i32, i32* @HEADER_FMT_BASE_FLOAT, align 4
  %42 = load i32, i32* @HEADER_FMT_INTEL, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %10, align 4
  br label %53

44:                                               ; preds = %1
  %45 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %207

53:                                               ; preds = %40, %36, %30, %26, %20, %18
  %54 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %55 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %59, 32000
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %65, 11025
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* @HEADER_FMT_UPTO11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @HEADER_FMT_UPTO32, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %61, %53
  %77 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %78 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @HEADER_FMT_MONO, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %87 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %100

94:                                               ; preds = %85
  %95 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %96 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %95, i32 0, i32 3
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  br label %100

100:                                              ; preds = %94, %93
  %101 = phi i32 [ 0, %93 ], [ %99, %94 ]
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @CMD_FORMAT_STREAM_IN, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @CMD_FORMAT_STREAM_OUT, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %9, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %113 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %9, i32 %111, i32 %116, i32 %117, i32 0)
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %108
  %122 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %123 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = call i64 @DSP_EXT_CMD_SET(%struct.TYPE_9__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, 1024
  store i32 %132, i32* %130, align 4
  br label %139

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, 4096
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %127
  br label %140

140:                                              ; preds = %139, %108
  %141 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 0, i32* %143, align 4
  %144 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 1
  store i32 2, i32* %144, align 8
  %145 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %146 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i64 @DSP_EXT_CMD_SET(%struct.TYPE_9__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %140
  %151 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %152 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %150
  %160 = load %struct.pcxhr_stream*, %struct.pcxhr_stream** %3, align 8
  %161 = getelementptr inbounds %struct.pcxhr_stream, %struct.pcxhr_stream* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 1
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 1, i32 3
  %166 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  store i32 %165, i32* %168, align 4
  %169 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 1
  store i32 3, i32* %169, align 8
  br label %170

170:                                              ; preds = %159, %150
  br label %171

171:                                              ; preds = %170, %140
  %172 = load i32, i32* %10, align 4
  %173 = lshr i32 %172, 8
  %174 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  store i32 %173, i32* %180, align 4
  %181 = load i32, i32* %10, align 4
  %182 = and i32 %181, 255
  %183 = shl i32 %182, 16
  %184 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %9, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  store i32 %183, i32* %190, align 4
  %191 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %192 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = call i32 @pcxhr_send_msg(%struct.TYPE_9__* %193, %struct.pcxhr_rmh* %9)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %171
  %198 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %199 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %4, align 4
  %204 = call i32 (i32, i8*, ...) @dev_err(i32 %202, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %197, %171
  %206 = load i32, i32* %4, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %44
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.snd_pcxhr* @snd_pcm_substream_chip(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local i64 @DSP_EXT_CMD_SET(%struct.TYPE_9__*) #1

declare dso_local i32 @pcxhr_send_msg(%struct.TYPE_9__*, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
