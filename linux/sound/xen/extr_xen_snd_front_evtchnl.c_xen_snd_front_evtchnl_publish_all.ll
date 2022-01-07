; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_publish_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_publish_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { i32, %struct.TYPE_5__*, %struct.xen_front_cfg_card }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xen_front_cfg_card = type { i32, %struct.xen_front_cfg_pcm_instance* }
%struct.xen_front_cfg_pcm_instance = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@XENSND_FIELD_RING_REF = common dso_local global i32 0, align 4
@XENSND_FIELD_EVT_CHNL = common dso_local global i32 0, align 4
@XENSND_FIELD_EVT_RING_REF = common dso_local global i32 0, align 4
@XENSND_FIELD_EVT_EVT_CHNL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"writing XenStore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_evtchnl_publish_all(%struct.xen_snd_front_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_snd_front_info*, align 8
  %4 = alloca %struct.xen_front_cfg_card*, align 8
  %5 = alloca %struct.xenbus_transaction, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_front_cfg_pcm_instance*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %3, align 8
  %11 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %12 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %11, i32 0, i32 2
  store %struct.xen_front_cfg_card* %12, %struct.xen_front_cfg_card** %4, align 8
  br label %13

13:                                               ; preds = %186, %1
  %14 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %19 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @xenbus_dev_fatal(i32 %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %205

24:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %172, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %4, align 8
  %28 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %175

31:                                               ; preds = %25
  %32 = load %struct.xen_front_cfg_card*, %struct.xen_front_cfg_card** %4, align 8
  %33 = getelementptr inbounds %struct.xen_front_cfg_card, %struct.xen_front_cfg_card* %32, i32 0, i32 1
  %34 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %34, i64 %36
  store %struct.xen_front_cfg_pcm_instance* %37, %struct.xen_front_cfg_pcm_instance** %8, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %101, %31
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %41 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %104

44:                                               ; preds = %38
  %45 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %46 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %54 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %61 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XENSND_FIELD_RING_REF, align 4
  %69 = load i32, i32* @XENSND_FIELD_EVT_CHNL, align 4
  %70 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @evtchnl_publish(i32 %71, i32* %59, i32 %67, i32 %68, i32 %69)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %44
  br label %194

76:                                               ; preds = %44
  %77 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %78 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %85 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @XENSND_FIELD_EVT_RING_REF, align 4
  %93 = load i32, i32* @XENSND_FIELD_EVT_EVT_CHNL, align 4
  %94 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @evtchnl_publish(i32 %95, i32* %83, i32 %91, i32 %92, i32 %93)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %76
  br label %194

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %38

104:                                              ; preds = %38
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %168, %104
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %108 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %171

111:                                              ; preds = %105
  %112 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %113 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %112, i32 0, i32 2
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %10, align 4
  %120 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %121 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %128 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %127, i32 0, i32 2
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @XENSND_FIELD_RING_REF, align 4
  %136 = load i32, i32* @XENSND_FIELD_EVT_CHNL, align 4
  %137 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @evtchnl_publish(i32 %138, i32* %126, i32 %134, i32 %135, i32 %136)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %111
  br label %194

143:                                              ; preds = %111
  %144 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %145 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %144, i32 0, i32 1
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %8, align 8
  %152 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %151, i32 0, i32 2
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @XENSND_FIELD_EVT_RING_REF, align 4
  %160 = load i32, i32* @XENSND_FIELD_EVT_EVT_CHNL, align 4
  %161 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @evtchnl_publish(i32 %162, i32* %150, i32 %158, i32 %159, i32 %160)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %143
  br label %194

167:                                              ; preds = %143
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %105

171:                                              ; preds = %105
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %25

175:                                              ; preds = %25
  %176 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @xenbus_transaction_end(i32 %177, i32 0)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %175
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @EAGAIN, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %13

187:                                              ; preds = %181
  %188 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %189 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @xenbus_dev_fatal(i32 %190, i32 %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %198

193:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %205

194:                                              ; preds = %166, %142, %99, %75
  %195 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @xenbus_transaction_end(i32 %196, i32 1)
  br label %198

198:                                              ; preds = %194, %187
  %199 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %3, align 8
  %200 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @xenbus_dev_fatal(i32 %201, i32 %202, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %198, %193, %17
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local i32 @evtchnl_publish(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
