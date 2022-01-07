; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_add_to_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_add_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_entry = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.nfs_cache_array = type { i64, i64, i32, %struct.nfs_cache_array_entry* }
%struct.nfs_cache_array_entry = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_entry*, %struct.page*)* @nfs_readdir_add_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_add_to_array(%struct.nfs_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.nfs_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.nfs_cache_array*, align 8
  %6 = alloca %struct.nfs_cache_array_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_entry* %0, %struct.nfs_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call %struct.nfs_cache_array* @kmap(%struct.page* %8)
  store %struct.nfs_cache_array* %9, %struct.nfs_cache_array** %5, align 8
  %10 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %10, i32 0, i32 3
  %12 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %11, align 8
  %13 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %12, i64 %15
  store %struct.nfs_cache_array_entry* %16, %struct.nfs_cache_array_entry** %6, align 8
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %19, i64 1
  %21 = bitcast %struct.nfs_cache_array_entry* %20 to i8*
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i64 @page_address(%struct.page* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %34 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %6, align 8
  %42 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %6, align 8
  %47 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %48, i32 0, i32 0
  %50 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %54 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nfs_readdir_make_qstr(i32* %49, i32 %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %32
  br label %81

60:                                               ; preds = %32
  %61 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %62 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %5, align 8
  %65 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %5, align 8
  %67 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.nfs_entry*, %struct.nfs_entry** %3, align 8
  %71 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %60
  %75 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %5, align 8
  %76 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %5, align 8
  %79 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %60
  br label %81

81:                                               ; preds = %80, %59, %31
  %82 = load %struct.page*, %struct.page** %4, align 8
  %83 = call i32 @kunmap(%struct.page* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.nfs_cache_array* @kmap(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @nfs_readdir_make_qstr(i32*, i32, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
