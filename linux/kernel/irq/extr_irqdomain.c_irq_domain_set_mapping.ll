; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_set_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irqdomain.c_irq_domain_set_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i64, i32, i32, i32* }
%struct.irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i64, %struct.irq_data*)* @irq_domain_set_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_domain_set_mapping(%struct.irq_domain* %0, i64 %1, %struct.irq_data* %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irq_data* %2, %struct.irq_data** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %23 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %26 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %25, i32 0, i32 2
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %29 = call i32 @radix_tree_insert(i32* %26, i64 %27, %struct.irq_data* %28)
  %30 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %31 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  br label %33

33:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.irq_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
