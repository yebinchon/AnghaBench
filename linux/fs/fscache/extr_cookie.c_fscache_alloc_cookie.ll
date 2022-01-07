; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c_fscache_alloc_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c_fscache_alloc_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i64, i64, i32, i32, i32, i32, i32, i32, i8*, %struct.fscache_cookie*, %struct.fscache_cookie_def*, i32, i32, i32, i32, i32 }
%struct.fscache_cookie_def = type { i32 }

@fscache_cookie_jar = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_NO_DATA_YET = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fscache_cookie* @fscache_alloc_cookie(%struct.fscache_cookie* %0, %struct.fscache_cookie_def* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.fscache_cookie*, align 8
  %10 = alloca %struct.fscache_cookie*, align 8
  %11 = alloca %struct.fscache_cookie_def*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %10, align 8
  store %struct.fscache_cookie_def* %1, %struct.fscache_cookie_def** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* @fscache_cookie_jar, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.fscache_cookie* @kmem_cache_zalloc(i32 %19, i32 %20)
  store %struct.fscache_cookie* %21, %struct.fscache_cookie** %18, align 8
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %23 = icmp ne %struct.fscache_cookie* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %9, align 8
  br label %117

25:                                               ; preds = %8
  %26 = load i64, i64* %13, align 8
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %28 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %31 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @fscache_set_key(%struct.fscache_cookie* %32, i8* %33, i64 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %114

38:                                               ; preds = %25
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %40 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ule i64 %41, 4
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %45 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %49 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i32 %46, i8* %47, i32 %51)
  br label %69

53:                                               ; preds = %38
  %54 = load i8*, i8** %14, align 8
  %55 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %56 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @kmemdup(i8* %54, i32 %58, i32 %59)
  %61 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %62 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %61, i32 0, i32 14
  store i32 %60, i32* %62, align 4
  %63 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %64 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %114

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %71 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %70, i32 0, i32 13
  %72 = call i32 @atomic_set(i32* %71, i32 1)
  %73 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %74 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %73, i32 0, i32 12
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  %76 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %77 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %76, i32 0, i32 11
  %78 = call i32 @atomic_set(i32* %77, i32 1)
  %79 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %11, align 8
  %80 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %81 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %80, i32 0, i32 10
  store %struct.fscache_cookie_def* %79, %struct.fscache_cookie_def** %81, align 8
  %82 = load %struct.fscache_cookie*, %struct.fscache_cookie** %10, align 8
  %83 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %84 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %83, i32 0, i32 9
  store %struct.fscache_cookie* %82, %struct.fscache_cookie** %84, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %87 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @FSCACHE_COOKIE_NO_DATA_YET, align 4
  %89 = shl i32 1, %88
  %90 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %91 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %11, align 8
  %93 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %96 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %98 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %97, i32 0, i32 6
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %101 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %100, i32 0, i32 5
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %104 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %103, i32 0, i32 4
  %105 = call i32 @INIT_HLIST_HEAD(i32* %104)
  %106 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %107 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %106, i32 0, i32 3
  %108 = load i32, i32* @GFP_NOFS, align 4
  %109 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = call i32 @INIT_RADIX_TREE(i32* %107, i32 %111)
  %113 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  store %struct.fscache_cookie* %113, %struct.fscache_cookie** %9, align 8
  br label %117

114:                                              ; preds = %67, %37
  %115 = load %struct.fscache_cookie*, %struct.fscache_cookie** %18, align 8
  %116 = call i32 @fscache_free_cookie(%struct.fscache_cookie* %115)
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %9, align 8
  br label %117

117:                                              ; preds = %114, %69, %24
  %118 = load %struct.fscache_cookie*, %struct.fscache_cookie** %9, align 8
  ret %struct.fscache_cookie* %118
}

declare dso_local %struct.fscache_cookie* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @fscache_set_key(%struct.fscache_cookie*, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @fscache_free_cookie(%struct.fscache_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
