; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_quarantine_remove_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_quarantine_remove_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_head = type { i32 }
%struct.kmem_cache = type { i32 }

@QLIST_INIT = common dso_local global %struct.qlist_head zeroinitializer, align 4
@per_cpu_remove_cache = common dso_local global i32 0, align 4
@quarantine_lock = common dso_local global i32 0, align 4
@QUARANTINE_BATCHES = common dso_local global i64 0, align 8
@global_quarantine = common dso_local global i32* null, align 8
@remove_cache_srcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quarantine_remove_cache(%struct.kmem_cache* %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qlist_head, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %2, align 8
  %6 = bitcast %struct.qlist_head* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.qlist_head* @QLIST_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @per_cpu_remove_cache, align 4
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %9 = call i32 @on_each_cpu(i32 %7, %struct.kmem_cache* %8, i32 1)
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* @quarantine_lock, i64 %10)
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @QUARANTINE_BATCHES, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32*, i32** @global_quarantine, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i64 @qlist_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %34

23:                                               ; preds = %16
  %24 = load i32*, i32** @global_quarantine, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %28 = call i32 @qlist_move_cache(i32* %26, %struct.qlist_head* %5, %struct.kmem_cache* %27)
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @raw_spin_unlock_irqrestore(i32* @quarantine_lock, i64 %29)
  %31 = call i32 (...) @cond_resched()
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @raw_spin_lock_irqsave(i32* @quarantine_lock, i64 %32)
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @raw_spin_unlock_irqrestore(i32* @quarantine_lock, i64 %38)
  %40 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  %41 = call i32 @qlist_free_all(%struct.qlist_head* %5, %struct.kmem_cache* %40)
  %42 = call i32 @synchronize_srcu(i32* @remove_cache_srcu)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @on_each_cpu(i32, %struct.kmem_cache*, i32) #2

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @qlist_empty(i32*) #2

declare dso_local i32 @qlist_move_cache(i32*, %struct.qlist_head*, %struct.kmem_cache*) #2

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @qlist_free_all(%struct.qlist_head*, %struct.kmem_cache*) #2

declare dso_local i32 @synchronize_srcu(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
