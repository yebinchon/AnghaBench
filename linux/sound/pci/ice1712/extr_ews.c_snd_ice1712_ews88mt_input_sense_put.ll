; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88mt_input_sense_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ews.c_snd_ice1712_ews88mt_input_sense_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_ice1712 = type { i32, %struct.ews_spec* }
%struct.ews_spec = type { i32* }

@EWS_I2C_PCF1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ice1712_ews88mt_input_sense_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_ews88mt_input_sense_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca %struct.ews_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_ice1712* %12, %struct.snd_ice1712** %6, align 8
  %13 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %14 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %13, i32 0, i32 1
  %15 = load %struct.ews_spec*, %struct.ews_spec** %14, align 8
  store %struct.ews_spec* %15, %struct.ews_spec** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 1
  %19 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %16, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 7
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i1 [ true, %2 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %106

31:                                               ; preds = %25
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_i2c_lock(i32 %34)
  %36 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %37 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @EWS_I2C_PCF1, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_i2c_readbytes(i32 %41, i8* %9, i32 1)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %46 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_i2c_unlock(i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %31
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %70

67:                                               ; preds = %51
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 1, %68
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  %72 = or i32 %57, %71
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %10, align 1
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %9, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = load %struct.ews_spec*, %struct.ews_spec** %7, align 8
  %81 = getelementptr inbounds %struct.ews_spec, %struct.ews_spec* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @EWS_I2C_PCF1, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @snd_i2c_sendbytes(i32 %85, i8* %10, i32 1)
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %90 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @snd_i2c_unlock(i32 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %106

95:                                               ; preds = %79, %70
  %96 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %97 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_i2c_unlock(i32 %98)
  %100 = load i8, i8* %10, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %9, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %101, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %95, %88, %44, %30
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.snd_ice1712* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @snd_i2c_readbytes(i32, i8*, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
