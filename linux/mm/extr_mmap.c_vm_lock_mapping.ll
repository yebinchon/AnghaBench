; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_lock_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vm_lock_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.address_space = type { i32, i32 }

@AS_MM_ALL_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.address_space*)* @vm_lock_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_lock_mapping(%struct.mm_struct* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %5 = load i32, i32* @AS_MM_ALL_LOCKS, align 4
  %6 = load %struct.address_space*, %struct.address_space** %4, align 8
  %7 = getelementptr inbounds %struct.address_space, %struct.address_space* %6, i32 0, i32 1
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @AS_MM_ALL_LOCKS, align 4
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 1
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %10
  %19 = load %struct.address_space*, %struct.address_space** %4, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  %23 = call i32 @down_write_nest_lock(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @down_write_nest_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
