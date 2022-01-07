; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_mirror_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_mirror_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmm_mirror = type { i32, %struct.hmm* }
%struct.hmm = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hmm_mirror_unregister(%struct.hmm_mirror* %0) #0 {
  %2 = alloca %struct.hmm_mirror*, align 8
  %3 = alloca %struct.hmm*, align 8
  store %struct.hmm_mirror* %0, %struct.hmm_mirror** %2, align 8
  %4 = load %struct.hmm_mirror*, %struct.hmm_mirror** %2, align 8
  %5 = getelementptr inbounds %struct.hmm_mirror, %struct.hmm_mirror* %4, i32 0, i32 1
  %6 = load %struct.hmm*, %struct.hmm** %5, align 8
  store %struct.hmm* %6, %struct.hmm** %3, align 8
  %7 = load %struct.hmm*, %struct.hmm** %3, align 8
  %8 = getelementptr inbounds %struct.hmm, %struct.hmm* %7, i32 0, i32 1
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.hmm_mirror*, %struct.hmm_mirror** %2, align 8
  %11 = getelementptr inbounds %struct.hmm_mirror, %struct.hmm_mirror* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.hmm*, %struct.hmm** %3, align 8
  %14 = getelementptr inbounds %struct.hmm, %struct.hmm* %13, i32 0, i32 1
  %15 = call i32 @up_write(i32* %14)
  %16 = load %struct.hmm*, %struct.hmm** %3, align 8
  %17 = getelementptr inbounds %struct.hmm, %struct.hmm* %16, i32 0, i32 0
  %18 = call i32 @mmu_notifier_put(i32* %17)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mmu_notifier_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
