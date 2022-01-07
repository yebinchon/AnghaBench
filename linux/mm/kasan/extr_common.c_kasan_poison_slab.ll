; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_kasan_poison_slab.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_kasan_poison_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KASAN_KMALLOC_REDZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kasan_poison_slab(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.page*, %struct.page** %2, align 8
  %7 = call i64 @compound_nr(%struct.page* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %10, i64 %11
  %13 = call i32 @page_kasan_tag_reset(%struct.page* %12)
  br label %14

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %3, align 8
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.page*, %struct.page** %2, align 8
  %19 = call i32 @page_address(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @page_size(%struct.page* %20)
  %22 = load i32, i32* @KASAN_KMALLOC_REDZONE, align 4
  %23 = call i32 @kasan_poison_shadow(i32 %19, i32 %21, i32 %22)
  ret void
}

declare dso_local i64 @compound_nr(%struct.page*) #1

declare dso_local i32 @page_kasan_tag_reset(%struct.page*) #1

declare dso_local i32 @kasan_poison_shadow(i32, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @page_size(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
