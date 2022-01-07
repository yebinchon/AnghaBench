; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c___put_anon_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c___put_anon_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma = type { i32, %struct.anon_vma* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__put_anon_vma(%struct.anon_vma* %0) #0 {
  %2 = alloca %struct.anon_vma*, align 8
  %3 = alloca %struct.anon_vma*, align 8
  store %struct.anon_vma* %0, %struct.anon_vma** %2, align 8
  %4 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %5 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %4, i32 0, i32 1
  %6 = load %struct.anon_vma*, %struct.anon_vma** %5, align 8
  store %struct.anon_vma* %6, %struct.anon_vma** %3, align 8
  %7 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %8 = call i32 @anon_vma_free(%struct.anon_vma* %7)
  %9 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %10 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %11 = icmp ne %struct.anon_vma* %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %14 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %13, i32 0, i32 0
  %15 = call i64 @atomic_dec_and_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %19 = call i32 @anon_vma_free(%struct.anon_vma* %18)
  br label %20

20:                                               ; preds = %17, %12, %1
  ret void
}

declare dso_local i32 @anon_vma_free(%struct.anon_vma*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
