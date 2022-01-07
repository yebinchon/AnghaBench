; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_mmap_policy_fault.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_mmap_policy_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i64, %struct.page*, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.policy_load_memory* }
%struct.policy_load_memory = type { i64, i32 }

@FAULT_FLAG_MKWRITE = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @sel_mmap_policy_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_mmap_policy_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.policy_load_memory*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.policy_load_memory*, %struct.policy_load_memory** %12, align 8
  store %struct.policy_load_memory* %13, %struct.policy_load_memory** %4, align 8
  %14 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FAULT_FLAG_MKWRITE, align 4
  %18 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = shl i64 %27, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.policy_load_memory*, %struct.policy_load_memory** %4, align 8
  %32 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i64 @roundup(i32 %33, i32 %34)
  %36 = icmp uge i64 %30, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %24
  %40 = load %struct.policy_load_memory*, %struct.policy_load_memory** %4, align 8
  %41 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = call %struct.page* @vmalloc_to_page(i64 %44)
  store %struct.page* %45, %struct.page** %6, align 8
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = call i32 @get_page(%struct.page* %46)
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 2
  store %struct.page* %48, %struct.page** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %39, %37, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local %struct.page* @vmalloc_to_page(i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
