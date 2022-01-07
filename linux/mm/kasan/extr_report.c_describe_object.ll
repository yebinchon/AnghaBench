; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_report.c_describe_object.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_report.c_describe_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kasan_alloc_meta = type { %struct.kasan_track }
%struct.kasan_track = type { i32 }

@SLAB_KASAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Freed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, i8*, i8*, i32)* @describe_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @describe_object(%struct.kmem_cache* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kasan_alloc_meta*, align 8
  %10 = alloca %struct.kasan_track*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.kasan_alloc_meta* @get_alloc_info(%struct.kmem_cache* %11, i8* %12)
  store %struct.kasan_alloc_meta* %13, %struct.kasan_alloc_meta** %9, align 8
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %15 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SLAB_KASAN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load %struct.kasan_alloc_meta*, %struct.kasan_alloc_meta** %9, align 8
  %22 = getelementptr inbounds %struct.kasan_alloc_meta, %struct.kasan_alloc_meta* %21, i32 0, i32 0
  %23 = call i32 @print_track(%struct.kasan_track* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.kasan_track* @kasan_get_free_track(%struct.kmem_cache* %25, i8* %26, i32 %27)
  store %struct.kasan_track* %28, %struct.kasan_track** %10, align 8
  %29 = load %struct.kasan_track*, %struct.kasan_track** %10, align 8
  %30 = call i32 @print_track(%struct.kasan_track* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %20, %4
  %33 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @describe_object_addr(%struct.kmem_cache* %33, i8* %34, i8* %35)
  ret void
}

declare dso_local %struct.kasan_alloc_meta* @get_alloc_info(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @print_track(%struct.kasan_track*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.kasan_track* @kasan_get_free_track(%struct.kmem_cache*, i8*, i32) #1

declare dso_local i32 @describe_object_addr(%struct.kmem_cache*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
