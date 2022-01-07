; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_d0i3_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_d0i3_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { %struct.skl_d0i3_data }
%struct.skl_d0i3_data = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_tplg_d0i3_get(%struct.skl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skl_d0i3_data*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %7 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %6, i32 0, i32 0
  store %struct.skl_d0i3_data* %7, %struct.skl_d0i3_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 128, label %14
    i32 129, label %19
  ]

9:                                                ; preds = %2
  %10 = load %struct.skl_d0i3_data*, %struct.skl_d0i3_data** %5, align 8
  %11 = getelementptr inbounds %struct.skl_d0i3_data, %struct.skl_d0i3_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.skl_d0i3_data*, %struct.skl_d0i3_data** %5, align 8
  %16 = getelementptr inbounds %struct.skl_d0i3_data, %struct.skl_d0i3_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.skl_d0i3_data*, %struct.skl_d0i3_data** %5, align 8
  %21 = getelementptr inbounds %struct.skl_d0i3_data, %struct.skl_d0i3_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %2, %19, %14, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
