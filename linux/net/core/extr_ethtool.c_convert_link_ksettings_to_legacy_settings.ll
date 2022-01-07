; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_convert_link_ksettings_to_legacy_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_convert_link_ksettings_to_legacy_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_cmd*, %struct.ethtool_link_ksettings*)* @convert_link_ksettings_to_legacy_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_link_ksettings_to_legacy_settings(%struct.ethtool_cmd* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.ethtool_cmd*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  store %struct.ethtool_cmd* %0, %struct.ethtool_cmd** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %7 = call i32 @memset(%struct.ethtool_cmd* %6, i32 0, i32 44)
  %8 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 10
  %10 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %9, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 9
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %18, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 8
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %27, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %36 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %35, i32 %39)
  %41 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %78 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %3, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.ethtool_cmd*, i32, i32) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
