; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_create_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_rme9652 = type { i64, i32, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32 }

@snd_rme9652_controls = common dso_local global i32* null, align 8
@RME9652_NCHANNELS = common dso_local global i64 0, align 8
@snd_rme9652_adat3_check = common dso_local global i32 0, align 4
@snd_rme9652_adat1_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_rme9652*)* @snd_rme9652_create_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_create_controls(%struct.snd_card* %0, %struct.snd_rme9652* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_rme9652*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_rme9652* %1, %struct.snd_rme9652** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** @snd_rme9652_controls, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %16 = load i32*, i32** @snd_rme9652_controls, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %21 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* %19, %struct.snd_rme9652* %20)
  store %struct.snd_kcontrol* %21, %struct.snd_kcontrol** %8, align 8
  %22 = call i32 @snd_ctl_add(%struct.snd_card* %15, %struct.snd_kcontrol* %21)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %67

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %31 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %32 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %31, i32 0, i32 2
  store %struct.snd_kcontrol* %30, %struct.snd_kcontrol** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %39 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RME9652_NCHANNELS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %45 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %46 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_rme9652_adat3_check, %struct.snd_rme9652* %45)
  store %struct.snd_kcontrol* %46, %struct.snd_kcontrol** %8, align 8
  %47 = call i32 @snd_ctl_add(%struct.snd_card* %44, %struct.snd_kcontrol* %46)
  store i32 %47, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %67

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %54 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 15
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %59 = load %struct.snd_rme9652*, %struct.snd_rme9652** %5, align 8
  %60 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_rme9652_adat1_input, %struct.snd_rme9652* %59)
  store %struct.snd_kcontrol* %60, %struct.snd_kcontrol** %8, align 8
  %61 = call i32 @snd_ctl_add(%struct.snd_card* %58, %struct.snd_kcontrol* %60)
  store i32 %61, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %52
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63, %49, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_rme9652*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
