; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_insert_pfn_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_insert_pfn_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32, i32 }

@xas = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@PMD_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*, i32, i32)* @dax_insert_pfn_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_insert_pfn_mkwrite(%struct.vm_fault* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %8, align 8
  %18 = load i32, i32* @xas, align 4
  %19 = load %struct.address_space*, %struct.address_space** %8, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 1
  %21 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @XA_STATE_ORDER(i32 %18, i32* %20, i32 %23, i32 %24)
  %26 = call i32 @xas_lock_irq(i32* @xas)
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @get_unlocked_entry(i32* @xas, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @dax_is_conflict(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @dax_is_pte_entry(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38, %31, %3
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @put_unlocked_entry(i32* @xas, i8* %43)
  %45 = call i32 @xas_unlock_irq(i32* @xas)
  %46 = load %struct.address_space*, %struct.address_space** %8, align 8
  %47 = getelementptr inbounds %struct.address_space, %struct.address_space* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %50 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  %51 = call i32 @trace_dax_insert_pfn_mkwrite_no_entry(i32 %48, %struct.vm_fault* %49, i32 %50)
  %52 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %38, %35
  %54 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %55 = call i32 @xas_set_mark(i32* @xas, i32 %54)
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @dax_lock_entry(i32* @xas, i8* %56)
  %58 = call i32 @xas_unlock_irq(i32* @xas)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %63 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %66 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @vmf_insert_mixed_mkwrite(%struct.TYPE_4__* %64, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %72

70:                                               ; preds = %53
  %71 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @dax_unlock_entry(i32* @xas, i8* %73)
  %75 = load %struct.address_space*, %struct.address_space** %8, align 8
  %76 = getelementptr inbounds %struct.address_space, %struct.address_space* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @trace_dax_insert_pfn_mkwrite(i32 %77, %struct.vm_fault* %78, i32 %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %72, %42
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @XA_STATE_ORDER(i32, i32*, i32, i32) #1

declare dso_local i32 @xas_lock_irq(i32*) #1

declare dso_local i8* @get_unlocked_entry(i32*, i32) #1

declare dso_local i64 @dax_is_conflict(i8*) #1

declare dso_local i32 @dax_is_pte_entry(i8*) #1

declare dso_local i32 @put_unlocked_entry(i32*, i8*) #1

declare dso_local i32 @xas_unlock_irq(i32*) #1

declare dso_local i32 @trace_dax_insert_pfn_mkwrite_no_entry(i32, %struct.vm_fault*, i32) #1

declare dso_local i32 @xas_set_mark(i32*, i32) #1

declare dso_local i32 @dax_lock_entry(i32*, i8*) #1

declare dso_local i32 @vmf_insert_mixed_mkwrite(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dax_unlock_entry(i32*, i8*) #1

declare dso_local i32 @trace_dax_insert_pfn_mkwrite(i32, %struct.vm_fault*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
