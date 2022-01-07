; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_setup_algs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_setup_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }
%struct.wmfw_halo_id_hdr = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wmfw_halo_alg_hdr = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wm_adsp_region = type { i32 }

@WMFW_ADSP2_XM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read algorithm info: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%d: ID %x v%d.%d.%d XM@%x YM@%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_halo_setup_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_halo_setup_algs(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.wmfw_halo_id_hdr, align 4
  %5 = alloca %struct.wmfw_halo_alg_hdr*, align 8
  %6 = alloca %struct.wm_adsp_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %12 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %13 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %14 = call %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp* %12, i32 %13)
  store %struct.wm_adsp_region* %14, %struct.wm_adsp_region** %6, align 8
  %15 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %6, align 8
  %16 = icmp ne %struct.wm_adsp_region* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %172

24:                                               ; preds = %1
  %25 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %26 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %6, align 8
  %29 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_raw_read(i32 %27, i32 %30, %struct.wmfw_halo_id_hdr* %4, i32 16)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @adsp_err(%struct.wm_adsp* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %2, align 4
  br label %172

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.wmfw_halo_id_hdr, %struct.wmfw_halo_id_hdr* %4, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %9, align 8
  %44 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %45 = getelementptr inbounds %struct.wmfw_halo_id_hdr, %struct.wmfw_halo_id_hdr* %4, i32 0, i32 2
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @wmfw_v3_parse_id_header(%struct.wm_adsp* %44, %struct.TYPE_4__* %45, i64 %46)
  %48 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %49 = getelementptr inbounds %struct.wmfw_halo_id_hdr, %struct.wmfw_halo_id_hdr* %4, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.wmfw_halo_id_hdr, %struct.wmfw_halo_id_hdr* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.wmfw_halo_id_hdr, %struct.wmfw_halo_id_hdr* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wm_halo_create_regions(%struct.wm_adsp* %48, i32 %51, i32 %53, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %2, align 4
  br label %172

61:                                               ; preds = %39
  store i32 4, i32* %7, align 4
  %62 = load i64, i64* %9, align 8
  %63 = mul i64 16, %62
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.wmfw_halo_alg_hdr* @wm_adsp_read_algs(%struct.wm_adsp* %66, i64 %67, %struct.wm_adsp_region* %68, i32 %69, i32 %70)
  store %struct.wmfw_halo_alg_hdr* %71, %struct.wmfw_halo_alg_hdr** %5, align 8
  %72 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %73 = call i64 @IS_ERR(%struct.wmfw_halo_alg_hdr* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %77 = call i32 @PTR_ERR(%struct.wmfw_halo_alg_hdr* %76)
  store i32 %77, i32* %2, align 4
  br label %172

78:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %164, %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %167

84:                                               ; preds = %79
  %85 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %87, i64 %89
  %91 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be32_to_cpu(i32 %93)
  %95 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %95, i64 %97
  %99 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @be32_to_cpu(i32 %101)
  %103 = and i32 %102, 16711680
  %104 = ashr i32 %103, 16
  %105 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %105, i64 %107
  %109 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be32_to_cpu(i32 %111)
  %113 = and i32 %112, 65280
  %114 = ashr i32 %113, 8
  %115 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %115, i64 %117
  %119 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = and i32 %122, 255
  %124 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %124, i64 %126
  %128 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @be32_to_cpu(i32 %129)
  %131 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %131, i64 %133
  %135 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @be32_to_cpu(i32 %136)
  %138 = call i32 @adsp_info(%struct.wm_adsp* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %94, i32 %104, i32 %114, i32 %123, i32 %130, i32 %137)
  %139 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %140 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %140, i64 %142
  %144 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %147, i64 %149
  %151 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %153, i64 %155
  %157 = getelementptr inbounds %struct.wmfw_halo_alg_hdr, %struct.wmfw_halo_alg_hdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @wm_halo_create_regions(%struct.wm_adsp* %139, i32 %146, i32 %152, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %84
  br label %168

163:                                              ; preds = %84
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %79

167:                                              ; preds = %79
  br label %168

168:                                              ; preds = %167, %162
  %169 = load %struct.wmfw_halo_alg_hdr*, %struct.wmfw_halo_alg_hdr** %5, align 8
  %170 = call i32 @kfree(%struct.wmfw_halo_alg_hdr* %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %75, %59, %34, %21
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, %struct.wmfw_halo_id_hdr*, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wmfw_v3_parse_id_header(%struct.wm_adsp*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @wm_halo_create_regions(%struct.wm_adsp*, i32, i32, i32) #1

declare dso_local %struct.wmfw_halo_alg_hdr* @wm_adsp_read_algs(%struct.wm_adsp*, i64, %struct.wm_adsp_region*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wmfw_halo_alg_hdr*) #1

declare dso_local i32 @PTR_ERR(%struct.wmfw_halo_alg_hdr*) #1

declare dso_local i32 @adsp_info(%struct.wm_adsp*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.wmfw_halo_alg_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
