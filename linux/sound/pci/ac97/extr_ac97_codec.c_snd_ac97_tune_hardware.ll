; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_tune_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_tune_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, i32, i64 }
%struct.ac97_quirk = type { i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"applying quirk type %s failed (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ac97 quirk for %s (%04x:%04x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"applying quirk type %d for %s failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_tune_hardware(%struct.snd_ac97* %0, %struct.ac97_quirk* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca %struct.ac97_quirk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store %struct.ac97_quirk* %1, %struct.ac97_quirk** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @apply_quirk_str(%struct.snd_ac97* %20, i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (%struct.snd_ac97*, i8*, i8*, i32, ...) @ac97_err(%struct.snd_ac97* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %130

32:                                               ; preds = %15, %11, %3
  %33 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %34 = icmp ne %struct.ac97_quirk* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %130

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %126, %38
  %40 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %41 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %129

44:                                               ; preds = %39
  %45 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %46 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %126

53:                                               ; preds = %44
  %54 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %55 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %60 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %63 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %68 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %71 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %74 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %72, %75
  %77 = icmp eq i32 %69, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %66, %58
  %79 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %80 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %85 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %88 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %126

92:                                               ; preds = %83, %78
  %93 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %94 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %95 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %98 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %101 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ac97_dbg(%struct.snd_ac97* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %96, i64 %99, i32 %102)
  %104 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %105 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %106 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @apply_quirk(%struct.snd_ac97* %104, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %92
  %112 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %113 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %114 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %119 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (%struct.snd_ac97*, i8*, i8*, i32, ...) @ac97_err(%struct.snd_ac97* %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %117, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %111, %92
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %130

125:                                              ; preds = %66
  br label %126

126:                                              ; preds = %125, %91, %52
  %127 = load %struct.ac97_quirk*, %struct.ac97_quirk** %6, align 8
  %128 = getelementptr inbounds %struct.ac97_quirk, %struct.ac97_quirk* %127, i32 1
  store %struct.ac97_quirk* %128, %struct.ac97_quirk** %6, align 8
  br label %39

129:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %123, %35, %30
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @apply_quirk_str(%struct.snd_ac97*, i8*) #1

declare dso_local i32 @ac97_err(%struct.snd_ac97*, i8*, i8*, i32, ...) #1

declare dso_local i32 @ac97_dbg(%struct.snd_ac97*, i8*, i32, i64, i32) #1

declare dso_local i32 @apply_quirk(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
