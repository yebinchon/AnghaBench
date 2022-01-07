; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_create_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_create_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_emu8000 = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EMU8000_NUM_CONTROLS = common dso_local global i32 0, align 4
@mixer_defs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_emu8000*)* @snd_emu8000_create_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu8000_create_mixer(%struct.snd_card* %0, %struct.snd_emu8000* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_emu8000*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_emu8000* %1, %struct.snd_emu8000** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %9 = icmp ne %struct.snd_emu8000* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %93

22:                                               ; preds = %14
  %23 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %24 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %27 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @memset(i64* %28, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %53, %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EMU8000_NUM_CONTROLS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %36 = load i32*, i32** @mixer_defs, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %42 = call i64 @snd_ctl_new1(i32 %40, %struct.snd_emu8000* %41)
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %44 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %42, i64* %48, align 8
  %49 = call i32 @snd_ctl_add(%struct.snd_card* %35, i64 %42)
  store i32 %49, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %57

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %30

56:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %93

57:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @EMU8000_NUM_CONTROLS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %64 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %63, i32 0, i32 0
  %65 = call i32 @down_write(i32* %64)
  %66 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %67 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %62
  %75 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %76 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %77 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @snd_ctl_remove(%struct.snd_card* %75, i64 %82)
  br label %84

84:                                               ; preds = %74, %62
  %85 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %86 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %85, i32 0, i32 0
  %87 = call i32 @up_write(i32* %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %56, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i64) #1

declare dso_local i64 @snd_ctl_new1(i32, %struct.snd_emu8000*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @snd_ctl_remove(%struct.snd_card*, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
