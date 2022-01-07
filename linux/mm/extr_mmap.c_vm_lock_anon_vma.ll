; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_lock_anon_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_lock_anon_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.anon_vma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.anon_vma*)* @vm_lock_anon_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_lock_anon_vma(%struct.mm_struct* %0, %struct.anon_vma* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.anon_vma*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.anon_vma* %1, %struct.anon_vma** %4, align 8
  %5 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  %6 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i64*
  %12 = call i32 @test_bit(i32 0, i64* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  %16 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = call i32 @down_write_nest_lock(i32* %18, i32* %20)
  %22 = load %struct.anon_vma*, %struct.anon_vma** %4, align 8
  %23 = getelementptr inbounds %struct.anon_vma, %struct.anon_vma* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i64*
  %29 = call i64 @__test_and_set_bit(i32 0, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %14
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @down_write_nest_lock(i32*, i32*) #1

declare dso_local i64 @__test_and_set_bit(i32, i64*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
