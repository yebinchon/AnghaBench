; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_load_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_load_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.vm_fault = type { i64, i32 }

@DAX_ZERO_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xa_state*, %struct.address_space*, i8**, %struct.vm_fault*)* @dax_load_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_load_hole(%struct.xa_state* %0, %struct.address_space* %1, i8** %2, %struct.vm_fault* %3) #0 {
  %5 = alloca %struct.xa_state*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.vm_fault*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.vm_fault* %3, %struct.vm_fault** %8, align 8
  %13 = load %struct.address_space*, %struct.address_space** %6, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.vm_fault*, %struct.vm_fault** %8, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @my_zero_pfn(i64 %19)
  %21 = call i32 @pfn_to_pfn_t(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.xa_state*, %struct.xa_state** %5, align 8
  %23 = load %struct.address_space*, %struct.address_space** %6, align 8
  %24 = load %struct.vm_fault*, %struct.vm_fault** %8, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @DAX_ZERO_PAGE, align 4
  %29 = call i8* @dax_insert_entry(%struct.xa_state* %22, %struct.address_space* %23, %struct.vm_fault* %24, i8* %26, i32 %27, i32 %28, i32 0)
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  %31 = load %struct.vm_fault*, %struct.vm_fault** %8, align 8
  %32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @vmf_insert_mixed(i32 %33, i64 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = load %struct.vm_fault*, %struct.vm_fault** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @trace_dax_load_hole(%struct.inode* %37, %struct.vm_fault* %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  ret i32 %41
}

declare dso_local i32 @pfn_to_pfn_t(i32) #1

declare dso_local i32 @my_zero_pfn(i64) #1

declare dso_local i8* @dax_insert_entry(%struct.xa_state*, %struct.address_space*, %struct.vm_fault*, i8*, i32, i32, i32) #1

declare dso_local i32 @vmf_insert_mixed(i32, i64, i32) #1

declare dso_local i32 @trace_dax_load_hole(%struct.inode*, %struct.vm_fault*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
