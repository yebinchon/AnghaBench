; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_quarantine_put.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_quarantine.c_quarantine_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlist_head = type { i64 }
%struct.kasan_free_meta = type { i32 }
%struct.kmem_cache = type { i32 }

@QLIST_INIT = common dso_local global %struct.qlist_head zeroinitializer, align 8
@cpu_quarantine = common dso_local global i32 0, align 4
@QUARANTINE_PERCPU_SIZE = common dso_local global i64 0, align 8
@quarantine_lock = common dso_local global i32 0, align 4
@quarantine_size = common dso_local global i64 0, align 8
@global_quarantine = common dso_local global %struct.qlist_head* null, align 8
@quarantine_tail = common dso_local global i64 0, align 8
@quarantine_batch_size = common dso_local global i32 0, align 4
@QUARANTINE_BATCHES = common dso_local global i32 0, align 4
@quarantine_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quarantine_put(%struct.kasan_free_meta* %0, %struct.kmem_cache* %1) #0 {
  %3 = alloca %struct.kasan_free_meta*, align 8
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlist_head*, align 8
  %7 = alloca %struct.qlist_head, align 8
  %8 = alloca i32, align 4
  store %struct.kasan_free_meta* %0, %struct.kasan_free_meta** %3, align 8
  store %struct.kmem_cache* %1, %struct.kmem_cache** %4, align 8
  %9 = bitcast %struct.qlist_head* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.qlist_head* @QLIST_INIT to i8*), i64 8, i1 false)
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call %struct.qlist_head* @this_cpu_ptr(i32* @cpu_quarantine)
  store %struct.qlist_head* %12, %struct.qlist_head** %6, align 8
  %13 = load %struct.qlist_head*, %struct.qlist_head** %6, align 8
  %14 = load %struct.kasan_free_meta*, %struct.kasan_free_meta** %3, align 8
  %15 = getelementptr inbounds %struct.kasan_free_meta, %struct.kasan_free_meta* %14, i32 0, i32 0
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qlist_put(%struct.qlist_head* %13, i32* %15, i32 %18)
  %20 = load %struct.qlist_head*, %struct.qlist_head** %6, align 8
  %21 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QUARANTINE_PERCPU_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %2
  %29 = load %struct.qlist_head*, %struct.qlist_head** %6, align 8
  %30 = call i32 @qlist_move_all(%struct.qlist_head* %29, %struct.qlist_head* %7)
  %31 = call i32 @raw_spin_lock(i32* @quarantine_lock)
  %32 = load i64, i64* @quarantine_size, align 8
  %33 = load i64, i64* @quarantine_size, align 8
  %34 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %33, %35
  %37 = call i32 @WRITE_ONCE(i64 %32, i64 %36)
  %38 = load %struct.qlist_head*, %struct.qlist_head** @global_quarantine, align 8
  %39 = load i64, i64* @quarantine_tail, align 8
  %40 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %38, i64 %39
  %41 = call i32 @qlist_move_all(%struct.qlist_head* %7, %struct.qlist_head* %40)
  %42 = load %struct.qlist_head*, %struct.qlist_head** @global_quarantine, align 8
  %43 = load i64, i64* @quarantine_tail, align 8
  %44 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %42, i64 %43
  %45 = getelementptr inbounds %struct.qlist_head, %struct.qlist_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @quarantine_batch_size, align 4
  %48 = call i64 @READ_ONCE(i32 %47)
  %49 = icmp sge i64 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %28
  %51 = load i64, i64* @quarantine_tail, align 8
  %52 = add i64 %51, 1
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @QUARANTINE_BATCHES, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @quarantine_head, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* @quarantine_tail, align 8
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %28
  %67 = call i32 @raw_spin_unlock(i32* @quarantine_lock)
  br label %68

68:                                               ; preds = %66, %2
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @local_irq_restore(i64 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local %struct.qlist_head* @this_cpu_ptr(i32*) #2

declare dso_local i32 @qlist_put(%struct.qlist_head*, i32*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @qlist_move_all(%struct.qlist_head*, %struct.qlist_head*) #2

declare dso_local i32 @raw_spin_lock(i32*) #2

declare dso_local i32 @WRITE_ONCE(i64, i64) #2

declare dso_local i64 @READ_ONCE(i32) #2

declare dso_local i32 @raw_spin_unlock(i32*) #2

declare dso_local i32 @local_irq_restore(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
