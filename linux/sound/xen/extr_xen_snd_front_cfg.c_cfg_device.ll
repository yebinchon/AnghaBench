; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_cfg_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_cfg_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xen_front_cfg_pcm_instance = type { i32, i8*, i64, i8*, i64, i32, i32 }
%struct.snd_pcm_hardware = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@XBT_NIL = common dso_local global i32 0, align 4
@XENSND_FIELD_DEVICE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@VSND_MAX_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_snd_front_info*, %struct.xen_front_cfg_pcm_instance*, %struct.snd_pcm_hardware*, i8*, i32, i32*)* @cfg_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_device(%struct.xen_snd_front_info* %0, %struct.xen_front_cfg_pcm_instance* %1, %struct.snd_pcm_hardware* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_snd_front_info*, align 8
  %9 = alloca %struct.xen_front_cfg_pcm_instance*, align 8
  %10 = alloca %struct.snd_pcm_hardware*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [3 x i8], align 1
  store %struct.xen_snd_front_info* %0, %struct.xen_snd_front_info** %8, align 8
  store %struct.xen_front_cfg_pcm_instance* %1, %struct.xen_front_cfg_pcm_instance** %9, align 8
  store %struct.snd_pcm_hardware* %2, %struct.snd_pcm_hardware** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i8* @kasprintf(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %181

33:                                               ; preds = %6
  %34 = load i32, i32* @XBT_NIL, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* @XENSND_FIELD_DEVICE_NAME, align 4
  %37 = call i8* @xenbus_read(i32 %34, i8* %35, i32 %36, i32* null)
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @IS_ERR(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %43 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @strlcpy(i32 %44, i8* %45, i32 4)
  %47 = load i8*, i8** %14, align 8
  %48 = call i32 @kfree(i8* %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %52 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %10, align 8
  %55 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %56 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %55, i32 0, i32 5
  %57 = call i32 @cfg_read_pcm_hw(i8* %53, %struct.snd_pcm_hardware* %54, i32* %56)
  store i32 0, i32* %18, align 4
  br label %58

58:                                               ; preds = %71, %49
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %23, i64 0, i64 0
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @snprintf(i8* %59, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @XBT_NIL, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds [3 x i8], [3 x i8]* %23, i64 0, i64 0
  %65 = call i32 @xenbus_exists(i32 %62, i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %75

68:                                               ; preds = %58
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @VSND_MAX_STREAM, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %58, label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %77 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %79 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %104, %75
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @cfg_get_stream_type(i8* %85, i32 %86, i32* %19, i32* %20)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %177

91:                                               ; preds = %84
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %95 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %101 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %80

107:                                              ; preds = %80
  %108 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %109 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %8, align 8
  %114 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %118 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @devm_kcalloc(i32* %116, i64 %119, i32 4, i32 %120)
  %122 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %123 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %125 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %112
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %16, align 4
  br label %177

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %131, %107
  %133 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %134 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %8, align 8
  %139 = getelementptr inbounds %struct.xen_snd_front_info, %struct.xen_snd_front_info* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %143 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i8* @devm_kcalloc(i32* %141, i64 %144, i32 4, i32 %145)
  %147 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %148 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %150 = getelementptr inbounds %struct.xen_front_cfg_pcm_instance, %struct.xen_front_cfg_pcm_instance* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %137
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %16, align 4
  br label %177

156:                                              ; preds = %137
  br label %157

157:                                              ; preds = %156, %132
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %173, %157
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %18, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %8, align 8
  %164 = load %struct.xen_front_cfg_pcm_instance*, %struct.xen_front_cfg_pcm_instance** %9, align 8
  %165 = load i8*, i8** %15, align 8
  %166 = load i32, i32* %17, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @cfg_stream(%struct.xen_snd_front_info* %163, %struct.xen_front_cfg_pcm_instance* %164, i8* %165, i32 %166, i32* %21, i32* %22, i32* %167)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %177

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %158

176:                                              ; preds = %158
  store i32 0, i32* %16, align 4
  br label %177

177:                                              ; preds = %176, %171, %153, %128, %90
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 @kfree(i8* %178)
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %177, %30
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @xenbus_read(i32, i8*, i32, i32*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cfg_read_pcm_hw(i8*, %struct.snd_pcm_hardware*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @xenbus_exists(i32, i8*, i8*) #1

declare dso_local i32 @cfg_get_stream_type(i8*, i32, i32*, i32*) #1

declare dso_local i8* @devm_kcalloc(i32*, i64, i32, i32) #1

declare dso_local i32 @cfg_stream(%struct.xen_snd_front_info*, %struct.xen_front_cfg_pcm_instance*, i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
