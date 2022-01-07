; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_vortex_a3d_register_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_vortex_a3d_register_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.snd_kcontrol = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NR_A3D = common dso_local global i32 0, align 4
@vortex_a3d_kcontrol = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTRLID_HRTF = common dso_local global i32 0, align 4
@snd_vortex_a3d_hrtf_info = common dso_local global i32 0, align 4
@snd_vortex_a3d_hrtf_put = common dso_local global i32 0, align 4
@CTRLID_ITD = common dso_local global i32 0, align 4
@snd_vortex_a3d_itd_info = common dso_local global i32 0, align 4
@snd_vortex_a3d_itd_put = common dso_local global i32 0, align 4
@CTRLID_GAINS = common dso_local global i32 0, align 4
@snd_vortex_a3d_ild_info = common dso_local global i32 0, align 4
@snd_vortex_a3d_ild_put = common dso_local global i32 0, align 4
@CTRLID_FILTER = common dso_local global i32 0, align 4
@snd_vortex_a3d_filter_info = common dso_local global i32 0, align 4
@snd_vortex_a3d_filter_put = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @vortex_a3d_register_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_a3d_register_controls(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NR_A3D, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_a3d_kcontrol, i32* %17)
  store %struct.snd_kcontrol* %18, %struct.snd_kcontrol** %4, align 8
  %19 = icmp eq %struct.snd_kcontrol* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %167

23:                                               ; preds = %11
  %24 = load i32, i32* @CTRLID_HRTF, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @snd_vortex_a3d_hrtf_info, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @snd_vortex_a3d_hrtf_put, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %38 = call i32 @snd_ctl_add(i32 %36, %struct.snd_kcontrol* %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %167

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NR_A3D, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_a3d_kcontrol, i32* %57)
  store %struct.snd_kcontrol* %58, %struct.snd_kcontrol** %4, align 8
  %59 = icmp eq %struct.snd_kcontrol* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %167

63:                                               ; preds = %51
  %64 = load i32, i32* @CTRLID_ITD, align 4
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %66 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @snd_vortex_a3d_itd_info, align 4
  %69 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %70 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @snd_vortex_a3d_itd_put, align 4
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %78 = call i32 @snd_ctl_add(i32 %76, %struct.snd_kcontrol* %77)
  store i32 %78, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %167

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %47

86:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %123, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @NR_A3D, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_a3d_kcontrol, i32* %97)
  store %struct.snd_kcontrol* %98, %struct.snd_kcontrol** %4, align 8
  %99 = icmp eq %struct.snd_kcontrol* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %167

103:                                              ; preds = %91
  %104 = load i32, i32* @CTRLID_GAINS, align 4
  %105 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %106 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @snd_vortex_a3d_ild_info, align 4
  %109 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %110 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @snd_vortex_a3d_ild_put, align 4
  %112 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %113 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %118 = call i32 @snd_ctl_add(i32 %116, %struct.snd_kcontrol* %117)
  store i32 %118, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %103
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %167

122:                                              ; preds = %103
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %87

126:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %163, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @NR_A3D, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vortex_a3d_kcontrol, i32* %137)
  store %struct.snd_kcontrol* %138, %struct.snd_kcontrol** %4, align 8
  %139 = icmp eq %struct.snd_kcontrol* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %167

143:                                              ; preds = %131
  %144 = load i32, i32* @CTRLID_FILTER, align 4
  %145 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %146 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @snd_vortex_a3d_filter_info, align 4
  %149 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %150 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @snd_vortex_a3d_filter_put, align 4
  %152 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %153 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %158 = call i32 @snd_ctl_add(i32 %156, %struct.snd_kcontrol* %157)
  store i32 %158, i32* %5, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %143
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %2, align 4
  br label %167

162:                                              ; preds = %143
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %127

166:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %160, %140, %120, %100, %80, %60, %40, %20
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, i32*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
