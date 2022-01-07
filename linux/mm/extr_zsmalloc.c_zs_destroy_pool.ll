; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_destroy_pool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_zs_destroy_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { i32, %struct.zs_pool*, i32, i32*, %struct.zs_pool** }
%struct.size_class = type { i32, %struct.size_class*, i32, i32*, %struct.size_class** }

@ZS_SIZE_CLASSES = common dso_local global i32 0, align 4
@ZS_EMPTY = common dso_local global i32 0, align 4
@NR_ZS_FULLNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Freeing non-empty class with size %db, fullness group %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zs_destroy_pool(%struct.zs_pool* %0) #0 {
  %2 = alloca %struct.zs_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.size_class*, align 8
  store %struct.zs_pool* %0, %struct.zs_pool** %2, align 8
  %6 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %7 = call i32 @zs_unregister_shrinker(%struct.zs_pool* %6)
  %8 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %9 = call i32 @zs_unregister_migration(%struct.zs_pool* %8)
  %10 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %11 = call i32 @zs_pool_stat_destroy(%struct.zs_pool* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %64, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ZS_SIZE_CLASSES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %18 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %17, i32 0, i32 4
  %19 = load %struct.zs_pool**, %struct.zs_pool*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.zs_pool*, %struct.zs_pool** %19, i64 %21
  %23 = load %struct.zs_pool*, %struct.zs_pool** %22, align 8
  %24 = bitcast %struct.zs_pool* %23 to %struct.size_class*
  store %struct.size_class* %24, %struct.size_class** %5, align 8
  %25 = load %struct.size_class*, %struct.size_class** %5, align 8
  %26 = icmp ne %struct.size_class* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %64

28:                                               ; preds = %16
  %29 = load %struct.size_class*, %struct.size_class** %5, align 8
  %30 = getelementptr inbounds %struct.size_class, %struct.size_class* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %64

35:                                               ; preds = %28
  %36 = load i32, i32* @ZS_EMPTY, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %57, %35
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NR_ZS_FULLNESS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.size_class*, %struct.size_class** %5, align 8
  %43 = getelementptr inbounds %struct.size_class, %struct.size_class* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @list_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.size_class*, %struct.size_class** %5, align 8
  %52 = getelementptr inbounds %struct.size_class, %struct.size_class* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load %struct.size_class*, %struct.size_class** %5, align 8
  %62 = bitcast %struct.size_class* %61 to %struct.zs_pool*
  %63 = call i32 @kfree(%struct.zs_pool* %62)
  br label %64

64:                                               ; preds = %60, %34, %27
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %12

67:                                               ; preds = %12
  %68 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %69 = call i32 @destroy_cache(%struct.zs_pool* %68)
  %70 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %71 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %70, i32 0, i32 1
  %72 = load %struct.zs_pool*, %struct.zs_pool** %71, align 8
  %73 = call i32 @kfree(%struct.zs_pool* %72)
  %74 = load %struct.zs_pool*, %struct.zs_pool** %2, align 8
  %75 = call i32 @kfree(%struct.zs_pool* %74)
  ret void
}

declare dso_local i32 @zs_unregister_shrinker(%struct.zs_pool*) #1

declare dso_local i32 @zs_unregister_migration(%struct.zs_pool*) #1

declare dso_local i32 @zs_pool_stat_destroy(%struct.zs_pool*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.zs_pool*) #1

declare dso_local i32 @destroy_cache(%struct.zs_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
