; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_unlock_anon_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_unlock_anon_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anon_vma*)* @vm_unlock_anon_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_unlock_anon_vma(%struct.anon_vma* %0) #0 {
  %2 = alloca %struct.anon_vma*, align 8
  store %struct.anon_vma* %0, %struct.anon_vma** %2, align 8
  %3 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %4 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to i64*
  %10 = call i64 @test_bit(i32 0, i64* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %14 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i64*
  %20 = call i32 @__test_and_clear_bit(i32 0, i64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %12
  %25 = load %struct.anon_vma*, %struct.anon_vma** %2, align 8
  %26 = call i32 @anon_vma_unlock_write(%struct.anon_vma* %25)
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @anon_vma_unlock_write(%struct.anon_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
