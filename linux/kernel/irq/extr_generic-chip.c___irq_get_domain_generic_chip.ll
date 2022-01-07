; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c___irq_get_domain_generic_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c___irq_get_domain_generic_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32 }
%struct.irq_domain = type { %struct.irq_domain_chip_generic* }
%struct.irq_domain_chip_generic = type { i32, i32, %struct.irq_chip_generic** }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_chip_generic* (%struct.irq_domain*, i32)* @__irq_get_domain_generic_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_chip_generic* @__irq_get_domain_generic_chip(%struct.irq_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain_chip_generic*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %9, align 8
  store %struct.irq_domain_chip_generic* %10, %struct.irq_domain_chip_generic** %6, align 8
  %11 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %6, align 8
  %12 = icmp ne %struct.irq_domain_chip_generic* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.irq_chip_generic* @ERR_PTR(i32 %15)
  store %struct.irq_chip_generic* %16, %struct.irq_chip_generic** %3, align 8
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %6, align 8
  %20 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = udiv i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %6, align 8
  %25 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.irq_chip_generic* @ERR_PTR(i32 %30)
  store %struct.irq_chip_generic* %31, %struct.irq_chip_generic** %3, align 8
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %6, align 8
  %34 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %33, i32 0, i32 2
  %35 = load %struct.irq_chip_generic**, %struct.irq_chip_generic*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.irq_chip_generic*, %struct.irq_chip_generic** %35, i64 %37
  %39 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %38, align 8
  store %struct.irq_chip_generic* %39, %struct.irq_chip_generic** %3, align 8
  br label %40

40:                                               ; preds = %32, %28, %13
  %41 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  ret %struct.irq_chip_generic* %41
}

declare dso_local %struct.irq_chip_generic* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
