; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm/util/extr_cs-etm.c_cs_etmv4_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm/util/extr_cs-etm.c_cs_etmv4_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32 }

@ETM_OPT_CYCACC = common dso_local global i32 0, align 4
@ETM4_CFG_BIT_CYCACC = common dso_local global i32 0, align 4
@ETM_OPT_CTXTID = common dso_local global i32 0, align 4
@ETM4_CFG_BIT_CTXTID = common dso_local global i32 0, align 4
@ETM_OPT_TS = common dso_local global i32 0, align 4
@ETM4_CFG_BIT_TS = common dso_local global i32 0, align 4
@ETM_OPT_RETSTK = common dso_local global i32 0, align 4
@ETM4_CFG_BIT_RETSTK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_record*)* @cs_etmv4_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etmv4_get_config(%struct.auxtrace_record* %0) #0 {
  %2 = alloca %struct.auxtrace_record*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.auxtrace_record* %0, %struct.auxtrace_record** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.auxtrace_record*, %struct.auxtrace_record** %2, align 8
  %6 = call i32 @cs_etm_get_config(%struct.auxtrace_record* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ETM_OPT_CYCACC, align 4
  %9 = call i32 @BIT(i32 %8)
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @ETM4_CFG_BIT_CYCACC, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ETM_OPT_CTXTID, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @ETM4_CFG_BIT_CTXTID, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ETM_OPT_TS, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @ETM4_CFG_BIT_TS, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ETM_OPT_RETSTK, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @ETM4_CFG_BIT_RETSTK, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @cs_etm_get_config(%struct.auxtrace_record*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
