; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/fabrics/extr_layout.c_aoa_fabric_layout_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/fabrics/extr_layout.c_aoa_fabric_layout_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soundbus_dev = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.layout_dev = type { %struct.TYPE_8__, i32, i32, i32** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*)* }

@MAX_CODECS_PER_BUS = common dso_local global i32 0, align 4
@layouts_list_items = common dso_local global i32 0, align 4
@AOA_NOTIFY_HEADPHONE = common dso_local global i32 0, align 4
@AOA_NOTIFY_LINE_OUT = common dso_local global i32 0, align 4
@layout_device = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soundbus_dev*)* @aoa_fabric_layout_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoa_fabric_layout_remove(%struct.soundbus_dev* %0) #0 {
  %2 = alloca %struct.soundbus_dev*, align 8
  %3 = alloca %struct.layout_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.soundbus_dev* %0, %struct.soundbus_dev** %2, align 8
  %5 = load %struct.soundbus_dev*, %struct.soundbus_dev** %2, align 8
  %6 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = call %struct.layout_dev* @dev_get_drvdata(i32* %7)
  store %struct.layout_dev* %8, %struct.layout_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_CODECS_PER_BUS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %15 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %14, i32 0, i32 3
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %24 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @aoa_fabric_unlink_codec(i32* %29)
  br label %31

31:                                               ; preds = %22, %13
  %32 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %33 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %32, i32 0, i32 3
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %43 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %42, i32 0, i32 2
  %44 = call i32 @list_del(i32* %43)
  %45 = load i32, i32* @layouts_list_items, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* @layouts_list_items, align 4
  %47 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %48 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @of_node_put(i32 %49)
  %51 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %52 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_8__*, i32, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*)** %55, align 8
  %57 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %58 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %57, i32 0, i32 0
  %59 = load i32, i32* @AOA_NOTIFY_HEADPHONE, align 4
  %60 = call i32 %56(%struct.TYPE_8__* %58, i32 %59, i32* null, i32* null)
  %61 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %62 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_8__*, i32, i32*, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*, i32*)** %65, align 8
  %67 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %68 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %67, i32 0, i32 0
  %69 = load i32, i32* @AOA_NOTIFY_LINE_OUT, align 4
  %70 = call i32 %66(%struct.TYPE_8__* %68, i32 %69, i32* null, i32* null)
  %71 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %72 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %75, align 8
  %77 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %78 = getelementptr inbounds %struct.layout_dev, %struct.layout_dev* %77, i32 0, i32 0
  %79 = call i32 %76(%struct.TYPE_8__* %78)
  store i32* null, i32** @layout_device, align 8
  %80 = load %struct.layout_dev*, %struct.layout_dev** %3, align 8
  %81 = call i32 @kfree(%struct.layout_dev* %80)
  %82 = load %struct.soundbus_dev*, %struct.soundbus_dev** %2, align 8
  %83 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = load %struct.soundbus_dev*, %struct.soundbus_dev** %2, align 8
  %85 = getelementptr inbounds %struct.soundbus_dev, %struct.soundbus_dev* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  ret i32 0
}

declare dso_local %struct.layout_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @aoa_fabric_unlink_codec(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.layout_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
