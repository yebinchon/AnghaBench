; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_pvt_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_pvt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_tplg_dapm_widget = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.skl_dev = type { i32 }
%struct.device = type { i32 }
%struct.skl_module_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_soc_tplg_vendor_array = type { i64 }

@SKL_TYPE_TUPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_tplg_dapm_widget*, %struct.skl_dev*, %struct.device*, %struct.skl_module_cfg*)* @skl_tplg_get_pvt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_pvt_data(%struct.snd_soc_tplg_dapm_widget* %0, %struct.skl_dev* %1, %struct.device* %2, %struct.skl_module_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.skl_module_cfg*, align 8
  %10 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.snd_soc_tplg_dapm_widget* %0, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %7, align 8
  store %struct.device* %2, %struct.device** %8, align 8
  store %struct.skl_module_cfg* %3, %struct.skl_module_cfg** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @uuid_is_valid(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %25 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %28 = call i32 @skl_tplg_get_pvt_data_v4(%struct.snd_soc_tplg_dapm_widget* %24, %struct.skl_dev* %25, %struct.device* %26, %struct.skl_module_cfg* %27)
  store i32 %28, i32* %5, align 4
  br label %164

29:                                               ; preds = %4
  %30 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %31 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %34, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %37 = call i32 @skl_tplg_get_desc_blocks(%struct.device* %35, %struct.snd_soc_tplg_vendor_array* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %5, align 4
  br label %164

42:                                               ; preds = %29
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %159, %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %163

54:                                               ; preds = %51
  %55 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %56 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = bitcast i8* %61 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %62, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %65 = call i32 @skl_tplg_get_desc_blocks(%struct.device* %63, %struct.snd_soc_tplg_vendor_array* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load i32, i32* %16, align 4
  store i32 %69, i32* %5, align 4
  br label %164

70:                                               ; preds = %54
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %13, align 4
  %72 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %73 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %80 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = bitcast i8* %85 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %86, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %89 = call i32 @skl_tplg_get_desc_blocks(%struct.device* %87, %struct.snd_soc_tplg_vendor_array* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %70
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  br label %164

94:                                               ; preds = %70
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %12, align 4
  %96 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %97 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %14, align 4
  %103 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %104 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = bitcast i8* %109 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %110, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %111 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %6, align 8
  %112 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8* %117, i8** %15, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @SKL_TYPE_TUPLE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %94
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %125 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @skl_tplg_get_tokens(%struct.device* %122, i8* %123, %struct.skl_dev* %124, %struct.skl_module_cfg* %125, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %5, align 4
  br label %164

132:                                              ; preds = %121
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %11, align 4
  br label %159

135:                                              ; preds = %94
  %136 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %137 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %143 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %15, align 8
  %147 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %148 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @memcpy(i32 %145, i8* %146, i32 %150)
  br label %152

152:                                              ; preds = %141, %135
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %11, align 4
  %155 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %9, align 8
  %156 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %152, %132
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %51

163:                                              ; preds = %51
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %130, %92, %68, %40, %23
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @uuid_is_valid(i8*) #1

declare dso_local i32 @skl_tplg_get_pvt_data_v4(%struct.snd_soc_tplg_dapm_widget*, %struct.skl_dev*, %struct.device*, %struct.skl_module_cfg*) #1

declare dso_local i32 @skl_tplg_get_desc_blocks(%struct.device*, %struct.snd_soc_tplg_vendor_array*) #1

declare dso_local i32 @skl_tplg_get_tokens(%struct.device*, i8*, %struct.skl_dev*, %struct.skl_module_cfg*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
