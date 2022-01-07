; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_snd_pmac_awacs_put_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_awacs.c_snd_pmac_awacs_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_pmac = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_pmac_awacs_put_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_awacs_put_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [2 x i32], align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %15 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_pmac* %15, %struct.snd_pmac** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %47, 15
  br i1 %48, label %53, label %49

49:                                               ; preds = %2
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %51, 15
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %119

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sub i32 15, %61
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 15, %65
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %56
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  store i32 %71, i32* %69, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  store i32 %74, i32* %72, align 4
  %75 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %75, i32 0, i32 1
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %80 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = shl i32 15, %87
  %89 = or i32 15, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  store i32 %91, i32* %10, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %68
  %106 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %68
  %111 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %112 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %111, i32 0, i32 1
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* %112, i64 %113)
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %115, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %110, %53
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
