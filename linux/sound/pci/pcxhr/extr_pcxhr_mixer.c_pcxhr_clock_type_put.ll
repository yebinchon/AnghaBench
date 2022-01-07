; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_clock_type_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_clock_type_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pcxhr_mgr = type { i64, i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PCXHR_CLOCK_TYPE_INTERNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pcxhr_clock_type_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_clock_type_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.pcxhr_mgr* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.pcxhr_mgr* %11, %struct.pcxhr_mgr** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %13 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %18 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %25 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %16
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %119

45:                                               ; preds = %32
  %46 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %47 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %50 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  %60 = icmp ne i64 %51, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %45
  %62 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %63 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %62, i32 0, i32 3
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %74 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %7, align 4
  %75 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %76 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCXHR_CLOCK_TYPE_INTERNAL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %61
  %81 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %82 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %83 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @pcxhr_get_external_clock(%struct.pcxhr_mgr* %81, i64 %84, i32* %7)
  br label %94

86:                                               ; preds = %61
  %87 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %88 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store i32 48000, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93, %80
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @pcxhr_set_clock(%struct.pcxhr_mgr* %98, i32 %99)
  %101 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %102 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %108 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %97
  br label %110

110:                                              ; preds = %109, %94
  %111 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %112 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %111, i32 0, i32 3
  %113 = call i32 @mutex_unlock(i32* %112)
  store i32 1, i32* %8, align 4
  br label %114

114:                                              ; preds = %110, %45
  %115 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %116 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %42
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.pcxhr_mgr* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcxhr_get_external_clock(%struct.pcxhr_mgr*, i64, i32*) #1

declare dso_local i32 @pcxhr_set_clock(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
