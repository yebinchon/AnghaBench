; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_pm_get_clos.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_pm_get_clos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_clos_config = type { i32, i32, i32, i32, i32, i32, i32 }

@CONFIG_CLOS = common dso_local global i32 0, align 4
@CLOS_PM_CLOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_pm_get_clos(i32 %0, i32 %1, %struct.isst_clos_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_clos_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_clos_config* %2, %struct.isst_clos_config** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CONFIG_CLOS, align 4
  %12 = load i32, i32* @CLOS_PM_CLOS, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @isst_send_mbox_command(i32 %10, i32 %11, i32 %12, i32 %13, i32 0, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_physical_package_id(i32 %20)
  %22 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %23 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @get_physical_die_id(i32 %24)
  %26 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %27 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 15
  %30 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %31 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %36 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %41 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %46 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = lshr i32 %47, 24
  %49 = and i32 %48, 255
  %50 = load %struct.isst_clos_config*, %struct.isst_clos_config** %7, align 8
  %51 = getelementptr inbounds %struct.isst_clos_config, %struct.isst_clos_config* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %19, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @get_physical_die_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
