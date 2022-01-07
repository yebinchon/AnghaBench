; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_monitor_sw_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_mixer.c_mixart_monitor_sw_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_mixart = type { i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MIXART_PCM_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @mixart_monitor_sw_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_monitor_sw_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_mixart*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_mixart* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_mixart* %10, %struct.snd_mixart** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %12 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %62, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %21 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %26, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %19
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %52 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %37, %19
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %16

65:                                               ; preds = %16
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %125

68:                                               ; preds = %65
  %69 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %70 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %77 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %75, %68
  %83 = phi i1 [ true, %68 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %89 = load i32, i32* @MIXART_PCM_ANALOG, align 4
  %90 = call i32 @snd_mixart_add_ref_pipe(%struct.snd_mixart* %88, i32 %89, i32 0, i32 1)
  %91 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %92 = load i32, i32* @MIXART_PCM_ANALOG, align 4
  %93 = call i32 @snd_mixart_add_ref_pipe(%struct.snd_mixart* %91, i32 %92, i32 1, i32 1)
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %100 = call i32 @mixart_update_monitoring(%struct.snd_mixart* %99, i32 0)
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 2
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %107 = call i32 @mixart_update_monitoring(%struct.snd_mixart* %106, i32 1)
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %113 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %116 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %115, i32 0, i32 3
  %117 = call i32 @snd_mixart_kill_ref_pipe(%struct.TYPE_6__* %114, i32* %116, i32 1)
  %118 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %119 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %122 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %121, i32 0, i32 2
  %123 = call i32 @snd_mixart_kill_ref_pipe(%struct.TYPE_6__* %120, i32* %122, i32 1)
  br label %124

124:                                              ; preds = %111, %108
  br label %125

125:                                              ; preds = %124, %65
  %126 = load %struct.snd_mixart*, %struct.snd_mixart** %5, align 8
  %127 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  ret i32 %133
}

declare dso_local %struct.snd_mixart* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_mixart_add_ref_pipe(%struct.snd_mixart*, i32, i32, i32) #1

declare dso_local i32 @mixart_update_monitoring(%struct.snd_mixart*, i32) #1

declare dso_local i32 @snd_mixart_kill_ref_pipe(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
