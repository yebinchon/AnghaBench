; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_cmi8330.c_snd_cmi8330_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_cmi8330.c_snd_cmi8330_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_cmi8330 = type { i64, i32, i32 }

@CMI8329 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"CMI8329\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"CMI8330/C3D\00", align 1
@snd_cmi8330_controls = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_cmi8330*)* @snd_cmi8330_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmi8330_mixer(%struct.snd_card* %0, %struct.snd_cmi8330* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_cmi8330*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_cmi8330* %1, %struct.snd_cmi8330** %5, align 8
  %8 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %9 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %12 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CMI8329, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %18 = call i32 @strcpy(i32 %10, i8* %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %40, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** @snd_cmi8330_controls, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %26 = load i32*, i32** @snd_cmi8330_controls, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.snd_cmi8330*, %struct.snd_cmi8330** %5, align 8
  %31 = getelementptr inbounds %struct.snd_cmi8330, %struct.snd_cmi8330* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_ctl_new1(i32* %29, i32 %32)
  %34 = call i32 @snd_ctl_add(%struct.snd_card* %25, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %19

43:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
