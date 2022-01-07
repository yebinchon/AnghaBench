; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_set_recsrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_set_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { %struct.snd_mixer_oss* }
%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot*, i32 (%struct.snd_mixer_oss_file*, i32*)*, {}* }
%struct.snd_mixer_oss_slot = type { i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)* }
%struct.snd_mixer_oss_file.0 = type opaque
%struct.snd_mixer_oss_file.1 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, i32)* @snd_mixer_oss_set_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_set_recsrc(%struct.snd_mixer_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca %struct.snd_mixer_oss_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %13 = getelementptr inbounds %struct.snd_mixer_oss_file, %struct.snd_mixer_oss_file* %12, i32 0, i32 0
  %14 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %13, align 8
  store %struct.snd_mixer_oss* %14, %struct.snd_mixer_oss** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %16 = icmp eq %struct.snd_mixer_oss* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %139

20:                                               ; preds = %2
  %21 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %22 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %21, i32 0, i32 2
  %23 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.snd_mixer_oss_file*, i32*)* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %27 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %26, i32 0, i32 3
  %28 = bitcast {}** %27 to i32 (%struct.snd_mixer_oss_file*, i32)**
  %29 = load i32 (%struct.snd_mixer_oss_file*, i32)*, i32 (%struct.snd_mixer_oss_file*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.snd_mixer_oss_file*, i32)* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %34 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %41 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %31
  %47 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %48 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %47, i32 0, i32 3
  %49 = bitcast {}** %48 to i32 (%struct.snd_mixer_oss_file*, i32)**
  %50 = load i32 (%struct.snd_mixer_oss_file*, i32)*, i32 (%struct.snd_mixer_oss_file*, i32)** %49, align 8
  %51 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @ffz(i32 %53)
  %55 = call i32 %50(%struct.snd_mixer_oss_file* %51, i32 %54)
  %56 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %57 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %56, i32 0, i32 2
  %58 = load i32 (%struct.snd_mixer_oss_file*, i32*)*, i32 (%struct.snd_mixer_oss_file*, i32*)** %57, align 8
  %59 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %60 = call i32 %58(%struct.snd_mixer_oss_file* %59, i32* %10)
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %46, %25, %20
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %95, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 31
  br i1 %66, label %67, label %98

67:                                               ; preds = %64
  %68 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %69 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %68, i32 0, i32 1
  %70 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %70, i64 %72
  store %struct.snd_mixer_oss_slot* %73, %struct.snd_mixer_oss_slot** %7, align 8
  %74 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %75 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %74, i32 0, i32 1
  %76 = load i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)*, i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %67
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  store i32 %85, i32* %9, align 4
  %86 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %87 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %86, i32 0, i32 1
  %88 = load i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)*, i32 (%struct.snd_mixer_oss_file.1*, %struct.snd_mixer_oss_slot*, i32)** %87, align 8
  %89 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %90 = bitcast %struct.snd_mixer_oss_file* %89 to %struct.snd_mixer_oss_file.1*
  %91 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 %88(%struct.snd_mixer_oss_file.1* %90, %struct.snd_mixer_oss_slot* %91, i32 %92)
  br label %94

94:                                               ; preds = %78, %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %64

98:                                               ; preds = %64
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %137, label %101

101:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %133, %101
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 31
  br i1 %104, label %105, label %136

105:                                              ; preds = %102
  %106 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %107 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %106, i32 0, i32 1
  %108 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %108, i64 %110
  store %struct.snd_mixer_oss_slot* %111, %struct.snd_mixer_oss_slot** %7, align 8
  %112 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %113 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %112, i32 0, i32 0
  %114 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %113, align 8
  %115 = icmp ne i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)* %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  %117 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %118 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %117, i32 0, i32 0
  %119 = load i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)*, i32 (%struct.snd_mixer_oss_file.0*, %struct.snd_mixer_oss_slot*, i32*)** %118, align 8
  %120 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %121 = bitcast %struct.snd_mixer_oss_file* %120 to %struct.snd_mixer_oss_file.0*
  %122 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %7, align 8
  %123 = call i32 %119(%struct.snd_mixer_oss_file.0* %121, %struct.snd_mixer_oss_slot* %122, i32* %9)
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i32, i32* %8, align 4
  %128 = shl i32 1, %127
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %126, %116
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %102

136:                                              ; preds = %102
  br label %137

137:                                              ; preds = %136, %98
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %17
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ffz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
