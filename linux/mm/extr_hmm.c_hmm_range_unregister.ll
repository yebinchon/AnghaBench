; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_range_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_range = type { i32, %struct.hmm*, i32 }
%struct.hmm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@POISON_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hmm_range_unregister(%struct.hmm_range* %0) #0 {
  %2 = alloca %struct.hmm_range*, align 8
  %3 = alloca %struct.hmm*, align 8
  %4 = alloca i64, align 8
  store %struct.hmm_range* %0, %struct.hmm_range** %2, align 8
  %5 = load %struct.hmm_range*, %struct.hmm_range** %2, align 8
  %6 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %5, i32 0, i32 1
  %7 = load %struct.hmm*, %struct.hmm** %6, align 8
  store %struct.hmm* %7, %struct.hmm** %3, align 8
  %8 = load %struct.hmm*, %struct.hmm** %3, align 8
  %9 = getelementptr inbounds %struct.hmm, %struct.hmm* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.hmm_range*, %struct.hmm_range** %2, align 8
  %13 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %12, i32 0, i32 2
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.hmm*, %struct.hmm** %3, align 8
  %16 = getelementptr inbounds %struct.hmm, %struct.hmm* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.hmm*, %struct.hmm** %3, align 8
  %20 = getelementptr inbounds %struct.hmm, %struct.hmm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mmput(i32 %22)
  %24 = load %struct.hmm_range*, %struct.hmm_range** %2, align 8
  %25 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.hmm_range*, %struct.hmm_range** %2, align 8
  %27 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %26, i32 0, i32 1
  %28 = load i32, i32* @POISON_INUSE, align 4
  %29 = call i32 @memset(%struct.hmm** %27, i32 %28, i32 8)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmput(i32) #1

declare dso_local i32 @memset(%struct.hmm**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
