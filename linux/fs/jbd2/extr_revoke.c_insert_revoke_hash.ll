; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_revoke.c_insert_revoke_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_revoke.c_insert_revoke_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.jbd2_revoke_record_s = type { i64, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@journal_oom_retry = common dso_local global i64 0, align 8
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@jbd2_revoke_record_cache = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32)* @insert_revoke_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_revoke_hash(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.jbd2_revoke_record_s*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_NOFS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* @journal_oom_retry, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @__GFP_NOFAIL, align 4
  %16 = load i32, i32* %10, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @jbd2_revoke_record_cache, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.jbd2_revoke_record_s* @kmem_cache_alloc(i32 %19, i32 %20)
  store %struct.jbd2_revoke_record_s* %21, %struct.jbd2_revoke_record_s** %9, align 8
  %22 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %9, align 8
  %23 = icmp ne %struct.jbd2_revoke_record_s* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %9, align 8
  %30 = getelementptr inbounds %struct.jbd2_revoke_record_s, %struct.jbd2_revoke_record_s* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %9, align 8
  %33 = getelementptr inbounds %struct.jbd2_revoke_record_s, %struct.jbd2_revoke_record_s* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @hash(%struct.TYPE_6__* %39, i64 %40)
  %42 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 %41
  store %struct.list_head* %42, %struct.list_head** %8, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %9, align 8
  %47 = getelementptr inbounds %struct.jbd2_revoke_record_s, %struct.jbd2_revoke_record_s* %46, i32 0, i32 1
  %48 = load %struct.list_head*, %struct.list_head** %8, align 8
  %49 = call i32 @list_add(i32* %47, %struct.list_head* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %27, %24
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.jbd2_revoke_record_s* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @hash(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
