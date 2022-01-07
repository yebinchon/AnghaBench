; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_softirq.c_tasklet_action_common.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_softirq.c_tasklet_action_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softirq_action = type { i32 }
%struct.tasklet_head = type { %struct.tasklet_struct**, %struct.tasklet_struct* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i32, i32 (i32)*, i32, i32 }

@TASKLET_STATE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.softirq_action*, %struct.tasklet_head*, i32)* @tasklet_action_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tasklet_action_common(%struct.softirq_action* %0, %struct.tasklet_head* %1, i32 %2) #0 {
  %4 = alloca %struct.softirq_action*, align 8
  %5 = alloca %struct.tasklet_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tasklet_struct*, align 8
  %8 = alloca %struct.tasklet_struct*, align 8
  store %struct.softirq_action* %0, %struct.softirq_action** %4, align 8
  store %struct.tasklet_head* %1, %struct.tasklet_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @local_irq_disable()
  %10 = load %struct.tasklet_head*, %struct.tasklet_head** %5, align 8
  %11 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %10, i32 0, i32 1
  %12 = load %struct.tasklet_struct*, %struct.tasklet_struct** %11, align 8
  store %struct.tasklet_struct* %12, %struct.tasklet_struct** %7, align 8
  %13 = load %struct.tasklet_head*, %struct.tasklet_head** %5, align 8
  %14 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %13, i32 0, i32 1
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %14, align 8
  %15 = load %struct.tasklet_head*, %struct.tasklet_head** %5, align 8
  %16 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %15, i32 0, i32 1
  %17 = load %struct.tasklet_head*, %struct.tasklet_head** %5, align 8
  %18 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %17, i32 0, i32 0
  store %struct.tasklet_struct** %16, %struct.tasklet_struct*** %18, align 8
  %19 = call i32 (...) @local_irq_enable()
  br label %20

20:                                               ; preds = %57, %44, %3
  %21 = load %struct.tasklet_struct*, %struct.tasklet_struct** %7, align 8
  %22 = icmp ne %struct.tasklet_struct* %21, null
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  %24 = load %struct.tasklet_struct*, %struct.tasklet_struct** %7, align 8
  store %struct.tasklet_struct* %24, %struct.tasklet_struct** %8, align 8
  %25 = load %struct.tasklet_struct*, %struct.tasklet_struct** %7, align 8
  %26 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %25, i32 0, i32 0
  %27 = load %struct.tasklet_struct*, %struct.tasklet_struct** %26, align 8
  store %struct.tasklet_struct* %27, %struct.tasklet_struct** %7, align 8
  %28 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %29 = call i64 @tasklet_trylock(%struct.tasklet_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %23
  %32 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %33 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %32, i32 0, i32 4
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @TASKLET_STATE_SCHED, align 4
  %38 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %39 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %38, i32 0, i32 3
  %40 = call i32 @test_and_clear_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %46 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %45, i32 0, i32 2
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %49 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %47(i32 %50)
  %52 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %53 = call i32 @tasklet_unlock(%struct.tasklet_struct* %52)
  br label %20

54:                                               ; preds = %31
  %55 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %56 = call i32 @tasklet_unlock(%struct.tasklet_struct* %55)
  br label %57

57:                                               ; preds = %54, %23
  %58 = call i32 (...) @local_irq_disable()
  %59 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %60 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %59, i32 0, i32 0
  store %struct.tasklet_struct* null, %struct.tasklet_struct** %60, align 8
  %61 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %62 = load %struct.tasklet_head*, %struct.tasklet_head** %5, align 8
  %63 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %62, i32 0, i32 0
  %64 = load %struct.tasklet_struct**, %struct.tasklet_struct*** %63, align 8
  store %struct.tasklet_struct* %61, %struct.tasklet_struct** %64, align 8
  %65 = load %struct.tasklet_struct*, %struct.tasklet_struct** %8, align 8
  %66 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %65, i32 0, i32 0
  %67 = load %struct.tasklet_head*, %struct.tasklet_head** %5, align 8
  %68 = getelementptr inbounds %struct.tasklet_head, %struct.tasklet_head* %67, i32 0, i32 0
  store %struct.tasklet_struct** %66, %struct.tasklet_struct*** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @__raise_softirq_irqoff(i32 %69)
  %71 = call i32 (...) @local_irq_enable()
  br label %20

72:                                               ; preds = %20
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @tasklet_trylock(%struct.tasklet_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @tasklet_unlock(%struct.tasklet_struct*) #1

declare dso_local i32 @__raise_softirq_irqoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
