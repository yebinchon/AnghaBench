; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_insert_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_insert_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64 }
%struct.address_space = type { i32 }
%struct.vm_fault = type { i32, i32 }

@I_DIRTY_PAGES = common dso_local global i32 0, align 4
@DAX_ZERO_PAGE = common dso_local global i64 0, align 8
@PG_PMD_COLOUR = common dso_local global i64 0, align 8
@PG_PMD_NR = common dso_local global i32 0, align 4
@DAX_LOCKED = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xa_state*, %struct.address_space*, %struct.vm_fault*, i8*, i32, i64, i32)* @dax_insert_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dax_insert_entry(%struct.xa_state* %0, %struct.address_space* %1, %struct.vm_fault* %2, i8* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.xa_state*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.vm_fault*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store %struct.vm_fault* %2, %struct.vm_fault** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i64, i64* %13, align 8
  %20 = call i8* @dax_make_entry(i32 %18, i64 %19)
  store i8* %20, i8** %15, align 8
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load %struct.address_space*, %struct.address_space** %9, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I_DIRTY_PAGES, align 4
  %28 = call i32 @__mark_inode_dirty(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %7
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @dax_is_zero_entry(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @DAX_ZERO_PAGE, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %40 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %16, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @dax_is_pmd_entry(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.address_space*, %struct.address_space** %9, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* @PG_PMD_COLOUR, align 8
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  %51 = load i32, i32* @PG_PMD_NR, align 4
  %52 = call i32 @unmap_mapping_pages(%struct.address_space* %46, i64 %50, i32 %51, i32 0)
  br label %57

53:                                               ; preds = %38
  %54 = load %struct.address_space*, %struct.address_space** %9, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @unmap_mapping_pages(%struct.address_space* %54, i64 %55, i32 1, i32 0)
  br label %57

57:                                               ; preds = %53, %45
  br label %58

58:                                               ; preds = %57, %33, %29
  %59 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %60 = call i32 @xas_reset(%struct.xa_state* %59)
  %61 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %62 = call i32 @xas_lock_irq(%struct.xa_state* %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @dax_is_zero_entry(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @dax_is_empty_entry(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %66, %58
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.address_space*, %struct.address_space** %9, align 8
  %73 = call i32 @dax_disassociate_entry(i8* %71, %struct.address_space* %72, i32 0)
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.address_space*, %struct.address_space** %9, align 8
  %76 = load %struct.vm_fault*, %struct.vm_fault** %10, align 8
  %77 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vm_fault*, %struct.vm_fault** %10, align 8
  %80 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dax_associate_entry(i8* %74, %struct.address_space* %75, i32 %78, i32 %81)
  %83 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i8* @dax_lock_entry(%struct.xa_state* %83, i8* %84)
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @xa_to_value(i8* %87)
  %89 = load i32, i32* @DAX_LOCKED, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @xa_mk_value(i32 %90)
  %92 = icmp ne i8* %86, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON_ONCE(i32 %93)
  %95 = load i8*, i8** %15, align 8
  store i8* %95, i8** %11, align 8
  br label %99

96:                                               ; preds = %66
  %97 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %98 = call i32 @xas_load(%struct.xa_state* %97)
  br label %99

99:                                               ; preds = %96, %70
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %104 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %105 = call i32 @xas_set_mark(%struct.xa_state* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.xa_state*, %struct.xa_state** %8, align 8
  %108 = call i32 @xas_unlock_irq(%struct.xa_state* %107)
  %109 = load i8*, i8** %11, align 8
  ret i8* %109
}

declare dso_local i8* @dax_make_entry(i32, i64) #1

declare dso_local i32 @__mark_inode_dirty(i32, i32) #1

declare dso_local i64 @dax_is_zero_entry(i8*) #1

declare dso_local i64 @dax_is_pmd_entry(i8*) #1

declare dso_local i32 @unmap_mapping_pages(%struct.address_space*, i64, i32, i32) #1

declare dso_local i32 @xas_reset(%struct.xa_state*) #1

declare dso_local i32 @xas_lock_irq(%struct.xa_state*) #1

declare dso_local i64 @dax_is_empty_entry(i8*) #1

declare dso_local i32 @dax_disassociate_entry(i8*, %struct.address_space*, i32) #1

declare dso_local i32 @dax_associate_entry(i8*, %struct.address_space*, i32, i32) #1

declare dso_local i8* @dax_lock_entry(%struct.xa_state*, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @xa_mk_value(i32) #1

declare dso_local i32 @xa_to_value(i8*) #1

declare dso_local i32 @xas_load(%struct.xa_state*) #1

declare dso_local i32 @xas_set_mark(%struct.xa_state*, i32) #1

declare dso_local i32 @xas_unlock_irq(%struct.xa_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
