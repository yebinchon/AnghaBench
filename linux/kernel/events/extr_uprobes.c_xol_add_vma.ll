; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_xol_add_vma.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_xol_add_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xol_area = type { i32, i32 }
%struct.vm_area_struct = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.xol_area*)* @xol_add_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xol_add_vma(%struct.mm_struct* %0, %struct.xol_area* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.xol_area*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.xol_area* %1, %struct.xol_area** %5, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = call i64 @down_write_killable(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINTR, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %82

15:                                               ; preds = %2
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EALREADY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %77

24:                                               ; preds = %15
  %25 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %26 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @TASK_SIZE, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = call i32 @get_unmapped_area(i32* null, i64 %32, i64 %33, i32 0, i32 0)
  %35 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %36 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %38 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %46 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %77

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %51 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %52 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = load i32, i32* @VM_EXEC, align 4
  %56 = load i32, i32* @VM_MAYEXEC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VM_DONTCOPY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @VM_IO, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %63 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %62, i32 0, i32 1
  %64 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %50, i32 %53, i64 %54, i32 %61, i32* %63)
  store %struct.vm_area_struct* %64, %struct.vm_area_struct** %6, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %66 = call i64 @IS_ERR(%struct.vm_area_struct* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %70 = call i32 @PTR_ERR(%struct.vm_area_struct* %69)
  store i32 %70, i32* %7, align 4
  br label %77

71:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  %72 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %73 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.xol_area*, %struct.xol_area** %5, align 8
  %76 = call i32 @smp_store_release(i64* %74, %struct.xol_area* %75)
  br label %77

77:                                               ; preds = %71, %68, %44, %21
  %78 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %79 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %78, i32 0, i32 0
  %80 = call i32 @up_write(i32* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @get_unmapped_area(i32*, i64, i64, i32, i32) #1

declare dso_local %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct*, i32, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i32 @smp_store_release(i64*, %struct.xol_area*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
