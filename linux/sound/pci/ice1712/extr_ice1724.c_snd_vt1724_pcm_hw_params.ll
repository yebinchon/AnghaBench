; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_ice1712 = type { i32, %struct.snd_pcm_substream**, %struct.snd_pcm_substream**, %struct.snd_pcm_substream* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_vt1724_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_ice1712* %11, %struct.snd_ice1712** %6, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %13 = call i32 @params_channels(%struct.snd_pcm_hw_params* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %15 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 3
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp eq %struct.snd_pcm_substream* %17, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 2
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %63, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 1
  %33 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %33, i64 %35
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %36, align 8
  %38 = icmp ne %struct.snd_pcm_substream* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %30
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %41 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %40, i32 0, i32 1
  %42 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %42, i64 %44
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %45, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = icmp ne %struct.snd_pcm_substream* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %161

55:                                               ; preds = %39, %30
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 1
  %59 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %59, i64 %61
  store %struct.snd_pcm_substream* %56, %struct.snd_pcm_substream** %62, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %26

66:                                               ; preds = %26
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %72 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %71, i32 0, i32 1
  %73 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %73, i64 %75
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %76, align 8
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %79 = icmp eq %struct.snd_pcm_substream* %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 1
  %83 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %83, i64 %85
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %86, align 8
  br label %87

87:                                               ; preds = %80, %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %67

91:                                               ; preds = %67
  br label %144

92:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %140, %92
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 3
  br i1 %95, label %96, label %143

96:                                               ; preds = %93
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %98 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %97, i32 0, i32 2
  %99 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %99, i64 %101
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %102, align 8
  %104 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %105 = icmp eq %struct.snd_pcm_substream* %103, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %96
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %108 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %107, i32 0, i32 1
  %109 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %109, i64 %111
  %113 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %112, align 8
  %114 = icmp ne %struct.snd_pcm_substream* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %117 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %116, i32 0, i32 1
  %118 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %118, i64 %120
  %122 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %121, align 8
  %123 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %124 = icmp ne %struct.snd_pcm_substream* %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %127 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* @EBUSY, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %161

131:                                              ; preds = %115, %106
  %132 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %133 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %134 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %133, i32 0, i32 1
  %135 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %135, i64 %137
  store %struct.snd_pcm_substream* %132, %struct.snd_pcm_substream** %138, align 8
  br label %143

139:                                              ; preds = %96
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %93

143:                                              ; preds = %131, %93
  br label %144

144:                                              ; preds = %143, %91
  %145 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %146 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %149 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %150 = call i32 @params_rate(%struct.snd_pcm_hw_params* %149)
  %151 = call i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712* %148, i32 %150, i32 0)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %3, align 4
  br label %161

156:                                              ; preds = %144
  %157 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %158 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %159 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %158)
  %160 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %157, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %156, %154, %125, %49
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_vt1724_set_pro_rate(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
