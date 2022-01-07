; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_put_drc_value.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_put_drc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { i64, %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PMAC_TUMBLER = common dso_local global i64 0, align 8
@TAS3001_DRC_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TAS3004_DRC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @tumbler_put_drc_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_put_drc_value(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  %7 = alloca %struct.pmac_tumbler*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pmac* %11, %struct.snd_pmac** %6, align 8
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 1
  %14 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %13, align 8
  store %struct.pmac_tumbler* %14, %struct.pmac_tumbler** %7, align 8
  %15 = icmp ne %struct.pmac_tumbler* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PMAC_TUMBLER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TAS3001_DRC_MAX, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %75

39:                                               ; preds = %32
  br label %48

40:                                               ; preds = %19
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TAS3004_DRC_MAX, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %39
  %49 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %50 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %60 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PMAC_TUMBLER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %68 = call i32 @tumbler_set_drc(%struct.pmac_tumbler* %67)
  br label %72

69:                                               ; preds = %57
  %70 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %7, align 8
  %71 = call i32 @snapper_set_drc(%struct.pmac_tumbler* %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %44, %36, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @tumbler_set_drc(%struct.pmac_tumbler*) #1

declare dso_local i32 @snapper_set_drc(%struct.pmac_tumbler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
