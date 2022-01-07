; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file_table.c___alloc_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file_table.c___alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32 }

@filp_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i32, %struct.cred*)* @__alloc_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @__alloc_file(i32 %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cred* %1, %struct.cred** %5, align 8
  %8 = load i32, i32* @filp_cachep, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.file* @kmem_cache_zalloc(i32 %8, i32 %9)
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = icmp ne %struct.file* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.file* @ERR_PTR(i32 %19)
  store %struct.file* %20, %struct.file** %3, align 8
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.cred*, %struct.cred** %5, align 8
  %23 = call i32 @get_cred(%struct.cred* %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = call i32 @security_file_alloc(%struct.file* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @file_free_rcu(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.file* @ERR_PTR(i32 %36)
  store %struct.file* %37, %struct.file** %3, align 8
  br label %62

38:                                               ; preds = %21
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 5
  %41 = call i32 @atomic_long_set(i32* %40, i32 1)
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @rwlock_init(i32* %44)
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.file*, %struct.file** %6, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 2
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.file*, %struct.file** %6, align 8
  %53 = call i32 @eventpoll_init_file(%struct.file* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @OPEN_FMODE(i32 %57)
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %61, %struct.file** %3, align 8
  br label %62

62:                                               ; preds = %38, %31, %17
  %63 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %63
}

declare dso_local %struct.file* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @security_file_alloc(%struct.file*) #1

declare dso_local i32 @file_free_rcu(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @eventpoll_init_file(%struct.file*) #1

declare dso_local i32 @OPEN_FMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
