; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.cache_reader* }
%struct.cache_reader = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cache_detail = type { i32, i32, i32 }

@EACCES = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@queue_lock = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.cache_detail*)* @cache_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_open(%struct.inode* %0, %struct.file* %1, %struct.cache_detail* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cache_detail*, align 8
  %8 = alloca %struct.cache_reader*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.cache_detail* %2, %struct.cache_detail** %7, align 8
  store %struct.cache_reader* null, %struct.cache_reader** %8, align 8
  %9 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %10 = icmp ne %struct.cache_detail* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %13 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @try_module_get(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %71

20:                                               ; preds = %11
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call i32 @nonseekable_open(%struct.inode* %21, %struct.file* %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FMODE_READ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.cache_reader* @kmalloc(i32 16, i32 %31)
  store %struct.cache_reader* %32, %struct.cache_reader** %8, align 8
  %33 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %34 = icmp ne %struct.cache_reader* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %37 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @module_put(i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %30
  %43 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %44 = getelementptr inbounds %struct.cache_reader, %struct.cache_reader* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %46 = getelementptr inbounds %struct.cache_reader, %struct.cache_reader* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = call i32 @spin_lock(i32* @queue_lock)
  %49 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %50 = getelementptr inbounds %struct.cache_reader, %struct.cache_reader* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %53 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %52, i32 0, i32 1
  %54 = call i32 @list_add(i32* %51, i32* %53)
  %55 = call i32 @spin_unlock(i32* @queue_lock)
  br label %56

56:                                               ; preds = %42, %20
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FMODE_WRITE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %65 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %64, i32 0, i32 0
  %66 = call i32 @atomic_inc(i32* %65)
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.cache_reader*, %struct.cache_reader** %8, align 8
  %69 = load %struct.file*, %struct.file** %6, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  store %struct.cache_reader* %68, %struct.cache_reader** %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %35, %17
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.cache_reader* @kmalloc(i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
