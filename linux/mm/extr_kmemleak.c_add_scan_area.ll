; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_add_scan_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_add_scan_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i64, i32, i32, i32 }
%struct.kmemleak_scan_area = type { i64, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Adding scan area to unknown object at 0x%08lx\0A\00", align 1
@scan_area_cache = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Cannot allocate a scan area, scanning the full object\0A\00", align 1
@OBJECT_FULL_SCAN = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Scan area larger than object 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @add_scan_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_scan_area(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kmemleak_object*, align 8
  %9 = alloca %struct.kmemleak_scan_area*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.kmemleak_scan_area* null, %struct.kmemleak_scan_area** %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.kmemleak_object* @find_and_get_object(i64 %10, i32 1)
  store %struct.kmemleak_object* %11, %struct.kmemleak_object** %8, align 8
  %12 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %13 = icmp ne %struct.kmemleak_object* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @kmemleak_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %96

17:                                               ; preds = %3
  %18 = load i64, i64* @scan_area_cache, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* @scan_area_cache, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gfp_kmemleak_mask(i32 %22)
  %24 = call %struct.kmemleak_scan_area* @kmem_cache_alloc(i64 %21, i32 %23)
  store %struct.kmemleak_scan_area* %24, %struct.kmemleak_scan_area** %9, align 8
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %27 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %26, i32 0, i32 2
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %9, align 8
  %31 = icmp ne %struct.kmemleak_scan_area* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = call i32 @pr_warn_once(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @OBJECT_FULL_SCAN, align 4
  %35 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %36 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %89

39:                                               ; preds = %25
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @SIZE_MAX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %45 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %48 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = load i64, i64* %4, align 8
  %52 = sub i64 %50, %51
  store i64 %52, i64* %5, align 8
  br label %74

53:                                               ; preds = %39
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %58 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %61 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  %64 = icmp ugt i64 %56, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @kmemleak_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %69 = call i32 @dump_object_info(%struct.kmemleak_object* %68)
  %70 = load i64, i64* @scan_area_cache, align 8
  %71 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %9, align 8
  %72 = call i32 @kmem_cache_free(i64 %70, %struct.kmemleak_scan_area* %71)
  br label %89

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %9, align 8
  %76 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %75, i32 0, i32 2
  %77 = call i32 @INIT_HLIST_NODE(i32* %76)
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %9, align 8
  %80 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %9, align 8
  %83 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.kmemleak_scan_area*, %struct.kmemleak_scan_area** %9, align 8
  %85 = getelementptr inbounds %struct.kmemleak_scan_area, %struct.kmemleak_scan_area* %84, i32 0, i32 2
  %86 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %87 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %86, i32 0, i32 3
  %88 = call i32 @hlist_add_head(i32* %85, i32* %87)
  br label %89

89:                                               ; preds = %74, %65, %32
  %90 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %91 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %90, i32 0, i32 2
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.kmemleak_object*, %struct.kmemleak_object** %8, align 8
  %95 = call i32 @put_object(%struct.kmemleak_object* %94)
  br label %96

96:                                               ; preds = %89, %14
  ret void
}

declare dso_local %struct.kmemleak_object* @find_and_get_object(i64, i32) #1

declare dso_local i32 @kmemleak_warn(i8*, i64) #1

declare dso_local %struct.kmemleak_scan_area* @kmem_cache_alloc(i64, i32) #1

declare dso_local i32 @gfp_kmemleak_mask(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @dump_object_info(%struct.kmemleak_object*) #1

declare dso_local i32 @kmem_cache_free(i64, %struct.kmemleak_scan_area*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
