; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_file = type { i32, i32, i32*, i64, i32, %struct.inode*, %struct.net*, i32, i32*, i32, i32 }
%struct.inode = type { i32 }
%struct.net = type { i32 }

@nfsd_file_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFSD_FILE_MAY_MASK = common dso_local global i32 0, align 4
@NFSD_MAY_NOT_BREAK_LEASE = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_FILE_BREAK_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_READ = common dso_local global i32 0, align 4
@NFSD_FILE_BREAK_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd_file* (%struct.inode*, i32, i32, %struct.net*)* @nfsd_file_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd_file* @nfsd_file_alloc(%struct.inode* %0, i32 %1, i32 %2, %struct.net* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nfsd_file*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.net* %3, %struct.net** %8, align 8
  %10 = load i32, i32* @nfsd_file_slab, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfsd_file* @kmem_cache_alloc(i32 %10, i32 %11)
  store %struct.nfsd_file* %12, %struct.nfsd_file** %9, align 8
  %13 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %14 = icmp ne %struct.nfsd_file* %13, null
  br i1 %14, label %15, label %76

15:                                               ; preds = %4
  %16 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %17 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %16, i32 0, i32 10
  %18 = call i32 @INIT_HLIST_NODE(i32* %17)
  %19 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %20 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %19, i32 0, i32 9
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %23 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %22, i32 0, i32 8
  store i32* null, i32** %23, align 8
  %24 = call i32 (...) @get_current_cred()
  %25 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %26 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %29 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %28, i32 0, i32 6
  store %struct.net* %27, %struct.net** %29, align 8
  %30 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %31 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %34 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %33, i32 0, i32 5
  store %struct.inode* %32, %struct.inode** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %37 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %39 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %38, i32 0, i32 4
  %40 = call i32 @atomic_set(i32* %39, i32 1)
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NFSD_FILE_MAY_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %45 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NFSD_MAY_NOT_BREAK_LEASE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %15
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @NFSD_FILE_BREAK_WRITE, align 4
  %57 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %58 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %57, i32 0, i32 3
  %59 = call i32 @__set_bit(i32 %56, i64* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NFSD_MAY_READ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @NFSD_FILE_BREAK_READ, align 4
  %67 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %68 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %67, i32 0, i32 3
  %69 = call i32 @__set_bit(i32 %66, i64* %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %15
  %72 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %73 = getelementptr inbounds %struct.nfsd_file, %struct.nfsd_file* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  %75 = call i32 @trace_nfsd_file_alloc(%struct.nfsd_file* %74)
  br label %76

76:                                               ; preds = %71, %4
  %77 = load %struct.nfsd_file*, %struct.nfsd_file** %9, align 8
  ret %struct.nfsd_file* %77
}

declare dso_local %struct.nfsd_file* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_current_cred(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @trace_nfsd_file_alloc(%struct.nfsd_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
