; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_create_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_create_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__*, %struct.xen_front_cfg_card }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xen_front_cfg_card = type { i32, %struct.xen_front_cfg_pcm_instance* }
%struct.xen_front_cfg_pcm_instance = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EVTCHNL_TYPE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error allocating control channel\0A\00", align 1
@EVTCHNL_TYPE_EVT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error allocating in-event channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_evtchnl_create_all(%struct.xen_snd_front_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_snd_front_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_front_cfg_card*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xen_front_cfg_pcm_instance*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %14 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %13, i32 0, i32 3
  store %struct.xen_front_cfg_card* %14, %struct.xen_front_cfg_card** %6, align 8
  %15 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %16 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_8__* @kcalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %23 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %22, i32 0, i32 1
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %25 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %162

31:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %151, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %6, align 8
  %35 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %154

38:                                               ; preds = %32
  %39 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %6, align 8
  %40 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %39, i32 0, i32 1
  %41 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %41, i64 %43
  store %struct.xen_front_cfg_pcm_instance* %44, %struct.xen_front_cfg_pcm_instance** %10, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %94, %38
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %10, align 8
  %48 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %10, align 8
  %53 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %63 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* @EVTCHNL_TYPE_REQ, align 4
  %70 = call i32 @evtchnl_alloc(%struct.xen_snd_front_info* %60, i32 %61, i32* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %51
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %158

76:                                               ; preds = %51
  %77 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %80 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* @EVTCHNL_TYPE_EVT, align 4
  %87 = call i32 @evtchnl_alloc(%struct.xen_snd_front_info* %77, i32 %78, i32* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %158

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %45

97:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %147, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %10, align 8
  %101 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %150

104:                                              ; preds = %98
  %105 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %10, align 8
  %106 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %12, align 4
  %113 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %116 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* @EVTCHNL_TYPE_REQ, align 4
  %123 = call i32 @evtchnl_alloc(%struct.xen_snd_front_info* %113, i32 %114, i32* %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %104
  %127 = load %struct.device*, %struct.device** %7, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %158

129:                                              ; preds = %104
  %130 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %133 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* @EVTCHNL_TYPE_EVT, align 4
  %140 = call i32 @evtchnl_alloc(%struct.xen_snd_front_info* %130, i32 %131, i32* %138, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load %struct.device*, %struct.device** %7, align 8
  %145 = call i32 @dev_err(%struct.device* %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %158

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %98

150:                                              ; preds = %98
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %32

154:                                              ; preds = %32
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %157 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  store i32 0, i32* %3, align 4
  br label %162

158:                                              ; preds = %143, %126, %90, %73
  %159 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %4, align 8
  %160 = call i32 @xen_snd_front_evtchnl_free_all(%struct.xen_snd_front_info* %159)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %154, %28
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_8__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @evtchnl_alloc(%struct.xen_snd_front_info*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @xen_snd_front_evtchnl_free_all(%struct.xen_snd_front_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
