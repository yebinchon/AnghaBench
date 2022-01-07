; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_mmap_handle_status.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_mmap_handle_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.page* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @sel_mmap_handle_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_mmap_handle_status(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = icmp ne %struct.page* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %2
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %27
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VM_WRITE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %34
  %45 = load i32, i32* @VM_MAYWRITE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call i32 @page_to_pfn(%struct.page* %55)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @remap_pfn_range(%struct.vm_area_struct* %51, i64 %54, i32 %56, i64 %57, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %44, %41, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
