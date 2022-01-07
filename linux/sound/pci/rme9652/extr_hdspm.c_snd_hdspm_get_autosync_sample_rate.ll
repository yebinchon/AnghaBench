; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_get_autosync_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_get_autosync_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }
%struct.hdspm = type { i32 }

@HDSPM_AES32_AUTOSYNC_FROM_AES1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_hdspm_get_autosync_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_get_autosync_sample_rate(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.hdspm*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.hdspm* %7, %struct.hdspm** %5, align 8
  %8 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %9 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %167 [
    i32 128, label %11
    i32 131, label %57
    i32 132, label %103
    i32 130, label %158
    i32 129, label %158
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  switch i64 %14, label %42 [
    i64 0, label %15
    i64 7, label %24
    i64 8, label %33
  ]

15:                                               ; preds = %11
  %16 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %17 = call i8* @hdspm_get_wc_sample_rate(%struct.hdspm* %16)
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %17, i8** %23, align 8
  br label %56

24:                                               ; preds = %11
  %25 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %26 = call i8* @hdspm_get_tco_sample_rate(%struct.hdspm* %25)
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %26, i8** %32, align 8
  br label %56

33:                                               ; preds = %11
  %34 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %35 = call i8* @hdspm_get_sync_in_sample_rate(%struct.hdspm* %34)
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %35, i8** %41, align 8
  br label %56

42:                                               ; preds = %11
  %43 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i8* @hdspm_get_s1_sample_rate(%struct.hdspm* %43, i32 %48)
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %49, i8** %55, align 8
  br label %56

56:                                               ; preds = %42, %33, %24, %15
  br label %168

57:                                               ; preds = %2
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %59 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  switch i64 %60, label %88 [
    i64 0, label %61
    i64 4, label %70
    i64 5, label %79
  ]

61:                                               ; preds = %57
  %62 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %63 = call i8* @hdspm_get_wc_sample_rate(%struct.hdspm* %62)
  %64 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  store i8* %63, i8** %69, align 8
  br label %102

70:                                               ; preds = %57
  %71 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %72 = call i8* @hdspm_get_tco_sample_rate(%struct.hdspm* %71)
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %72, i8** %78, align 8
  br label %102

79:                                               ; preds = %57
  %80 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %81 = call i8* @hdspm_get_sync_in_sample_rate(%struct.hdspm* %80)
  %82 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %83 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %81, i8** %87, align 8
  br label %102

88:                                               ; preds = %57
  %89 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %90 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %91 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = call i8* @hdspm_get_s1_sample_rate(%struct.hdspm* %89, i32 %94)
  %96 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %97 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %88, %79, %70, %61
  br label %168

103:                                              ; preds = %2
  %104 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %105 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  switch i64 %106, label %143 [
    i64 0, label %107
    i64 9, label %116
    i64 10, label %125
    i64 11, label %134
  ]

107:                                              ; preds = %103
  %108 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %109 = call i8* @hdspm_get_wc_sample_rate(%struct.hdspm* %108)
  %110 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %111 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  store i8* %109, i8** %115, align 8
  br label %157

116:                                              ; preds = %103
  %117 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %118 = call i8* @hdspm_get_tco_sample_rate(%struct.hdspm* %117)
  %119 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %120 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  store i8* %118, i8** %124, align 8
  br label %157

125:                                              ; preds = %103
  %126 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %127 = call i8* @hdspm_get_sync_in_sample_rate(%struct.hdspm* %126)
  %128 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %129 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  store i8* %127, i8** %133, align 8
  br label %157

134:                                              ; preds = %103
  %135 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %136 = call i8* @hdspm_external_rate_to_enum(%struct.hdspm* %135)
  %137 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %138 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  store i8* %136, i8** %142, align 8
  br label %157

143:                                              ; preds = %103
  %144 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %145 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %146 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @HDSPM_AES32_AUTOSYNC_FROM_AES1, align 8
  %149 = sub nsw i64 %147, %148
  %150 = call i8* @hdspm_get_aes_sample_rate(%struct.hdspm* %144, i64 %149)
  %151 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %152 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  store i8* %150, i8** %156, align 8
  br label %157

157:                                              ; preds = %143, %134, %125, %116, %107
  br label %168

158:                                              ; preds = %2, %2
  %159 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %160 = call i8* @hdspm_external_rate_to_enum(%struct.hdspm* %159)
  %161 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %162 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  store i8* %160, i8** %166, align 8
  br label %168

167:                                              ; preds = %2
  br label %168

168:                                              ; preds = %167, %158, %157, %102, %56
  ret i32 0
}

declare dso_local %struct.hdspm* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i8* @hdspm_get_wc_sample_rate(%struct.hdspm*) #1

declare dso_local i8* @hdspm_get_tco_sample_rate(%struct.hdspm*) #1

declare dso_local i8* @hdspm_get_sync_in_sample_rate(%struct.hdspm*) #1

declare dso_local i8* @hdspm_get_s1_sample_rate(%struct.hdspm*, i32) #1

declare dso_local i8* @hdspm_external_rate_to_enum(%struct.hdspm*) #1

declare dso_local i8* @hdspm_get_aes_sample_rate(%struct.hdspm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
