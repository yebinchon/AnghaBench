; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_convert_legacy_settings_to_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_convert_legacy_settings_to_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_link_ksettings*, %struct.ethtool_cmd*)* @convert_legacy_settings_to_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_legacy_settings_to_link_ksettings(%struct.ethtool_link_ksettings* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.ethtool_link_ksettings*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.ethtool_link_ksettings* %0, %struct.ethtool_link_ksettings** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %7 = call i32 @memset(%struct.ethtool_link_ksettings* %6, i32 0, i32 44)
  %8 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %22, i32 %25)
  %27 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %30, i32 %33)
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %38, i32 %41)
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %44 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %43)
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %52 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %70 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %76 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %82 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %88 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
