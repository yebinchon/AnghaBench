; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_at73c213 = type { %struct.TYPE_2__*, %struct.snd_card* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_at73c213_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_at73c213*)* @snd_at73c213_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_mixer(%struct.snd_at73c213* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_at73c213*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_at73c213* %0, %struct.snd_at73c213** %3, align 8
  %8 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %9 = icmp eq %struct.snd_at73c213* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %12 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %10
  %19 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %20 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %19, i32 0, i32 1
  %21 = load %struct.snd_card*, %struct.snd_card** %20, align 8
  store %struct.snd_card* %21, %struct.snd_card** %4, align 8
  %22 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %23 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %26 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %24, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %49, %18
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** @snd_at73c213_controls, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %38 = load i32*, i32** @snd_at73c213_controls, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %43 = call i32 @snd_ctl_new1(i32* %41, %struct.snd_at73c213* %42)
  %44 = call i32 @snd_ctl_add(%struct.snd_card* %37, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %53

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %31

52:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %76

53:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** @snd_at73c213_controls, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = add nsw i32 %57, 1
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card* %61, i32 %62)
  store %struct.snd_kcontrol* %63, %struct.snd_kcontrol** %7, align 8
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %65 = icmp ne %struct.snd_kcontrol* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %69 = call i32 @snd_ctl_remove(%struct.snd_card* %67, %struct.snd_kcontrol* %68)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %52, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_at73c213*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_numid(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_remove(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
