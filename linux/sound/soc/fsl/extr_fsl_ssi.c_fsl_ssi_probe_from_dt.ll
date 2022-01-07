; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_probe_from_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_probe_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi = type { i32, i32, i32, i32, i32, i32, i32*, i32, i64, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }

@fsl_ssi_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fsl,mode\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ac97-slave\00", align 1
@FSLSSI_AC97_DAIFMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to get SSI index property\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ac97-codec\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fsl,ssi-asynchronous\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"fsl,fiq-stream-filter\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"fsl,fifo-depth\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@IMX_DMATYPE_SSI_DUAL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"codec-handle\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"snd-soc-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_ssi*)* @fsl_ssi_probe_from_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_probe_from_dt(%struct.fsl_ssi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_ssi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  store %struct.fsl_ssi* %0, %struct.fsl_ssi** %3, align 8
  %13 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %13, i32 0, i32 9
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load i32, i32* @fsl_ssi_ids, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call %struct.of_device_id* @of_match_device(i32 %19, %struct.device* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %6, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %23 = icmp ne %struct.of_device_id* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %26 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %158

32:                                               ; preds = %24
  %33 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %36, i32 0, i32 8
  store i64 %35, i64* %37, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_property_match_string(%struct.device_node* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %44 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call i8* @of_get_property(%struct.device_node* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %32
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @FSLSSI_AC97_DAIFMT, align 4
  %55 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %56 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %59 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %58, i32 0, i32 5
  %60 = call i32 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %158

68:                                               ; preds = %53
  %69 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @strcpy(i32* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %81

73:                                               ; preds = %49, %32
  %74 = load %struct.device_node*, %struct.device_node** %5, align 8
  %75 = call i32 @of_find_property(%struct.device_node* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %79 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = call i32 @of_property_read_bool(%struct.device_node* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %88 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i8* @of_get_property(%struct.device_node* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %81
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @be32_to_cpup(i32* %95)
  %97 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %98 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %81
  %100 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %101 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %100, i32 0, i32 3
  store i32 8, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.device_node*, %struct.device_node** %5, align 8
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %105 = call i32 @of_property_read_u32_array(%struct.device_node* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64* %104, i32 4)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %107 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %115 = load i64, i64* %114, align 16
  %116 = load i64, i64* @IMX_DMATYPE_SSI_DUAL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %120 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %119, i32 0, i32 4
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %113, %110, %102
  %122 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %123 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %157, label %128

128:                                              ; preds = %121
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = call i8* @of_get_property(%struct.device_node* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store %struct.device_node* %133, %struct.device_node** %12, align 8
  %134 = load %struct.device_node*, %struct.device_node** %12, align 8
  %135 = call i8* @of_get_property(%struct.device_node* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* null)
  store i8* %135, i8** %8, align 8
  %136 = load %struct.device_node*, %struct.device_node** %12, align 8
  %137 = call i32 @of_node_put(%struct.device_node* %136)
  %138 = load i8*, i8** %8, align 8
  %139 = call i8* @strrchr(i8* %138, i8 signext 44)
  store i8* %139, i8** %7, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %132
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %8, align 8
  br label %145

145:                                              ; preds = %142, %132
  %146 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %147 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %146, i32 0, i32 6
  %148 = load i32*, i32** %147, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @snprintf(i32* %148, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %149)
  %151 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %152 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @make_lowercase(i32* %153)
  %155 = load %struct.fsl_ssi*, %struct.fsl_ssi** %3, align 8
  %156 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %155, i32 0, i32 5
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %145, %128, %121
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %63, %29
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @make_lowercase(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
