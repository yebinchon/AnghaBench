; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_mop500.c_mop500_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_mop500.c_mop500_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i32*, %struct.device_node* }
%struct.TYPE_5__ = type { i32*, %struct.device_node* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"stericsson,cpu-dai\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"stericsson,audio-codec\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Phandle missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mop500_dai_links = common dso_local global %struct.TYPE_8__* null, align 8
@mop500_card = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"stericsson,card-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*)* @mop500_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mop500_of_probe(%struct.platform_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca [2 x %struct.device_node*], align 16
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %7, i64 0, i64 0
  store %struct.device_node* %10, %struct.device_node** %11, align 16
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1)
  %14 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %7, i64 0, i64 1
  store %struct.device_node* %13, %struct.device_node** %14, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %7, i64 0, i64 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 16
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %7, i64 0, i64 1
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %20, %2
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 (...) @mop500_of_node_put()
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %95

34:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %90, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %93

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %7, i64 0, i64 %40
  %42 = load %struct.device_node*, %struct.device_node** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mop500_dai_links, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store %struct.device_node* %42, %struct.device_node** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mop500_dai_links, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.device_node*], [2 x %struct.device_node*]* %7, i64 0, i64 %58
  %60 = load %struct.device_node*, %struct.device_node** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mop500_dai_links, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store %struct.device_node* %60, %struct.device_node** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mop500_dai_links, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mop500_dai_links, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.device_node* %75, %struct.device_node** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mop500_dai_links, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %38
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %35

93:                                               ; preds = %35
  %94 = call i32 @snd_soc_of_parse_card_name(i32* @mop500_card, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %27
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mop500_of_node_put(...) #1

declare dso_local i32 @snd_soc_of_parse_card_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
