; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlink_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_qlink_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_node = type { i32 }
%struct.kmem_cache = type { i32 }

@CONFIG_SLAB = common dso_local global i32 0, align 4
@_THIS_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlist_node*, %struct.kmem_cache*)* @qlink_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlink_free(%struct.qlist_node* %0, %struct.kmem_cache* %1) #0 {
  %3 = alloca %struct.qlist_node*, align 8
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.qlist_node* %0, %struct.qlist_node** %3, align 8
  store %struct.kmem_cache* %1, %struct.kmem_cache** %4, align 8
  %7 = load %struct.qlist_node*, %struct.qlist_node** %3, align 8
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %9 = call i8* @qlink_to_object(%struct.qlist_node* %7, %struct.kmem_cache* %8)
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* @CONFIG_SLAB, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @_THIS_IP_, align 4
  %20 = call i32 @___cache_free(%struct.kmem_cache* %17, i8* %18, i32 %19)
  %21 = load i32, i32* @CONFIG_SLAB, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  br label %27

27:                                               ; preds = %24, %16
  ret void
}

declare dso_local i8* @qlink_to_object(%struct.qlist_node*, %struct.kmem_cache*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @___cache_free(%struct.kmem_cache*, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
