; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_manifest_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_manifest_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_tplg_manifest = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.device = type { i32 }
%struct.skl_dev = type { i32 }
%struct.snd_soc_tplg_vendor_array = type { i64 }

@SKL_TYPE_TUPLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_tplg_manifest*, %struct.device*, %struct.skl_dev*)* @skl_tplg_get_manifest_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_manifest_data(%struct.snd_soc_tplg_manifest* %0, %struct.device* %1, %struct.skl_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_tplg_manifest*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.skl_dev*, align 8
  %8 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_tplg_manifest* %0, %struct.snd_soc_tplg_manifest** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.skl_dev* %2, %struct.skl_dev** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %19, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %22 = call i32 @skl_tplg_get_desc_blocks(%struct.device* %20, %struct.snd_soc_tplg_vendor_array* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %4, align 4
  br label %127

27:                                               ; preds = %3
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %30 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %122, %27
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %126

39:                                               ; preds = %36
  %40 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %5, align 8
  %41 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %47, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %50 = call i32 @skl_tplg_get_desc_blocks(%struct.device* %48, %struct.snd_soc_tplg_vendor_array* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %4, align 4
  br label %127

55:                                               ; preds = %39
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %58 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %5, align 8
  %65 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = bitcast i8* %70 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %71, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %74 = call i32 @skl_tplg_get_desc_blocks(%struct.device* %72, %struct.snd_soc_tplg_vendor_array* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %55
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  br label %127

79:                                               ; preds = %55
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %10, align 4
  %81 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %82 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %5, align 8
  %89 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = bitcast i8* %94 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %95, %struct.snd_soc_tplg_vendor_array** %8, align 8
  %96 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %5, align 8
  %97 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8* %102, i8** %13, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SKL_TYPE_TUPLE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %79
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load %struct.skl_dev*, %struct.skl_dev** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @skl_tplg_get_manifest_tkn(%struct.device* %107, i8* %108, %struct.skl_dev* %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %4, align 4
  br label %127

116:                                              ; preds = %106
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %9, align 4
  br label %122

119:                                              ; preds = %79
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %127

122:                                              ; preds = %116
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %36

126:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %119, %114, %77, %53, %25
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @skl_tplg_get_desc_blocks(%struct.device*, %struct.snd_soc_tplg_vendor_array*) #1

declare dso_local i32 @skl_tplg_get_manifest_tkn(%struct.device*, i8*, %struct.skl_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
