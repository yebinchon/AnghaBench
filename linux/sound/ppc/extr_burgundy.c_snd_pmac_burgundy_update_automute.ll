; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_update_automute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_update_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"iMac\00", align 1
@MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES = common dso_local global i32 0, align 4
@BURGUNDY_OUTPUT_LEFT = common dso_local global i32 0, align 4
@BURGUNDY_OUTPUT_RIGHT = common dso_local global i32 0, align 4
@BURGUNDY_HP_LEFT = common dso_local global i32 0, align 4
@BURGUNDY_HP_RIGHT = common dso_local global i32 0, align 4
@BURGUNDY_OUTPUT_INTERN = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32)* @snd_pmac_burgundy_update_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_burgundy_update_automute(%struct.snd_pmac* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %114

12:                                               ; preds = %2
  %13 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %15 = load i32, i32* @MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES, align 4
  %16 = call i32 @snd_pmac_burgundy_rcb(%struct.snd_pmac* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* @BURGUNDY_OUTPUT_LEFT, align 4
  %21 = load i32, i32* @BURGUNDY_OUTPUT_RIGHT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BURGUNDY_HP_LEFT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BURGUNDY_HP_RIGHT, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  br label %35

28:                                               ; preds = %12
  %29 = load i32, i32* @BURGUNDY_OUTPUT_LEFT, align 4
  %30 = load i32, i32* @BURGUNDY_OUTPUT_RIGHT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BURGUNDY_OUTPUT_INTERN, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  br label %35

35:                                               ; preds = %28, %19
  %36 = phi i32 [ %27, %19 ], [ %34, %28 ]
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %40 = call i64 @snd_pmac_burgundy_detect_headphone(%struct.snd_pmac* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @BURGUNDY_HP_LEFT, align 4
  %47 = load i32, i32* @BURGUNDY_HP_RIGHT, align 4
  %48 = or i32 %46, %47
  br label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @BURGUNDY_OUTPUT_LEFT, align 4
  %51 = load i32, i32* @BURGUNDY_OUTPUT_RIGHT, align 4
  %52 = or i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %70

57:                                               ; preds = %35
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @BURGUNDY_OUTPUT_LEFT, align 4
  %62 = load i32, i32* @BURGUNDY_OUTPUT_RIGHT, align 4
  %63 = or i32 %61, %62
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @BURGUNDY_OUTPUT_INTERN, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %53
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %114

78:                                               ; preds = %73, %70
  %79 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %80 = load i32, i32* @MASK_ADDR_BURGUNDY_MORE_OUTPUTENABLES, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @snd_pmac_burgundy_wcb(%struct.snd_pmac* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %78
  %86 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %87 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %90 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %91 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @snd_ctl_notify(i32 %88, i32 %89, i32* %93)
  %95 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %96 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %99 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %100 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = call i32 @snd_ctl_notify(i32 %97, i32 %98, i32* %102)
  %104 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %105 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %108 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %109 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = call i32 @snd_ctl_notify(i32 %106, i32 %107, i32* %111)
  br label %113

113:                                              ; preds = %85, %78
  br label %114

114:                                              ; preds = %77, %113, %2
  ret void
}

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @snd_pmac_burgundy_rcb(%struct.snd_pmac*, i32) #1

declare dso_local i64 @snd_pmac_burgundy_detect_headphone(%struct.snd_pmac*) #1

declare dso_local i32 @snd_pmac_burgundy_wcb(%struct.snd_pmac*, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
