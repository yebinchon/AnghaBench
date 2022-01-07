; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_get_jack_location.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_get_jack_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_jack_location.bases = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Rear\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@get_jack_location.specials_idx = internal constant [7 x i8] c"\07\08\17\18\1978", align 1
@get_jack_location.specials = internal constant [7 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"Rear Panel\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Drive Bar\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Riser\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ATAPI\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Mobile-In\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Mobile-Out\00", align 1
@AC_DEFCFG_LOCATION = common dso_local global i32 0, align 4
@AC_DEFCFG_LOCATION_SHIFT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_jack_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_jack_location(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AC_DEFCFG_LOCATION, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @AC_DEFCFG_LOCATION_SHIFT, align 4
  %9 = ashr i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 15
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 15
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* @get_jack_location.bases, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %42

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @get_jack_location.specials_idx, i64 0, i64 0))
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* @get_jack_location.specials_idx, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i8*], [7 x i8*]* @get_jack_location.specials, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %42

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %20

41:                                               ; preds = %20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %32, %13
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
