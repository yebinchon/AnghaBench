; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_kcontrol*, %struct.snd_card* }
%struct.snd_kcontrol = type { i8* }
%struct.snd_card = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"ESS Solo-1\00", align 1
@snd_es1938_controls = common dso_local global i32* null, align 8
@snd_es1938_hwv_free = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1938*)* @snd_es1938_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_mixer(%struct.es1938* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  store %struct.es1938* %0, %struct.es1938** %3, align 8
  %8 = load %struct.es1938*, %struct.es1938** %3, align 8
  %9 = getelementptr inbounds %struct.es1938, %struct.es1938* %8, i32 0, i32 4
  %10 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  store %struct.snd_card* %10, %struct.snd_card** %4, align 8
  %11 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %12 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %64, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** @snd_es1938_controls, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = load i32*, i32** @snd_es1938_controls, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.es1938*, %struct.es1938** %3, align 8
  %26 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %24, %struct.es1938* %25)
  store %struct.snd_kcontrol* %26, %struct.snd_kcontrol** %7, align 8
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %56 [
    i32 0, label %28
    i32 1, label %35
    i32 2, label %42
    i32 3, label %49
  ]

28:                                               ; preds = %20
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %30 = load %struct.es1938*, %struct.es1938** %3, align 8
  %31 = getelementptr inbounds %struct.es1938, %struct.es1938* %30, i32 0, i32 3
  store %struct.snd_kcontrol* %29, %struct.snd_kcontrol** %31, align 8
  %32 = load i8*, i8** @snd_es1938_hwv_free, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %56

35:                                               ; preds = %20
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %37 = load %struct.es1938*, %struct.es1938** %3, align 8
  %38 = getelementptr inbounds %struct.es1938, %struct.es1938* %37, i32 0, i32 2
  store %struct.snd_kcontrol* %36, %struct.snd_kcontrol** %38, align 8
  %39 = load i8*, i8** @snd_es1938_hwv_free, align 8
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %56

42:                                               ; preds = %20
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %44 = load %struct.es1938*, %struct.es1938** %3, align 8
  %45 = getelementptr inbounds %struct.es1938, %struct.es1938* %44, i32 0, i32 1
  store %struct.snd_kcontrol* %43, %struct.snd_kcontrol** %45, align 8
  %46 = load i8*, i8** @snd_es1938_hwv_free, align 8
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %48 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %56

49:                                               ; preds = %20
  %50 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %51 = load %struct.es1938*, %struct.es1938** %3, align 8
  %52 = getelementptr inbounds %struct.es1938, %struct.es1938* %51, i32 0, i32 0
  store %struct.snd_kcontrol* %50, %struct.snd_kcontrol** %52, align 8
  %53 = load i8*, i8** @snd_es1938_hwv_free, align 8
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %20, %49, %42, %35, %28
  %57 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %58 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %59 = call i32 @snd_ctl_add(%struct.snd_card* %57, %struct.snd_kcontrol* %58)
  store i32 %59, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %15

67:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.es1938*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
