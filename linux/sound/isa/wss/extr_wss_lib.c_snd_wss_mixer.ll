; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32, %struct.TYPE_2__*, %struct.snd_card* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { i32 }

@snd_wss_controls = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WSS_HW_AD1848_MASK = common dso_local global i32 0, align 4
@WSS_HW_OPTI93X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_wss_mixer(%struct.snd_wss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  %8 = load i32*, i32** @snd_wss_controls, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %11 = icmp ne %struct.snd_wss* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %14 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %13, i32 0, i32 1
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
  br label %77

26:                                               ; preds = %18
  %27 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %28 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %27, i32 0, i32 2
  %29 = load %struct.snd_card*, %struct.snd_card** %28, align 8
  store %struct.snd_card* %29, %struct.snd_card** %4, align 8
  %30 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %34 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i32 %32, i32 %37)
  %39 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %40 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WSS_HW_AD1848_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 11, i32* %7, align 4
  br label %54

46:                                               ; preds = %26
  %47 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %48 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @WSS_HW_OPTI93X, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 9, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %45
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %61 = load i32*, i32** @snd_wss_controls, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %66 = call i32 @snd_ctl_new1(i32* %64, %struct.snd_wss* %65)
  %67 = call i32 @snd_ctl_add(%struct.snd_card* %60, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %55

76:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %70, %23
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
