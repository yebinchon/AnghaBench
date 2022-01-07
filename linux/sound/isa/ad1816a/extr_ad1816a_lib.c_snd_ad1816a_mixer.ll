; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_ad1816a_controls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ad1816a_mixer(%struct.snd_ad1816a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ad1816a*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %3, align 8
  %7 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %8 = icmp ne %struct.snd_ad1816a* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %11 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %10, i32 0, i32 0
  %12 = load %struct.snd_card*, %struct.snd_card** %11, align 8
  %13 = icmp ne %struct.snd_card* %12, null
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
  br label %55

23:                                               ; preds = %15
  %24 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %24, i32 0, i32 0
  %26 = load %struct.snd_card*, %struct.snd_card** %25, align 8
  store %struct.snd_card* %26, %struct.snd_card** %4, align 8
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %31 = call i32 @snd_ad1816a_chip_id(%struct.snd_ad1816a* %30)
  %32 = call i32 @strcpy(i32 %29, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %51, %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** @snd_ad1816a_controls, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %40 = load i32*, i32** @snd_ad1816a_controls, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %3, align 8
  %45 = call i32 @snd_ctl_new1(i32* %43, %struct.snd_ad1816a* %44)
  %46 = call i32 @snd_ctl_add(%struct.snd_card* %39, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %55

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %33

54:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %48, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_ad1816a_chip_id(%struct.snd_ad1816a*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_ad1816a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
