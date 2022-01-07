; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_parse_tokens.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_parse_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sof_topology_token = type { i32 }
%struct.snd_soc_tplg_vendor_array = type { i32, i32 }
%struct.snd_sof_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"error: invalid array size 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error: unknown token type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i8*, %struct.sof_topology_token*, i32, %struct.snd_soc_tplg_vendor_array*, i32)* @sof_parse_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_parse_tokens(%struct.snd_soc_component* %0, i8* %1, %struct.sof_topology_token* %2, i32 %3, %struct.snd_soc_tplg_vendor_array* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sof_topology_token*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_sof_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.sof_topology_token* %2, %struct.sof_topology_token** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.snd_soc_tplg_vendor_array* %4, %struct.snd_soc_tplg_vendor_array** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.snd_sof_dev* %17, %struct.snd_sof_dev** %14, align 8
  br label %18

18:                                               ; preds = %86, %6
  %19 = load i32, i32* %13, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %93

21:                                               ; preds = %18
  %22 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %23 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %94

36:                                               ; preds = %21
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %44 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %94

50:                                               ; preds = %36
  %51 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %52 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  switch i32 %54, label %76 [
    i32 129, label %55
    i32 130, label %62
    i32 133, label %69
    i32 132, label %69
    i32 128, label %69
    i32 131, label %69
  ]

55:                                               ; preds = %50
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.sof_topology_token*, %struct.sof_topology_token** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %61 = call i32 @sof_parse_uuid_tokens(%struct.snd_soc_component* %56, i8* %57, %struct.sof_topology_token* %58, i32 %59, %struct.snd_soc_tplg_vendor_array* %60)
  br label %86

62:                                               ; preds = %50
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.sof_topology_token*, %struct.sof_topology_token** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %68 = call i32 @sof_parse_string_tokens(%struct.snd_soc_component* %63, i8* %64, %struct.sof_topology_token* %65, i32 %66, %struct.snd_soc_tplg_vendor_array* %67)
  br label %86

69:                                               ; preds = %50, %50, %50, %50
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.sof_topology_token*, %struct.sof_topology_token** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %75 = call i32 @sof_parse_word_tokens(%struct.snd_soc_component* %70, i8* %71, %struct.sof_topology_token* %72, i32 %73, %struct.snd_soc_tplg_vendor_array* %74)
  br label %86

76:                                               ; preds = %50
  %77 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %78 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %81 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %94

86:                                               ; preds = %69, %62, %55
  %87 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %12, align 8
  %88 = bitcast %struct.snd_soc_tplg_vendor_array* %87 to i32*
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = bitcast i32* %91 to %struct.snd_soc_tplg_vendor_array*
  store %struct.snd_soc_tplg_vendor_array* %92, %struct.snd_soc_tplg_vendor_array** %12, align 8
  br label %18

93:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %76, %42, %28
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sof_parse_uuid_tokens(%struct.snd_soc_component*, i8*, %struct.sof_topology_token*, i32, %struct.snd_soc_tplg_vendor_array*) #1

declare dso_local i32 @sof_parse_string_tokens(%struct.snd_soc_component*, i8*, %struct.sof_topology_token*, i32, %struct.snd_soc_tplg_vendor_array*) #1

declare dso_local i32 @sof_parse_word_tokens(%struct.snd_soc_component*, i8*, %struct.sof_topology_token*, i32, %struct.snd_soc_tplg_vendor_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
