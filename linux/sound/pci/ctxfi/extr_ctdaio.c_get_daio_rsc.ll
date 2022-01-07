; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_get_daio_rsc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctdaio.c_get_daio_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daio_mgr = type { i32, i32, i32 (%struct.daio_mgr*)*, i32 (%struct.daio_mgr*, %struct.daio*)*, %struct.TYPE_2__* }
%struct.daio = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.daio_desc = type { i64 }
%struct.dao = type { %struct.daio }
%struct.dai = type { %struct.daio }

@.str = private unnamed_addr constant [35 x i8] c"Can't meet DAIO resource request!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DAIO_OUT_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daio_mgr*, %struct.daio_desc*, %struct.daio**)* @get_daio_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_daio_rsc(%struct.daio_mgr* %0, %struct.daio_desc* %1, %struct.daio** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.daio_mgr*, align 8
  %6 = alloca %struct.daio_desc*, align 8
  %7 = alloca %struct.daio**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dao*, align 8
  %11 = alloca %struct.dai*, align 8
  store %struct.daio_mgr* %0, %struct.daio_mgr** %5, align 8
  store %struct.daio_desc* %1, %struct.daio_desc** %6, align 8
  store %struct.daio** %2, %struct.daio*** %7, align 8
  %12 = load %struct.daio**, %struct.daio*** %7, align 8
  store %struct.daio* null, %struct.daio** %12, align 8
  %13 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %14 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %18 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %17, i32 0, i32 1
  %19 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %20 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @daio_mgr_get_rsc(i32* %18, i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %24 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %31 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %117

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %41 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DAIO_OUT_MAX, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.dao* @kzalloc(i32 4, i32 %46)
  store %struct.dao* %47, %struct.dao** %10, align 8
  %48 = load %struct.dao*, %struct.dao** %10, align 8
  %49 = icmp ne %struct.dao* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %101

51:                                               ; preds = %45
  %52 = load %struct.dao*, %struct.dao** %10, align 8
  %53 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %54 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %55 = call i32 @dao_rsc_init(%struct.dao* %52, %struct.daio_desc* %53, %struct.daio_mgr* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.dao*, %struct.dao** %10, align 8
  %60 = call i32 @kfree(%struct.dao* %59)
  br label %101

61:                                               ; preds = %51
  %62 = load %struct.dao*, %struct.dao** %10, align 8
  %63 = getelementptr inbounds %struct.dao, %struct.dao* %62, i32 0, i32 0
  %64 = load %struct.daio**, %struct.daio*** %7, align 8
  store %struct.daio* %63, %struct.daio** %64, align 8
  br label %88

65:                                               ; preds = %37
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.dao* @kzalloc(i32 4, i32 %66)
  %68 = bitcast %struct.dao* %67 to %struct.dai*
  store %struct.dai* %68, %struct.dai** %11, align 8
  %69 = load %struct.dai*, %struct.dai** %11, align 8
  %70 = icmp ne %struct.dai* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %101

72:                                               ; preds = %65
  %73 = load %struct.dai*, %struct.dai** %11, align 8
  %74 = bitcast %struct.dai* %73 to %struct.dao*
  %75 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %76 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %77 = call i32 @dai_rsc_init(%struct.dao* %74, %struct.daio_desc* %75, %struct.daio_mgr* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.dai*, %struct.dai** %11, align 8
  %82 = bitcast %struct.dai* %81 to %struct.dao*
  %83 = call i32 @kfree(%struct.dao* %82)
  br label %101

84:                                               ; preds = %72
  %85 = load %struct.dai*, %struct.dai** %11, align 8
  %86 = getelementptr inbounds %struct.dai, %struct.dai* %85, i32 0, i32 0
  %87 = load %struct.daio**, %struct.daio*** %7, align 8
  store %struct.daio* %86, %struct.daio** %87, align 8
  br label %88

88:                                               ; preds = %84, %61
  %89 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %90 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %89, i32 0, i32 3
  %91 = load i32 (%struct.daio_mgr*, %struct.daio*)*, i32 (%struct.daio_mgr*, %struct.daio*)** %90, align 8
  %92 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %93 = load %struct.daio**, %struct.daio*** %7, align 8
  %94 = load %struct.daio*, %struct.daio** %93, align 8
  %95 = call i32 %91(%struct.daio_mgr* %92, %struct.daio* %94)
  %96 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %97 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %96, i32 0, i32 2
  %98 = load i32 (%struct.daio_mgr*)*, i32 (%struct.daio_mgr*)** %97, align 8
  %99 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %100 = call i32 %98(%struct.daio_mgr* %99)
  store i32 0, i32* %4, align 4
  br label %117

101:                                              ; preds = %80, %71, %58, %50
  %102 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %103 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %102, i32 0, i32 0
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %107 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %106, i32 0, i32 1
  %108 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %109 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @daio_mgr_put_rsc(i32* %107, i64 %110)
  %112 = load %struct.daio_mgr*, %struct.daio_mgr** %5, align 8
  %113 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %112, i32 0, i32 0
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %101, %88, %29
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @daio_mgr_get_rsc(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dao* @kzalloc(i32, i32) #1

declare dso_local i32 @dao_rsc_init(%struct.dao*, %struct.daio_desc*, %struct.daio_mgr*) #1

declare dso_local i32 @kfree(%struct.dao*) #1

declare dso_local i32 @dai_rsc_init(%struct.dao*, %struct.daio_desc*, %struct.daio_mgr*) #1

declare dso_local i32 @daio_mgr_put_rsc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
