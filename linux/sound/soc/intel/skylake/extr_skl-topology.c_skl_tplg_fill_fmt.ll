; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_module_fmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid token %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.skl_module_fmt*, i32, i32)* @skl_tplg_fill_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_fill_fmt(%struct.device* %0, %struct.skl_module_fmt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.skl_module_fmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.skl_module_fmt* %1, %struct.skl_module_fmt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %43 [
    i32 134, label %11
    i32 131, label %15
    i32 135, label %19
    i32 129, label %23
    i32 133, label %27
    i32 130, label %31
    i32 128, label %35
    i32 132, label %39
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %14 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %49

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %18 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %22 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %26 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %49

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %30 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  br label %49

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %34 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %49

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %38 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  br label %49

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %7, align 8
  %42 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  br label %49

43:                                               ; preds = %4
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %39, %35, %31, %27, %23, %19, %15, %11
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
