; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_writeback_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_writeback_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64 }
%struct.dax_device = type { i32 }
%struct.address_space = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PAGECACHE_TAG_TOWRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xa_state*, %struct.dax_device*, %struct.address_space*, i8*)* @dax_writeback_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_writeback_one(%struct.xa_state* %0, %struct.dax_device* %1, %struct.address_space* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xa_state*, align 8
  %7 = alloca %struct.dax_device*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %6, align 8
  store %struct.dax_device* %1, %struct.dax_device** %7, align 8
  store %struct.address_space* %2, %struct.address_space** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @xa_is_value(i8* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %136

25:                                               ; preds = %4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @dax_is_locked(i8* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  store i8* %31, i8** %14, align 8
  %32 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %33 = call i8* @get_unlocked_entry(%struct.xa_state* %32, i32 0)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @xa_is_value(i8* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %30
  br label %130

45:                                               ; preds = %36
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @dax_to_pfn(i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @dax_to_pfn(i8* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %130

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @dax_is_empty_entry(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @dax_is_zero_entry(i8* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ true, %52 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON_ONCE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %13, align 8
  br label %130

69:                                               ; preds = %60
  %70 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %71 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  %72 = call i32 @xas_get_mark(%struct.xa_state* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %130

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %25
  %77 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @dax_lock_entry(%struct.xa_state* %77, i8* %78)
  %80 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %81 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  %82 = call i32 @xas_clear_mark(%struct.xa_state* %80, i32 %81)
  %83 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %84 = call i32 @xas_unlock_irq(%struct.xa_state* %83)
  %85 = load i8*, i8** %9, align 8
  %86 = call i64 @dax_to_pfn(i8* %85)
  store i64 %86, i64* %10, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i64 @dax_entry_order(i8* %87)
  %89 = shl i64 1, %88
  store i64 %89, i64* %12, align 8
  %90 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %91 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = sub i64 %93, 1
  %95 = xor i64 %94, -1
  %96 = and i64 %92, %95
  store i64 %96, i64* %11, align 8
  %97 = load %struct.address_space*, %struct.address_space** %8, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @dax_entry_mkclean(%struct.address_space* %97, i64 %98, i64 %99)
  %101 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @pfn_to_page(i64 %102)
  %104 = call i32 @page_address(i32 %103)
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = mul i64 %105, %106
  %108 = call i32 @dax_flush(%struct.dax_device* %101, i32 %104, i64 %107)
  %109 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %110 = call i32 @xas_reset(%struct.xa_state* %109)
  %111 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %112 = call i32 @xas_lock_irq(%struct.xa_state* %111)
  %113 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @xas_store(%struct.xa_state* %113, i8* %114)
  %116 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %117 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %118 = call i32 @xas_clear_mark(%struct.xa_state* %116, i32 %117)
  %119 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @dax_wake_entry(%struct.xa_state* %119, i8* %120, i32 0)
  %122 = load %struct.address_space*, %struct.address_space** %8, align 8
  %123 = getelementptr inbounds %struct.address_space, %struct.address_space* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @trace_dax_writeback_one(i32 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %13, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %5, align 4
  br label %136

130:                                              ; preds = %74, %65, %51, %44
  %131 = load %struct.xa_state*, %struct.xa_state** %6, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @put_unlocked_entry(%struct.xa_state* %131, i8* %132)
  %134 = load i64, i64* %13, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %76, %22
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @xa_is_value(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dax_is_locked(i8*) #1

declare dso_local i8* @get_unlocked_entry(%struct.xa_state*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @dax_to_pfn(i8*) #1

declare dso_local i64 @dax_is_empty_entry(i8*) #1

declare dso_local i64 @dax_is_zero_entry(i8*) #1

declare dso_local i32 @xas_get_mark(%struct.xa_state*, i32) #1

declare dso_local i32 @dax_lock_entry(%struct.xa_state*, i8*) #1

declare dso_local i32 @xas_clear_mark(%struct.xa_state*, i32) #1

declare dso_local i32 @xas_unlock_irq(%struct.xa_state*) #1

declare dso_local i64 @dax_entry_order(i8*) #1

declare dso_local i32 @dax_entry_mkclean(%struct.address_space*, i64, i64) #1

declare dso_local i32 @dax_flush(%struct.dax_device*, i32, i64) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @xas_reset(%struct.xa_state*) #1

declare dso_local i32 @xas_lock_irq(%struct.xa_state*) #1

declare dso_local i32 @xas_store(%struct.xa_state*, i8*) #1

declare dso_local i32 @dax_wake_entry(%struct.xa_state*, i8*, i32) #1

declare dso_local i32 @trace_dax_writeback_one(i32, i64, i64) #1

declare dso_local i32 @put_unlocked_entry(%struct.xa_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
