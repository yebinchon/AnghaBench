; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_daca.c_daca_put_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_daca.c_daca_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { %struct.pmac_daca* }
%struct.pmac_daca = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DACA_VOL_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @daca_put_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daca_put_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  %7 = alloca %struct.pmac_daca*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_pmac* %11, %struct.snd_pmac** %6, align 8
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 0
  %14 = load %struct.pmac_daca*, %struct.pmac_daca** %13, align 8
  store %struct.pmac_daca* %14, %struct.pmac_daca** %7, align 8
  %15 = icmp ne %struct.pmac_daca* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DACA_VOL_MAX, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %19
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DACA_VOL_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %19
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %80

48:                                               ; preds = %40
  %49 = load %struct.pmac_daca*, %struct.pmac_daca** %7, align 8
  %50 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.pmac_daca*, %struct.pmac_daca** %7, align 8
  %57 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %58, %60
  br label %62

62:                                               ; preds = %55, %48
  %63 = phi i1 [ true, %48 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pmac_daca*, %struct.pmac_daca** %7, align 8
  %71 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pmac_daca*, %struct.pmac_daca** %7, align 8
  %75 = getelementptr inbounds %struct.pmac_daca, %struct.pmac_daca* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pmac_daca*, %struct.pmac_daca** %7, align 8
  %77 = call i32 @daca_set_volume(%struct.pmac_daca* %76)
  br label %78

78:                                               ; preds = %67, %62
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %45, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @daca_set_volume(%struct.pmac_daca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
