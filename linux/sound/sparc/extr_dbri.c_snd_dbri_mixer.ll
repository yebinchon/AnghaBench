; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, %struct.snd_dbri* }
%struct.snd_dbri = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@dbri_controls = common dso_local global i32* null, align 8
@DBRI_REC = common dso_local global i32 0, align 4
@DBRI_NO_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @snd_dbri_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dbri_mixer(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_dbri*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = icmp ne %struct.snd_card* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 2
  %12 = load %struct.snd_dbri*, %struct.snd_dbri** %11, align 8
  %13 = icmp ne %struct.snd_dbri* %12, null
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ true, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %81

23:                                               ; preds = %15
  %24 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %25 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %24, i32 0, i32 2
  %26 = load %struct.snd_dbri*, %struct.snd_dbri** %25, align 8
  store %struct.snd_dbri* %26, %struct.snd_dbri** %6, align 8
  %27 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strcpy(i32 %29, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %53, %23
  %35 = load i32, i32* %4, align 4
  %36 = load i32*, i32** @dbri_controls, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %41 = load i32*, i32** @dbri_controls, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %46 = call i32 @snd_ctl_new1(i32* %44, %struct.snd_dbri* %45)
  %47 = call i32 @snd_ctl_add(%struct.snd_card* %40, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %81

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %34

56:                                               ; preds = %34
  %57 = load i32, i32* @DBRI_REC, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %77, %56
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DBRI_NO_STREAMS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %64 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %71 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %58

80:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %50, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_dbri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
