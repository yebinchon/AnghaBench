; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_route_analog_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_route_analog_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ice1712 = type { i32 }

@ROUTE_PSDOUT03 = common dso_local global i32 0, align 4
@ROUTE_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_pro_route_analog_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_pro_route_analog_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ice1712* %14, %struct.snd_ice1712** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 1
  %18 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %15, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 11
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 2
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %12, align 4
  br label %55

32:                                               ; preds = %2
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 9
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 3, i32* %12, align 4
  br label %54

42:                                               ; preds = %32
  %43 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %44 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 2, i32* %12, align 4
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %9, align 4
  %57 = srem i32 %56, 2
  %58 = mul nsw i32 %57, 8
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %59, 2
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %64 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %67 = load i32, i32* @ROUTE_PSDOUT03, align 4
  %68 = call i32 @ICEMT(%struct.snd_ice1712* %66, i32 %67)
  %69 = call i32 @inw(i32 %68)
  store i32 %69, i32* %11, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 3, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %80, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %55
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %89 = load i32, i32* @ROUTE_PSDOUT03, align 4
  %90 = call i32 @ICEMT(%struct.snd_ice1712* %88, i32 %89)
  %91 = call i32 @outw(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %55
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %94 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %171

100:                                              ; preds = %92
  %101 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %102 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %101, i32 0, i32 0
  %103 = call i32 @spin_lock_irq(i32* %102)
  %104 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %105 = load i32, i32* @ROUTE_CAPTURE, align 4
  %106 = call i32 @ICEMT(%struct.snd_ice1712* %104, i32 %105)
  %107 = call i32 @inl(i32 %106)
  store i32 %107, i32* %11, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sdiv i32 %108, 2
  %110 = mul nsw i32 %109, 8
  %111 = load i32, i32* %9, align 4
  %112 = srem i32 %111, 2
  %113 = mul nsw i32 %112, 4
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %136

117:                                              ; preds = %100
  %118 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %119 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %8, align 4
  %127 = shl i32 7, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  br label %156

136:                                              ; preds = %100
  %137 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %138 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 9
  %145 = shl i32 %144, 3
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %8, align 4
  %147 = shl i32 8, %146
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %10, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %8, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %136, %117
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  store i32 1, i32* %7, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %163 = load i32, i32* @ROUTE_CAPTURE, align 4
  %164 = call i32 @ICEMT(%struct.snd_ice1712* %162, i32 %163)
  %165 = call i32 @outl(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %156
  %167 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %168 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %167, i32 0, i32 0
  %169 = call i32 @spin_unlock_irq(i32* %168)
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %166, %98
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
