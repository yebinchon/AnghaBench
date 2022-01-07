; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_free_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_free_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i64, i32 }

@IRQS_NMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @free_nmi(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.irq_desc* @irq_to_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %6, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %12 = icmp ne %struct.irq_desc* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IRQS_NMI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13, %2
  store i8* null, i8** %3, align 8
  br label %57

25:                                               ; preds = %13
  %26 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %27 = call i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc* %26)
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %57

31:                                               ; preds = %25
  %32 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %33 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @disable_nmi_nosync(i32 %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 2
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @raw_spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %48 = call i32 @irq_nmi_teardown(%struct.irq_desc* %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %51 = call i8* @__cleanup_nmi(i32 %49, %struct.irq_desc* %50)
  store i8* %51, i8** %8, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @raw_spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i8*, i8** %8, align 8
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %42, %30, %24
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_settings_is_per_cpu_devid(%struct.irq_desc*) #1

declare dso_local i32 @disable_nmi_nosync(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irq_nmi_teardown(%struct.irq_desc*) #1

declare dso_local i8* @__cleanup_nmi(i32, %struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
