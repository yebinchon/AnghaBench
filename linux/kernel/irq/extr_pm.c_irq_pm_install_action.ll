; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_irq_pm_install_action.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_irq_pm_install_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64, i64, i64, i64 }
%struct.irqaction = type { i32 }

@IRQF_FORCE_RESUME = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_COND_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_pm_install_action(%struct.irq_desc* %0, %struct.irqaction* %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irqaction*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %10 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IRQF_FORCE_RESUME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br label %33

33:                                               ; preds = %25, %20
  %34 = phi i1 [ false, %20 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %38 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %61

48:                                               ; preds = %33
  %49 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %50 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IRQF_COND_SUSPEND, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %57 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %63 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %68 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %75 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br label %78

78:                                               ; preds = %66, %61
  %79 = phi i1 [ false, %61 ], [ %77, %66 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON_ONCE(i32 %80)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
