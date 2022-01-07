; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_audio_format_rates_v1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_format.c_parse_audio_format_rates_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i64 }
%struct.audioformat = type { i32, i32*, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%u:%d : invalid UAC_FORMAT_TYPE desc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"All rates were zero. Skipping format!\0A\00", align 1
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.audioformat*, i8*, i32)* @parse_audio_format_rates_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio_format_rates_v1(%struct.snd_usb_audio* %0, %struct.audioformat* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.audioformat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.audioformat* %1, %struct.audioformat** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 2, %30 ]
  %33 = mul nsw i32 3, %32
  %34 = add nsw i32 %25, %33
  %35 = icmp slt i32 %23, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %38 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %39 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %42 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @usb_audio_err(%struct.snd_usb_audio* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %224

47:                                               ; preds = %31
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %201

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kmalloc_array(i32 %51, i32 4, i32 %52)
  %54 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %55 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %57 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %224

63:                                               ; preds = %50
  %64 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %65 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %67 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %66, i32 0, i32 4
  store i32 0, i32* %67, align 4
  %68 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %69 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %68, i32 0, i32 3
  store i32 0, i32* %69, align 8
  store i32 0, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %186, %63
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %191

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i8* @combine_triple(i8* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %186

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 48000
  br i1 %88, label %89, label %121

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  %93 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %94 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @USB_ID(i32 3468, i32 513)
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %100 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @USB_ID(i32 3468, i32 258)
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %106 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @USB_ID(i32 3277, i32 177)
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104, %98, %92
  %111 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %112 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 5
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %117 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 392
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 96000, i32* %13, align 4
  br label %121

121:                                              ; preds = %120, %115, %110, %104, %89, %86
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 16000
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %126 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @USB_ID(i32 1054, i32 16484)
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %132 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @USB_ID(i32 1054, i32 16488)
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %124
  store i32 8000, i32* %13, align 4
  br label %137

137:                                              ; preds = %136, %130, %121
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %140 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %143 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %138, i32* %145, align 4
  %146 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %147 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %137
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %153 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %151, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150, %137
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %159 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %150
  %161 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %162 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %168 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = icmp ugt i32 %166, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165, %160
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %174 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %171, %165
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @snd_pcm_rate_to_rate_bit(i32 %176)
  %178 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %179 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %183 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %175, %85
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 3
  store i32 %190, i32* %12, align 4
  br label %72

191:                                              ; preds = %72
  %192 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %193 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = call i32 @hwc_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %224

200:                                              ; preds = %191
  br label %223

201:                                              ; preds = %47
  %202 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %203 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %204 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = call i8* @combine_triple(i8* %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %213 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  %219 = call i8* @combine_triple(i8* %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.audioformat*, %struct.audioformat** %7, align 8
  %222 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %201, %200
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %223, %196, %60, %36
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @usb_audio_err(%struct.snd_usb_audio*, i8*, i32, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i8* @combine_triple(i8*) #1

declare dso_local i64 @USB_ID(i32, i32) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @hwc_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
