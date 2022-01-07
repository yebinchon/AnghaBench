; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_amd7930 = type { %struct.snd_card* }
%struct.snd_card = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@amd7930_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_amd7930*)* @snd_amd7930_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_amd7930_mixer(%struct.snd_amd7930* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_amd7930*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_amd7930* %0, %struct.snd_amd7930** %3, align 8
  %7 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %8 = icmp ne %struct.snd_amd7930* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %11 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %10, i32 0, i32 0
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
  br label %56

23:                                               ; preds = %15
  %24 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %25 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %24, i32 0, i32 0
  %26 = load %struct.snd_card*, %struct.snd_card** %25, align 8
  store %struct.snd_card* %26, %struct.snd_card** %4, align 8
  %27 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %28 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %29, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %52, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** @amd7930_controls, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %41 = load i32*, i32** @amd7930_controls, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %46 = call i32 @snd_ctl_new1(i32* %44, %struct.snd_amd7930* %45)
  %47 = call i32 @snd_ctl_add(%struct.snd_card* %40, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %49, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_amd7930*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
