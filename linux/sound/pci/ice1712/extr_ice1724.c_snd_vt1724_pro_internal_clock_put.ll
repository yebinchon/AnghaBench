; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pro_internal_clock_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.snd_ice1712 = type { i32, i32 (%struct.snd_ice1712*)*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__, i32, %struct.TYPE_9__*, i32 (%struct.snd_ice1712*, i32)*, i64 (%struct.snd_ice1712*)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_10__ = type { i32 (%struct.snd_ice1712.0*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.TYPE_9__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_vt1724_pro_internal_clock_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pro_internal_clock_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %6, align 8
  %14 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %22 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %21, i32 0, i32 7
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %29 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %27, %30
  %32 = sub i32 %31, 1
  %33 = icmp ugt i32 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %160

37:                                               ; preds = %2
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 6
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %42 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %41, i32 0, i32 9
  %43 = load i64 (%struct.snd_ice1712*)*, i64 (%struct.snd_ice1712*)** %42, align 8
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %45 = call i64 %43(%struct.snd_ice1712* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %50 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %49, i32 0, i32 1
  %51 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %50, align 8
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %53 = call i32 %51(%struct.snd_ice1712* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %60 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %59, i32 0, i32 8
  %61 = load i32 (%struct.snd_ice1712*, i32)*, i32 (%struct.snd_ice1712*, i32)** %60, align 8
  %62 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 %63, %64
  %66 = call i32 %61(%struct.snd_ice1712* %62, i32 %65)
  store i32 0, i32* %8, align 4
  br label %91

67:                                               ; preds = %54
  %68 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %69 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %68, i32 0, i32 7
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %79 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %81 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %80, i32 0, i32 6
  %82 = call i32 @spin_unlock_irq(i32* %81)
  %83 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %85 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712* %83, i32 %86, i32 1)
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %89 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %88, i32 0, i32 6
  %90 = call i32 @spin_lock_irq(i32* %89)
  br label %91

91:                                               ; preds = %67, %58
  %92 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %93 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %92, i32 0, i32 6
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %155

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %155, label %101

101:                                              ; preds = %98
  %102 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %103 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.snd_ice1712.0*, i32)* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %109 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32 (%struct.snd_ice1712.0*, i32)*, i32 (%struct.snd_ice1712.0*, i32)** %110, align 8
  %112 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %113 = bitcast %struct.snd_ice1712* %112 to %struct.snd_ice1712.0*
  %114 = call i32 %111(%struct.snd_ice1712.0* %113, i32 0)
  br label %115

115:                                              ; preds = %107, %101
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %151, %115
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %119 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %154

122:                                              ; preds = %116
  %123 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %124 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %123, i32 0, i32 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %130, align 8
  %132 = icmp ne i32 (%struct.TYPE_12__*, i32)* %131, null
  br i1 %132, label %133, label %150

133:                                              ; preds = %122
  %134 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %135 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %134, i32 0, i32 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %141, align 8
  %143 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %144 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %143, i32 0, i32 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %147
  %149 = call i32 %142(%struct.TYPE_12__* %148, i32 0)
  br label %150

150:                                              ; preds = %133, %122
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %116

154:                                              ; preds = %116
  br label %155

155:                                              ; preds = %154, %98, %91
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %156, %157
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %155, %34
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
