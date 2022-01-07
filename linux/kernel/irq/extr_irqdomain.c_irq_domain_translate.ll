; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.irq_domain*, i32, i32*, i32, i32*, i32*)* }
%struct.irq_fwspec = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32*, i32*)* @irq_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (%struct.irq_domain*, i32, i32*, i32, i32*, i32*)*, i32 (%struct.irq_domain*, i32, i32*, i32, i32*, i32*)** %13, align 8
  %15 = icmp ne i32 (%struct.irq_domain*, i32, i32*, i32, i32*, i32*)* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %18 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.irq_domain*, i32, i32*, i32, i32*, i32*)*, i32 (%struct.irq_domain*, i32, i32*, i32, i32*, i32*)** %20, align 8
  %22 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %23 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %24 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @to_of_node(i32 %25)
  %27 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %28 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %31 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 %21(%struct.irq_domain* %22, i32 %26, i32* %29, i32 %32, i32* %33, i32* %34)
  store i32 %35, i32* %5, align 4
  br label %43

36:                                               ; preds = %4
  %37 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %38 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %36, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @to_of_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
