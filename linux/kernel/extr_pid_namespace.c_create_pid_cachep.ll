; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_create_pid_cachep.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_pid_namespace.c_create_pid_cachep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@pid_cache = common dso_local global %struct.kmem_cache** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"pid_%u\00", align 1
@pid_caches_mutex = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (i32)* @create_pid_cachep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @create_pid_cachep(i32 %0) #0 {
  %2 = alloca %struct.kmem_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache**, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca [15 x i8], align 1
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.kmem_cache**, %struct.kmem_cache*** @pid_cache, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.kmem_cache*, %struct.kmem_cache** %8, i64 %11
  store %struct.kmem_cache** %12, %struct.kmem_cache*** %4, align 8
  %13 = load %struct.kmem_cache**, %struct.kmem_cache*** %4, align 8
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %13, align 8
  %15 = call %struct.kmem_cache* @READ_ONCE(%struct.kmem_cache* %14)
  store %struct.kmem_cache* %15, %struct.kmem_cache** %5, align 8
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %17 = icmp ne %struct.kmem_cache* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  store %struct.kmem_cache* %19, %struct.kmem_cache** %2, align 8
  br label %45

20:                                               ; preds = %1
  %21 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  %24 = call i32 @snprintf(i8* %21, i32 15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 4, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = call i32 @mutex_lock(i32* @pid_caches_mutex)
  %31 = load %struct.kmem_cache**, %struct.kmem_cache*** %4, align 8
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %31, align 8
  %33 = icmp ne %struct.kmem_cache* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds [15 x i8], [15 x i8]* %6, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %38 = call %struct.kmem_cache* @kmem_cache_create(i8* %35, i32 %36, i32 0, i32 %37, i32 0)
  %39 = load %struct.kmem_cache**, %struct.kmem_cache*** %4, align 8
  store %struct.kmem_cache* %38, %struct.kmem_cache** %39, align 8
  br label %40

40:                                               ; preds = %34, %20
  %41 = call i32 @mutex_unlock(i32* @pid_caches_mutex)
  %42 = load %struct.kmem_cache**, %struct.kmem_cache*** %4, align 8
  %43 = load %struct.kmem_cache*, %struct.kmem_cache** %42, align 8
  %44 = call %struct.kmem_cache* @READ_ONCE(%struct.kmem_cache* %43)
  store %struct.kmem_cache* %44, %struct.kmem_cache** %2, align 8
  br label %45

45:                                               ; preds = %40, %18
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %2, align 8
  ret %struct.kmem_cache* %46
}

declare dso_local %struct.kmem_cache* @READ_ONCE(%struct.kmem_cache*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kmem_cache* @kmem_cache_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
