; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_smart_inject.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_nfit_test_cmd_smart_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nd_intel_smart_inject = type { i32, i64, i64, i64, i32, i64, i32, i64 }
%struct.nd_intel_smart_threshold = type { i32 }
%struct.nd_intel_smart = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ND_INTEL_SMART_INJECT_MTEMP = common dso_local global i32 0, align 4
@smart_def = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ND_INTEL_SMART_INJECT_SPARE = common dso_local global i32 0, align 4
@ND_INTEL_SMART_INJECT_FATAL = common dso_local global i32 0, align 4
@ND_INTEL_SMART_FATAL_HEALTH = common dso_local global i32 0, align 4
@ND_INTEL_SMART_NON_CRITICAL_HEALTH = common dso_local global i32 0, align 4
@ND_INTEL_SMART_INJECT_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_intel_smart_inject*, i32, %struct.nd_intel_smart_threshold*, %struct.nd_intel_smart*, %struct.device*, %struct.device*)* @nfit_test_cmd_smart_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfit_test_cmd_smart_inject(%struct.nd_intel_smart_inject* %0, i32 %1, %struct.nd_intel_smart_threshold* %2, %struct.nd_intel_smart* %3, %struct.device* %4, %struct.device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_intel_smart_inject*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nd_intel_smart_threshold*, align 8
  %11 = alloca %struct.nd_intel_smart*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.nd_intel_smart_inject* %0, %struct.nd_intel_smart_inject** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.nd_intel_smart_threshold* %2, %struct.nd_intel_smart_threshold** %10, align 8
  store %struct.nd_intel_smart* %3, %struct.nd_intel_smart** %11, align 8
  store %struct.device* %4, %struct.device** %12, align 8
  store %struct.device* %5, %struct.device** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ne i64 %15, 64
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %118

20:                                               ; preds = %6
  %21 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %22 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ND_INTEL_SMART_INJECT_MTEMP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %29 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %34 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %37 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smart_def, i32 0, i32 1), align 4
  %40 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %41 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %45 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ND_INTEL_SMART_INJECT_SPARE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %52 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %57 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %60 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %50
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smart_def, i32 0, i32 0), align 4
  %63 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %64 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %68 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ND_INTEL_SMART_INJECT_FATAL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %75 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @ND_INTEL_SMART_FATAL_HEALTH, align 4
  %80 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %81 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @ND_INTEL_SMART_NON_CRITICAL_HEALTH, align 4
  %84 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %85 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %66
  %88 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %89 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ND_INTEL_SMART_INJECT_SHUTDOWN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %87
  %95 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %96 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %101 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %103 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %109

106:                                              ; preds = %94
  %107 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %108 = getelementptr inbounds %struct.nd_intel_smart, %struct.nd_intel_smart* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %99
  br label %110

110:                                              ; preds = %109, %87
  %111 = load %struct.nd_intel_smart_inject*, %struct.nd_intel_smart_inject** %8, align 8
  %112 = getelementptr inbounds %struct.nd_intel_smart_inject, %struct.nd_intel_smart_inject* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.device*, %struct.device** %12, align 8
  %114 = load %struct.device*, %struct.device** %13, align 8
  %115 = load %struct.nd_intel_smart*, %struct.nd_intel_smart** %11, align 8
  %116 = load %struct.nd_intel_smart_threshold*, %struct.nd_intel_smart_threshold** %10, align 8
  %117 = call i32 @smart_notify(%struct.device* %113, %struct.device* %114, %struct.nd_intel_smart* %115, %struct.nd_intel_smart_threshold* %116)
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %110, %17
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @smart_notify(%struct.device*, %struct.device*, %struct.nd_intel_smart*, %struct.nd_intel_smart_threshold*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
