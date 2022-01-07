; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_quarantine_reduce.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_quarantine_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_head = type { i64 }

@QLIST_INIT = common dso_local global %struct.qlist_head zeroinitializer, align 8
@quarantine_size = common dso_local global i64 0, align 8
@quarantine_max_size = common dso_local global i64 0, align 8
@remove_cache_srcu = common dso_local global i32 0, align 4
@quarantine_lock = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@QUARANTINE_FRACTION = common dso_local global i64 0, align 8
@QUARANTINE_PERCPU_SIZE = common dso_local global i64 0, align 8
@quarantine_batch_size = common dso_local global i64 0, align 8
@QUARANTINE_BATCHES = common dso_local global i32 0, align 4
@global_quarantine = common dso_local global i32* null, align 8
@quarantine_head = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quarantine_reduce() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlist_head, align 8
  %7 = bitcast %struct.qlist_head* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.qlist_head* @QLIST_INIT to i8*), i64 8, i1 false)
  %8 = load i64, i64* @quarantine_size, align 8
  %9 = call i64 @READ_ONCE(i64 %8)
  %10 = load i64, i64* @quarantine_max_size, align 8
  %11 = call i64 @READ_ONCE(i64 %10)
  %12 = icmp sle i64 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %83

17:                                               ; preds = %0
  %18 = call i32 @srcu_read_lock(i32* @remove_cache_srcu)
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* @quarantine_lock, i64 %19)
  %21 = call i64 (...) @totalram_pages()
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  %24 = load i64, i64* @QUARANTINE_FRACTION, align 8
  %25 = udiv i64 %23, %24
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* @QUARANTINE_PERCPU_SIZE, align 8
  %27 = call i64 (...) @num_online_cpus()
  %28 = mul i64 %26, %27
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %37

33:                                               ; preds = %17
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* %3, align 8
  %36 = sub i64 %34, %35
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi i64 [ 0, %32 ], [ %36, %33 ]
  store i64 %38, i64* %2, align 8
  %39 = load i64, i64* @quarantine_max_size, align 8
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @WRITE_ONCE(i64 %39, i64 %40)
  %42 = load i64, i64* @quarantine_batch_size, align 8
  %43 = load i64, i64* @QUARANTINE_PERCPU_SIZE, align 8
  %44 = load i64, i64* %1, align 8
  %45 = mul i64 2, %44
  %46 = load i32, i32* @QUARANTINE_BATCHES, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @max(i64 %43, i32 %49)
  %51 = call i32 @WRITE_ONCE(i64 %42, i64 %50)
  %52 = load i64, i64* @quarantine_size, align 8
  %53 = load i64, i64* @quarantine_max_size, align 8
  %54 = icmp sgt i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %37
  %59 = load i32*, i32** @global_quarantine, align 8
  %60 = load i64, i64* @quarantine_head, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @qlist_move_all(i32* %61, %struct.qlist_head* %6)
  %63 = load i64, i64* @quarantine_size, align 8
  %64 = load i64, i64* @quarantine_size, align 8
  %65 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %64, %66
  %68 = call i32 @WRITE_ONCE(i64 %63, i64 %67)
  %69 = load i64, i64* @quarantine_head, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* @quarantine_head, align 8
  %71 = load i64, i64* @quarantine_head, align 8
  %72 = load i32, i32* @QUARANTINE_BATCHES, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  store i64 0, i64* @quarantine_head, align 8
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %37
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @raw_spin_unlock_irqrestore(i32* @quarantine_lock, i64 %78)
  %80 = call i32 @qlist_free_all(%struct.qlist_head* %6, i32* null)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @srcu_read_unlock(i32* @remove_cache_srcu, i32 %81)
  br label %83

83:                                               ; preds = %77, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @READ_ONCE(i64) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @totalram_pages(...) #2

declare dso_local i64 @num_online_cpus(...) #2

declare dso_local i32 @WRITE_ONCE(i64, i64) #2

declare dso_local i64 @max(i64, i32) #2

declare dso_local i32 @qlist_move_all(i32*, %struct.qlist_head*) #2

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @qlist_free_all(%struct.qlist_head*, i32*) #2

declare dso_local i32 @srcu_read_unlock(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
