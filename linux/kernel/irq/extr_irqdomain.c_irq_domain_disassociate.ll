; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_disassociate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.irq_domain*, i32)* }
%struct.irq_data = type { i64, %struct.irq_domain* }

@.str = private unnamed_addr constant [43 x i8] c"virq%i doesn't exist; cannot disassociate\0A\00", align 1
@IRQ_NOREQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_domain_disassociate(%struct.irq_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.irq_data* @irq_get_irq_data(i32 %7)
  store %struct.irq_data* %8, %struct.irq_data** %5, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %10 = icmp ne %struct.irq_data* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 1
  %14 = load %struct.irq_domain*, %struct.irq_domain** %13, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %16 = icmp ne %struct.irq_domain* %14, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @WARN(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %63

24:                                               ; preds = %17
  %25 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IRQ_NOREQUEST, align 4
  %30 = call i32 @irq_set_status_flags(i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @irq_set_chip_and_handler(i32 %31, i32* null, i32* null)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @synchronize_irq(i32 %33)
  %35 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %36 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.irq_domain*, i32)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %24
  %42 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %43 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, i32)** %45, align 8
  %47 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %46(%struct.irq_domain* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %24
  %51 = call i32 (...) @smp_mb()
  %52 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %53 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %52, i32 0, i32 1
  store %struct.irq_domain* null, %struct.irq_domain** %53, align 8
  %54 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %55 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %57 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @irq_domain_clear_mapping(%struct.irq_domain* %60, i64 %61)
  br label %63

63:                                               ; preds = %50, %23
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @irq_domain_clear_mapping(%struct.irq_domain*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
