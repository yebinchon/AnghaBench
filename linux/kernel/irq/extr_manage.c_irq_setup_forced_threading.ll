; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_setup_forced_threading.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_setup_forced_threading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@force_irqthreads = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@IRQF_PERCPU = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@irq_default_primary_handler = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irq_forced_secondary_handler = common dso_local global i32 0, align 4
@IRQTF_FORCED_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irqaction*)* @irq_setup_forced_threading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_setup_forced_threading(%struct.irqaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irqaction*, align 8
  store %struct.irqaction* %0, %struct.irqaction** %3, align 8
  %4 = load i32, i32* @force_irqthreads, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

7:                                                ; preds = %1
  %8 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %9 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IRQF_NO_THREAD, align 4
  %12 = load i32, i32* @IRQF_PERCPU, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IRQF_ONESHOT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %100

19:                                               ; preds = %7
  %20 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %21 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @irq_default_primary_handler, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %100

26:                                               ; preds = %19
  %27 = load i32, i32* @IRQF_ONESHOT, align 4
  %28 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %29 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %33 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %26
  %37 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %38 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %36
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.TYPE_2__* @kzalloc(i32 48, i32 %42)
  %44 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %45 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %44, i32 0, i32 5
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  %46 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %47 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %100

53:                                               ; preds = %41
  %54 = load i32, i32* @irq_forced_secondary_handler, align 4
  %55 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %56 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %54, i32* %58, align 4
  %59 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %60 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %63 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %67 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %70 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %69, i32 0, i32 5
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i32 %68, i32* %72, align 8
  %73 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %74 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %77 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 4
  %80 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %81 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %84 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  br label %87

87:                                               ; preds = %53, %36, %26
  %88 = load i32, i32* @IRQTF_FORCED_THREAD, align 4
  %89 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %90 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %89, i32 0, i32 3
  %91 = call i32 @set_bit(i32 %88, i32* %90)
  %92 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %93 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %96 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @irq_default_primary_handler, align 8
  %98 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %99 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %87, %50, %25, %18, %6
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
