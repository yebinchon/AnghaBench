; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_cs4231_attach_finish.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_cs4231_attach_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_cs4231* }
%struct.snd_cs4231 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @cs4231_attach_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_attach_finish(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %6 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %7 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %6, i32 0, i32 0
  %8 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  store %struct.snd_cs4231* %8, %struct.snd_cs4231** %4, align 8
  %9 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %10 = call i32 @snd_cs4231_pcm(%struct.snd_card* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %16 = call i32 @snd_cs4231_mixer(%struct.snd_card* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %41

20:                                               ; preds = %14
  %21 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %22 = call i32 @snd_cs4231_timer(%struct.snd_card* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %41

26:                                               ; preds = %20
  %27 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %28 = call i32 @snd_card_register(%struct.snd_card* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %34 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %38 = call i32 @dev_set_drvdata(i32* %36, %struct.snd_cs4231* %37)
  %39 = load i32, i32* @dev, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @dev, align 4
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %31, %25, %19, %13
  %42 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %43 = call i32 @snd_card_free(%struct.snd_card* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @snd_cs4231_pcm(%struct.snd_card*) #1

declare dso_local i32 @snd_cs4231_mixer(%struct.snd_card*) #1

declare dso_local i32 @snd_cs4231_timer(%struct.snd_card*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.snd_cs4231*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
