; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_utils.c_fsl_asoc_get_dma_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_utils.c_fsl_asoc_get_dma_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.snd_soc_dai_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.resource = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fsl,ssi-dma-channel\00", align 1
@DAI_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%llx.%pOFn\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_asoc_get_dma_channel(%struct.device_node* %0, i8* %1, %struct.snd_soc_dai_link* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_soc_dai_link*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.resource, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.snd_soc_dai_link* %2, %struct.snd_soc_dai_link** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %17, i8* %18, i32 0)
  store %struct.device_node* %19, %struct.device_node** %13, align 8
  %20 = load %struct.device_node*, %struct.device_node** %13, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %89

25:                                               ; preds = %5
  %26 = load %struct.device_node*, %struct.device_node** %13, align 8
  %27 = call i32 @of_device_is_compatible(%struct.device_node* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.device_node*, %struct.device_node** %13, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %89

34:                                               ; preds = %25
  %35 = load %struct.device_node*, %struct.device_node** %13, align 8
  %36 = call i32 @of_address_to_resource(%struct.device_node* %35, i32 0, %struct.resource* %12)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.device_node*, %struct.device_node** %13, align 8
  %41 = call i32 @of_node_put(%struct.device_node* %40)
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %6, align 4
  br label %89

43:                                               ; preds = %34
  %44 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i32, i32* @DAI_NAME_SIZE, align 4
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.device_node*, %struct.device_node** %13, align 8
  %54 = call i32 @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %52, %struct.device_node* %53)
  %55 = load %struct.device_node*, %struct.device_node** %13, align 8
  %56 = call i32* @of_get_property(%struct.device_node* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %56, i32** %15, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %43
  %60 = load %struct.device_node*, %struct.device_node** %13, align 8
  %61 = call i32 @of_node_put(%struct.device_node* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %89

64:                                               ; preds = %43
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @be32_to_cpup(i32* %65)
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.device_node*, %struct.device_node** %13, align 8
  %69 = call %struct.device_node* @of_get_parent(%struct.device_node* %68)
  store %struct.device_node* %69, %struct.device_node** %14, align 8
  %70 = load %struct.device_node*, %struct.device_node** %14, align 8
  %71 = call i32* @of_get_property(%struct.device_node* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %71, i32** %15, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load %struct.device_node*, %struct.device_node** %14, align 8
  %76 = call i32 @of_node_put(%struct.device_node* %75)
  %77 = load %struct.device_node*, %struct.device_node** %13, align 8
  %78 = call i32 @of_node_put(%struct.device_node* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @be32_to_cpup(i32* %82)
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.device_node*, %struct.device_node** %14, align 8
  %86 = call i32 @of_node_put(%struct.device_node* %85)
  %87 = load %struct.device_node*, %struct.device_node** %13, align 8
  %88 = call i32 @of_node_put(%struct.device_node* %87)
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %74, %59, %39, %29, %22
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
