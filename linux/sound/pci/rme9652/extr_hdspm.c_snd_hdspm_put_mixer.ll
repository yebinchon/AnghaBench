; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_put_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hdspm = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@HDSPM_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdspm_put_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_put_mixer(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.hdspm* %12, %struct.hdspm** %6, align 8
  %13 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %14 = call i32 @snd_hdspm_use_is_exclusive(%struct.hdspm* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %39 = mul nsw i32 2, %38
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %19
  store i32 -1, i32* %3, align 4
  br label %109

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42
  store i32 -1, i32* %3, align 4
  br label %109

50:                                               ; preds = %45
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %59 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @hdspm_read_pb_gain(%struct.hdspm* %66, i32 %67, i32 %70)
  %72 = icmp ne i32 %65, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %7, align 4
  br label %82

74:                                               ; preds = %50
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @hdspm_read_in_gain(%struct.hdspm* %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %75, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %74, %64
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @hdspm_write_pb_gain(%struct.hdspm* %90, i32 %91, i32 %94, i32 %95)
  br label %103

97:                                               ; preds = %85
  %98 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @hdspm_write_in_gain(%struct.hdspm* %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %89
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %106 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_irq(i32* %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %104, %49, %41, %16
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hdspm_use_is_exclusive(%struct.hdspm*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hdspm_read_pb_gain(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @hdspm_read_in_gain(%struct.hdspm*, i32, i32) #1

declare dso_local i32 @hdspm_write_pb_gain(%struct.hdspm*, i32, i32, i32) #1

declare dso_local i32 @hdspm_write_in_gain(%struct.hdspm*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
