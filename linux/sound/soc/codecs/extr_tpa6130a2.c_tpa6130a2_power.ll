; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tpa6130a2.c_tpa6130a2_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tpa6130a2.c_tpa6130a2_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpa6130a2_data = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to enable supply: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to sync registers: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to disable supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpa6130a2_data*, i32)* @tpa6130a2_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpa6130a2_power(%struct.tpa6130a2_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpa6130a2_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpa6130a2_data* %0, %struct.tpa6130a2_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %2
  %11 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %12 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %19 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %115

24:                                               ; preds = %10
  %25 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %26 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %31 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gpio_set_value(i64 %32, i32 1)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %36 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regcache_cache_only(i32 %37, i32 0)
  %39 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %40 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @regcache_sync(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %34
  %46 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %47 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %52 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @regcache_cache_only(i32 %53, i32 1)
  %55 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %56 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %61 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gpio_set_value(i64 %62, i32 0)
  br label %64

64:                                               ; preds = %59, %45
  %65 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %66 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regulator_disable(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %73 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %115

79:                                               ; preds = %34
  br label %113

80:                                               ; preds = %2
  %81 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %82 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @regcache_mark_dirty(i32 %83)
  %85 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %86 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @regcache_cache_only(i32 %87, i32 1)
  %89 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %90 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %80
  %94 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %95 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @gpio_set_value(i64 %96, i32 0)
  br label %98

98:                                               ; preds = %93, %80
  %99 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %100 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @regulator_disable(i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load %struct.tpa6130a2_data*, %struct.tpa6130a2_data** %4, align 8
  %107 = getelementptr inbounds %struct.tpa6130a2_data, %struct.tpa6130a2_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %115

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %79
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %105, %77, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @regcache_sync(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regcache_mark_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
