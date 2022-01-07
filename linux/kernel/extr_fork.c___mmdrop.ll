; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c___mmdrop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c___mmdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.mm_struct*, %struct.mm_struct* }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mmdrop(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %4 = icmp eq %struct.mm_struct* %3, @init_mm
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %11 = icmp eq %struct.mm_struct* %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %18 = icmp eq %struct.mm_struct* %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = call i32 @mm_free_pgd(%struct.mm_struct* %21)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %24 = call i32 @destroy_context(%struct.mm_struct* %23)
  %25 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %26 = call i32 @mmu_notifier_mm_destroy(%struct.mm_struct* %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %28 = call i32 @check_mm(%struct.mm_struct* %27)
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @put_user_ns(i32 %31)
  %33 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %34 = call i32 @free_mm(%struct.mm_struct* %33)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mm_free_pgd(%struct.mm_struct*) #1

declare dso_local i32 @destroy_context(%struct.mm_struct*) #1

declare dso_local i32 @mmu_notifier_mm_destroy(%struct.mm_struct*) #1

declare dso_local i32 @check_mm(%struct.mm_struct*) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @free_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
