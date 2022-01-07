; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_dac_mute_all.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wtm.c_stac9460_dac_mute_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@STAC946X_MASTER_VOLUME = common dso_local global i32 0, align 4
@STAC946X_LF_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8, i16*)* @stac9460_dac_mute_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac9460_dac_mute_all(%struct.snd_ice1712* %0, i8 zeroext %1, i16* %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16* %2, i16** %6, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %80, %3
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 7
  br i1 %14, label %15, label %83

15:                                               ; preds = %12
  %16 = load i16*, i16** %6, align 8
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %15
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call zeroext i8 @stac9460_get(%struct.snd_ice1712* %34, i32 %35)
  store i8 %36, i8* %8, align 1
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = xor i32 %38, -1
  %40 = shl i32 %39, 7
  %41 = and i32 %40, 128
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, -129
  %45 = or i32 %41, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %7, align 1
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %48, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %33
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8, i8* %7, align 1
  %59 = call i32 @stac9460_put(%struct.snd_ice1712* %56, i32 %57, i8 zeroext %58)
  %60 = load i16*, i16** %6, align 8
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = trunc i32 %65 to i16
  %67 = load i16*, i16** %6, align 8
  store i16 %66, i16* %67, align 2
  br label %78

68:                                               ; preds = %33
  %69 = load i16*, i16** %6, align 8
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %71, %74
  %76 = trunc i32 %75 to i16
  %77 = load i16*, i16** %6, align 8
  store i16 %76, i16* %77, align 2
  br label %78

78:                                               ; preds = %68, %55
  br label %79

79:                                               ; preds = %78, %15
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %12

83:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %153, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %156

87:                                               ; preds = %84
  %88 = load i16*, i16** %6, align 8
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 7
  %93 = shl i32 1, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %152

96:                                               ; preds = %87
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @STAC946X_MASTER_VOLUME, align 4
  store i32 %100, i32* %10, align 4
  br label %106

101:                                              ; preds = %96
  %102 = load i32, i32* @STAC946X_LF_VOLUME, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %99
  %107 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call zeroext i8 @stac9460_2_get(%struct.snd_ice1712* %107, i32 %108)
  store i8 %109, i8* %8, align 1
  %110 = load i8, i8* %5, align 1
  %111 = zext i8 %110 to i32
  %112 = xor i32 %111, -1
  %113 = shl i32 %112, 7
  %114 = and i32 %113, 128
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, -129
  %118 = or i32 %114, %117
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %7, align 1
  %120 = load i8, i8* %7, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* %8, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp ne i32 %121, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %106
  %129 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i8, i8* %7, align 1
  %132 = call i32 @stac9460_2_put(%struct.snd_ice1712* %129, i32 %130, i8 zeroext %131)
  %133 = load i16*, i16** %6, align 8
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = load i32, i32* %9, align 4
  %137 = shl i32 1, %136
  %138 = or i32 %135, %137
  %139 = trunc i32 %138 to i16
  %140 = load i16*, i16** %6, align 8
  store i16 %139, i16* %140, align 2
  br label %151

141:                                              ; preds = %106
  %142 = load i16*, i16** %6, align 8
  %143 = load i16, i16* %142, align 2
  %144 = zext i16 %143 to i32
  %145 = load i32, i32* %9, align 4
  %146 = shl i32 1, %145
  %147 = xor i32 %146, -1
  %148 = and i32 %144, %147
  %149 = trunc i32 %148 to i16
  %150 = load i16*, i16** %6, align 8
  store i16 %149, i16* %150, align 2
  br label %151

151:                                              ; preds = %141, %128
  br label %152

152:                                              ; preds = %151, %87
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %84

156:                                              ; preds = %84
  ret void
}

declare dso_local zeroext i8 @stac9460_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @stac9460_2_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @stac9460_2_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
