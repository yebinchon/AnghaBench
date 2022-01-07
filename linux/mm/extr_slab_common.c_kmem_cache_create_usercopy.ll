; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_kmem_cache_create_usercopy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_kmem_cache_create_usercopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }

@slab_mutex = common dso_local global i32 0, align 4
@SLAB_FLAGS_PERMITTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CACHE_CREATE_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLAB_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"kmem_cache_create: Failed to create slab '%s'. Error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"kmem_cache_create(%s) failed with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kmem_cache* @kmem_cache_create_usercopy(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (i8*)* %6) #0 {
  %8 = alloca %struct.kmem_cache*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca void (i8*)*, align 8
  %16 = alloca %struct.kmem_cache*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store void (i8*)* %6, void (i8*)** %15, align 8
  store %struct.kmem_cache* null, %struct.kmem_cache** %16, align 8
  %19 = call i32 (...) @get_online_cpus()
  %20 = call i32 (...) @get_online_mems()
  %21 = call i32 (...) @memcg_get_cache_ids()
  %22 = call i32 @mutex_lock(i32* @slab_mutex)
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @kmem_cache_sanity_check(i8* %23, i32 %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %112

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @SLAB_FLAGS_PERMITTED, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %18, align 4
  br label %112

38:                                               ; preds = %29
  %39 = load i32, i32* @CACHE_CREATE_MASK, align 4
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i1 [ false, %38 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sub i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = icmp ult i32 %59, %60
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ true, %52 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %47
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load void (i8*)*, void (i8*)** %15, align 8
  %77 = call %struct.kmem_cache* @__kmem_cache_alias(i8* %72, i32 %73, i32 %74, i32 %75, void (i8*)* %76)
  store %struct.kmem_cache* %77, %struct.kmem_cache** %16, align 8
  br label %78

78:                                               ; preds = %71, %68
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %16, align 8
  %80 = icmp ne %struct.kmem_cache* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %112

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kstrdup_const(i8* %83, i32 %84)
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %18, align 4
  br label %112

91:                                               ; preds = %82
  %92 = load i8*, i8** %17, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @calculate_alignment(i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load void (i8*)*, void (i8*)** %15, align 8
  %102 = call %struct.kmem_cache* @create_cache(i8* %92, i32 %93, i32 %97, i32 %98, i32 %99, i32 %100, void (i8*)* %101, i32* null, i32* null)
  store %struct.kmem_cache* %102, %struct.kmem_cache** %16, align 8
  %103 = load %struct.kmem_cache*, %struct.kmem_cache** %16, align 8
  %104 = call i64 @IS_ERR(%struct.kmem_cache* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %91
  %107 = load %struct.kmem_cache*, %struct.kmem_cache** %16, align 8
  %108 = call i32 @PTR_ERR(%struct.kmem_cache* %107)
  store i32 %108, i32* %18, align 4
  %109 = load i8*, i8** %17, align 8
  %110 = call i32 @kfree_const(i8* %109)
  br label %111

111:                                              ; preds = %106, %91
  br label %112

112:                                              ; preds = %111, %88, %81, %35, %28
  %113 = call i32 @mutex_unlock(i32* @slab_mutex)
  %114 = call i32 (...) @memcg_put_cache_ids()
  %115 = call i32 (...) @put_online_mems()
  %116 = call i32 (...) @put_online_cpus()
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @SLAB_PANIC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %125, i32 %126)
  br label %133

128:                                              ; preds = %119
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %129, i32 %130)
  %132 = call i32 (...) @dump_stack()
  br label %133

133:                                              ; preds = %128, %124
  store %struct.kmem_cache* null, %struct.kmem_cache** %8, align 8
  br label %136

134:                                              ; preds = %112
  %135 = load %struct.kmem_cache*, %struct.kmem_cache** %16, align 8
  store %struct.kmem_cache* %135, %struct.kmem_cache** %8, align 8
  br label %136

136:                                              ; preds = %134, %133
  %137 = load %struct.kmem_cache*, %struct.kmem_cache** %8, align 8
  ret %struct.kmem_cache* %137
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @get_online_mems(...) #1

declare dso_local i32 @memcg_get_cache_ids(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmem_cache_sanity_check(i8*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.kmem_cache* @__kmem_cache_alias(i8*, i32, i32, i32, void (i8*)*) #1

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local %struct.kmem_cache* @create_cache(i8*, i32, i32, i32, i32, i32, void (i8*)*, i32*, i32*) #1

declare dso_local i32 @calculate_alignment(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.kmem_cache*) #1

declare dso_local i32 @PTR_ERR(%struct.kmem_cache*) #1

declare dso_local i32 @kfree_const(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcg_put_cache_ids(...) #1

declare dso_local i32 @put_online_mems(...) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @panic(i8*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
