; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, %struct.snd_cs4231* }
%struct.snd_cs4231 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_cs4231_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @snd_cs4231_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_mixer(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %7, i32 0, i32 1
  %9 = load %struct.snd_cs4231*, %struct.snd_cs4231** %8, align 8
  store %struct.snd_cs4231* %9, %struct.snd_cs4231** %4, align 8
  %10 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %11 = icmp ne %struct.snd_cs4231* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %14 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ true, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %31 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcpy(i32 %29, i32 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %55, %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** @snd_cs4231_controls, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %43 = load i32*, i32** @snd_cs4231_controls, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %48 = call i32 @snd_ctl_new1(i32* %46, %struct.snd_cs4231* %47)
  %49 = call i32 @snd_ctl_add(%struct.snd_card* %42, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %52, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_cs4231*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
