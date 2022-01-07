; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_get_sync_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_get_sync_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hdspm = type { i32, i64 }

@HDSPM_TCO1_TCO_lock = common dso_local global i32 0, align 4
@HDSPM_TCO1_LTC_Input_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdspm_get_sync_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_get_sync_check(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.hdspm* %8, %struct.hdspm** %5, align 8
  store i32 -1, i32* %6, align 4
  %9 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %10 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %95 [
    i32 128, label %12
    i32 131, label %33
    i32 130, label %54
    i32 129, label %71
    i32 132, label %74
  ]

12:                                               ; preds = %2
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %25 [
    i32 0, label %16
    i32 7, label %19
    i32 8, label %22
  ]

16:                                               ; preds = %12
  %17 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %18 = call i32 @hdspm_wc_sync_check(%struct.hdspm* %17)
  store i32 %18, i32* %6, align 4
  br label %32

19:                                               ; preds = %12
  %20 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %21 = call i32 @hdspm_tco_sync_check(%struct.hdspm* %20)
  store i32 %21, i32* %6, align 4
  br label %32

22:                                               ; preds = %12
  %23 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %24 = call i32 @hdspm_sync_in_sync_check(%struct.hdspm* %23)
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %12
  %26 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @hdspm_s1_sync_check(%struct.hdspm* %26, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %22, %19, %16
  br label %95

33:                                               ; preds = %2
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %46 [
    i32 0, label %37
    i32 4, label %40
    i32 5, label %43
  ]

37:                                               ; preds = %33
  %38 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %39 = call i32 @hdspm_wc_sync_check(%struct.hdspm* %38)
  store i32 %39, i32* %6, align 4
  br label %53

40:                                               ; preds = %33
  %41 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %42 = call i32 @hdspm_tco_sync_check(%struct.hdspm* %41)
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %33
  %44 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %45 = call i32 @hdspm_sync_in_sync_check(%struct.hdspm* %44)
  store i32 %45, i32* %6, align 4
  br label %53

46:                                               ; preds = %33
  %47 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %48 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %49 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @hdspm_s1_sync_check(%struct.hdspm* %47, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %46, %43, %40, %37
  br label %95

54:                                               ; preds = %2
  %55 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %56 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %70 [
    i32 0, label %58
    i32 1, label %61
    i32 2, label %64
    i32 3, label %67
  ]

58:                                               ; preds = %54
  %59 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %60 = call i32 @hdspm_wc_sync_check(%struct.hdspm* %59)
  store i32 %60, i32* %6, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %63 = call i32 @hdspm_madi_sync_check(%struct.hdspm* %62)
  store i32 %63, i32* %6, align 4
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %66 = call i32 @hdspm_tco_sync_check(%struct.hdspm* %65)
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %54
  %68 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %69 = call i32 @hdspm_sync_in_sync_check(%struct.hdspm* %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %54, %67, %64, %61, %58
  br label %95

71:                                               ; preds = %2
  %72 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %73 = call i32 @hdspm_madi_sync_check(%struct.hdspm* %72)
  store i32 %73, i32* %6, align 4
  br label %95

74:                                               ; preds = %2
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %87 [
    i32 0, label %78
    i32 9, label %81
    i32 10, label %84
  ]

78:                                               ; preds = %74
  %79 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %80 = call i32 @hdspm_wc_sync_check(%struct.hdspm* %79)
  store i32 %80, i32* %6, align 4
  br label %94

81:                                               ; preds = %74
  %82 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %83 = call i32 @hdspm_tco_sync_check(%struct.hdspm* %82)
  store i32 %83, i32* %6, align 4
  br label %94

84:                                               ; preds = %74
  %85 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %86 = call i32 @hdspm_sync_in_sync_check(%struct.hdspm* %85)
  store i32 %86, i32* %6, align 4
  br label %94

87:                                               ; preds = %74
  %88 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %89 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %90 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @hdspm_aes_sync_check(%struct.hdspm* %88, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %84, %81, %78
  br label %95

95:                                               ; preds = %2, %94, %71, %70, %53, %32
  %96 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %97 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %102 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %112 [
    i32 11, label %104
    i32 12, label %108
  ]

104:                                              ; preds = %100
  %105 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %106 = load i32, i32* @HDSPM_TCO1_TCO_lock, align 4
  %107 = call i32 @hdspm_tco_input_check(%struct.hdspm* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  br label %113

108:                                              ; preds = %100
  %109 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %110 = load i32, i32* @HDSPM_TCO1_LTC_Input_valid, align 4
  %111 = call i32 @hdspm_tco_input_check(%struct.hdspm* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  br label %113

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %108, %104
  br label %114

114:                                              ; preds = %113, %95
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 -1, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 3, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %114
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %121 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %119, i32* %125, align 4
  ret i32 0
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @hdspm_wc_sync_check(%struct.hdspm*) #1

declare dso_local i32 @hdspm_tco_sync_check(%struct.hdspm*) #1

declare dso_local i32 @hdspm_sync_in_sync_check(%struct.hdspm*) #1

declare dso_local i32 @hdspm_s1_sync_check(%struct.hdspm*, i32) #1

declare dso_local i32 @hdspm_madi_sync_check(%struct.hdspm*) #1

declare dso_local i32 @hdspm_aes_sync_check(%struct.hdspm*, i32) #1

declare dso_local i32 @hdspm_tco_input_check(%struct.hdspm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
