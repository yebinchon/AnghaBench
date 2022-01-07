; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"audio-hw-reset\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"platform-do-hw-reset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hw-reset\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"amp-mute\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"platform-do-amp-mute\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"headphone-mute\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"platform-do-headphone-mute\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"line-output-mute\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"platform-do-lineout-mute\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"headphone-detect\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"keywest-gpio15\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"line-output-detect\00", align 1
@IS_G4DA = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"keywest-gpio16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pmac*)* @tumbler_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_init(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmac_tumbler*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %5 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %5, i32 0, i32 0
  %7 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %6, align 8
  store %struct.pmac_tumbler* %7, %struct.pmac_tumbler** %4, align 8
  %8 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %9 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %8, i32 0, i32 7
  %10 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %14 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %13, i32 0, i32 7
  %15 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %14, i32 1)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %18 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %17, i32 0, i32 6
  %19 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32 0)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %23 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %22, i32 0, i32 6
  %24 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %23, i32 1)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %27 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %26, i32 0, i32 5
  %28 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* %27, i32 0)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %32 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %31, i32 0, i32 5
  %33 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32* %32, i32 1)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %36 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %35, i32 0, i32 4
  %37 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %36, i32 0)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %41 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %40, i32 0, i32 4
  %42 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %41, i32 1)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %45 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %44, i32 0, i32 3
  %46 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* null, i32* %45, i32 0)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %51 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %50, i32 0, i32 3
  %52 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* null, i32* %51, i32 1)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %3, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %58 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %57, i32 0, i32 3
  %59 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* null, i32* %58, i32 1)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %63 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %65 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %64, i32 0, i32 2
  %66 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* null, i32* %65, i32 0)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %71 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %70, i32 0, i32 2
  %72 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* null, i32* %71, i32 1)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %60
  %74 = load i64, i64* @IS_G4DA, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %81 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %80, i32 0, i32 2
  %82 = call i32 @tumbler_find_device(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* null, i32* %81, i32 1)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %76, %73
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %86 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %88 = call i32 @tumbler_reset_audio(%struct.snd_pmac* %87)
  ret i32 0
}

declare dso_local i32 @tumbler_find_device(i8*, i8*, i32*, i32) #1

declare dso_local i32 @tumbler_reset_audio(%struct.snd_pmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
