; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AC97_DOUBLE_RATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AC97_EXTENDED_STATUS = common dso_local global i64 0, align 8
@AC97_EA_VRM = common dso_local global i32 0, align 4
@AC97_EA_VRA = common dso_local global i32 0, align 4
@AC97_SCAP_SURROUND_DAC = common dso_local global i32 0, align 4
@AC97_SCAP_CENTER_LFE_DAC = common dso_local global i32 0, align 4
@AC97_EI_DRA = common dso_local global i32 0, align 4
@AC97_EA_DRA = common dso_local global i32 0, align 4
@AC97_GENERAL_PURPOSE = common dso_local global i32 0, align 4
@AC97_GP_DRSS_MASK = common dso_local global i32 0, align 4
@AC97_GP_DRSS_78 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_set_rate(%struct.snd_ac97* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ugt i32 %10, 48000
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AC97_DOUBLE_RATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %182

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 133
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %182

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @snd_ac97_update_power(%struct.snd_ac97* %33, i32 %34, i32 1)
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %102 [
    i32 130, label %37
    i32 133, label %55
    i32 131, label %55
    i32 129, label %76
    i32 132, label %87
    i32 128, label %98
  ]

37:                                               ; preds = %32
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @AC97_EXTENDED_STATUS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AC97_EA_VRM, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 48000
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %182

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %37
  br label %105

55:                                               ; preds = %32, %32
  %56 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @AC97_EXTENDED_STATUS, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AC97_EA_VRA, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 48000
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 96000
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %182

74:                                               ; preds = %68, %65
  br label %75

75:                                               ; preds = %74, %55
  br label %105

76:                                               ; preds = %32
  %77 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %78 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AC97_SCAP_SURROUND_DAC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %182

86:                                               ; preds = %76
  br label %105

87:                                               ; preds = %32
  %88 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %89 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AC97_SCAP_CENTER_LFE_DAC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %182

97:                                               ; preds = %87
  br label %105

98:                                               ; preds = %32
  %99 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @set_spdif_rate(%struct.snd_ac97* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %182

102:                                              ; preds = %32
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %182

105:                                              ; preds = %97, %86, %75, %54
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = udiv i32 %109, 2
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %114 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = mul i32 %112, %117
  %119 = udiv i32 %118, 48000
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ugt i32 %120, 65535
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %182

125:                                              ; preds = %111
  %126 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %127 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AC97_EI_DRA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %125
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 133
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %137 = load i64, i64* @AC97_EXTENDED_STATUS, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @AC97_EA_DRA, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @AC97_EA_DRA, align 4
  br label %145

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %136, i32 %138, i32 %139, i32 %146)
  br label %148

148:                                              ; preds = %145, %132, %125
  %149 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, 65535
  %153 = call i32 @snd_ac97_update(%struct.snd_ac97* %149, i32 %150, i32 %152)
  %154 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @snd_ac97_read(%struct.snd_ac97* %154, i32 %155)
  %157 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %158 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @AC97_EI_DRA, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %148
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 133
  br i1 %165, label %166, label %181

166:                                              ; preds = %163
  %167 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %168 = load i32, i32* @AC97_GENERAL_PURPOSE, align 4
  %169 = load i32, i32* @AC97_GP_DRSS_MASK, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @AC97_GP_DRSS_78, align 4
  br label %175

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %174 ]
  %177 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %167, i32 %168, i32 %169, i32 %176)
  %178 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %179 = load i32, i32* @AC97_GENERAL_PURPOSE, align 4
  %180 = call i32 @snd_ac97_read(%struct.snd_ac97* %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %163, %148
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %122, %102, %98, %94, %83, %71, %50, %28, %22
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @snd_ac97_update_power(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @set_spdif_rate(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_update(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
