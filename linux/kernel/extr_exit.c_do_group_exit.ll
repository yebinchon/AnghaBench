; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_do_group_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_do_group_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sighand_struct*, %struct.signal_struct* }
%struct.sighand_struct = type { i32 }
%struct.signal_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@SIGNAL_GROUP_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_group_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.signal_struct*, align 8
  %4 = alloca %struct.sighand_struct*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  store %struct.signal_struct* %7, %struct.signal_struct** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 128
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %12 = call i64 @signal_group_exit(%struct.signal_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %16 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = call i32 @thread_group_empty(%struct.TYPE_4__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.sighand_struct*, %struct.sighand_struct** %24, align 8
  store %struct.sighand_struct* %25, %struct.sighand_struct** %4, align 8
  %26 = load %struct.sighand_struct*, %struct.sighand_struct** %4, align 8
  %27 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %30 = call i64 @signal_group_exit(%struct.signal_struct* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %34 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %22
  %37 = load i32, i32* %2, align 4
  %38 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @SIGNAL_GROUP_EXIT, align 4
  %41 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %42 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %44 = call i32 @zap_other_threads(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %36, %32
  %46 = load %struct.sighand_struct*, %struct.sighand_struct** %4, align 8
  %47 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  br label %49

49:                                               ; preds = %45, %18
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @do_exit(i32 %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @signal_group_exit(%struct.signal_struct*) #1

declare dso_local i32 @thread_group_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @zap_other_threads(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
