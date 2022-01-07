; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_set_id_no_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_set_id_no_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@SNDRV_CARDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"_%X\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to set card id (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*, i8*, i8*)* @snd_card_set_id_no_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_card_set_id_no_lock(%struct.snd_card* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [5 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @copy_valid_id_string(%struct.snd_card* %14, i8* %15, i8* %16)
  %18 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %80, %3
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %74, %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SNDRV_CARDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @card_id_ok(%struct.snd_card* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %104

45:                                               ; preds = %39
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 8
  br i1 %56, label %57, label %65

57:                                               ; preds = %45
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  store i8* %64, i8** %11, align 8
  br label %70

65:                                               ; preds = %45
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %65, %57
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %73 = call i32 @strcpy(i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %35

77:                                               ; preds = %35
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %10, align 8
  store i8 0, i8* %81, align 1
  br label %21

82:                                               ; preds = %77
  %83 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %84 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %89 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %82
  %95 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %96 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %99 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @strlcpy(i8* %97, i64 %102, i32 8)
  br label %104

104:                                              ; preds = %44, %94, %82
  ret void
}

declare dso_local i32 @copy_valid_id_string(%struct.snd_card*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @card_id_ok(%struct.snd_card*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
