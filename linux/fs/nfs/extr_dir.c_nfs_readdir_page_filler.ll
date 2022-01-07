; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_page_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_page_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.nfs_entry = type { i64 }
%struct.page = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.nfs_cache_array = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.nfs_entry*, %struct.page**, %struct.page*, i32)* @nfs_readdir_page_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_page_filler(%struct.TYPE_4__* %0, %struct.nfs_entry* %1, %struct.page** %2, %struct.page* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.nfs_entry*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xdr_stream, align 4
  %13 = alloca %struct.xdr_buf, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.nfs_cache_array*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %8, align 8
  store %struct.page** %2, %struct.page*** %9, align 8
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page* @alloc_page(i32 %18)
  store %struct.page* %19, %struct.page** %14, align 8
  %20 = load %struct.page*, %struct.page** %14, align 8
  %21 = icmp eq %struct.page* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %106

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %79

29:                                               ; preds = %25
  %30 = load %struct.page**, %struct.page*** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @xdr_init_decode_pages(%struct.xdr_stream* %12, %struct.xdr_buf* %13, %struct.page** %30, i32 %31)
  %33 = load %struct.page*, %struct.page** %14, align 8
  %34 = call i32 @page_address(%struct.page* %33)
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %12, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %72, %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %40 = call i32 @xdr_decode(%struct.TYPE_4__* %38, %struct.nfs_entry* %39, %struct.xdr_stream* %12)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %78

50:                                               ; preds = %37
  %51 = load i32, i32* %16, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @file_dentry(i32 %60)
  %62 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %63 = call i32 @nfs_prime_dcache(i32 %61, %struct.nfs_entry* %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i32 @nfs_readdir_add_to_array(%struct.nfs_entry* %65, %struct.page* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %78

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %74 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %37, label %78

78:                                               ; preds = %72, %70, %49
  br label %79

79:                                               ; preds = %78, %28
  %80 = load i32, i32* %16, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @EBADCOOKIE, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %89 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87, %79
  %93 = load %struct.page*, %struct.page** %10, align 8
  %94 = call %struct.nfs_cache_array* @kmap(%struct.page* %93)
  store %struct.nfs_cache_array* %94, %struct.nfs_cache_array** %15, align 8
  %95 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %15, align 8
  %96 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %15, align 8
  %99 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 0, i32* %17, align 4
  %100 = load %struct.page*, %struct.page** %10, align 8
  %101 = call i32 @kunmap(%struct.page* %100)
  br label %102

102:                                              ; preds = %92, %87, %82
  %103 = load %struct.page*, %struct.page** %14, align 8
  %104 = call i32 @put_page(%struct.page* %103)
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %22
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @xdr_init_decode_pages(%struct.xdr_stream*, %struct.xdr_buf*, %struct.page**, i32) #1

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @xdr_decode(%struct.TYPE_4__*, %struct.nfs_entry*, %struct.xdr_stream*) #1

declare dso_local i32 @nfs_prime_dcache(i32, %struct.nfs_entry*) #1

declare dso_local i32 @file_dentry(i32) #1

declare dso_local i32 @nfs_readdir_add_to_array(%struct.nfs_entry*, %struct.page*) #1

declare dso_local %struct.nfs_cache_array* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
