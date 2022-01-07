; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c___zs_compact.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c___zs_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.size_class = type { i32, i64 }
%struct.zs_compact_control = type { i8*, i8*, i64 }
%struct.zspage = type { i32 }

@ZS_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_pool*, %struct.size_class*)* @__zs_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__zs_compact(%struct.zs_pool* %0, %struct.size_class* %1) #0 {
  %3 = alloca %struct.zs_pool*, align 8
  %4 = alloca %struct.size_class*, align 8
  %5 = alloca %struct.zs_compact_control, align 8
  %6 = alloca %struct.zspage*, align 8
  %7 = alloca %struct.zspage*, align 8
  store %struct.zs_pool* %0, %struct.zs_pool** %3, align 8
  store %struct.size_class* %1, %struct.size_class** %4, align 8
  store %struct.zspage* null, %struct.zspage** %7, align 8
  %8 = load %struct.size_class*, %struct.size_class** %4, align 8
  %9 = getelementptr inbounds %struct.size_class, %struct.size_class* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  br label %11

11:                                               ; preds = %70, %2
  %12 = load %struct.size_class*, %struct.size_class** %4, align 8
  %13 = call %struct.zspage* @isolate_zspage(%struct.size_class* %12, i32 1)
  store %struct.zspage* %13, %struct.zspage** %6, align 8
  %14 = icmp ne %struct.zspage* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load %struct.size_class*, %struct.size_class** %4, align 8
  %17 = call i32 @zs_can_compact(%struct.size_class* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %78

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %5, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.zspage*, %struct.zspage** %6, align 8
  %23 = call i8* @get_first_page(%struct.zspage* %22)
  %24 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %38, %20
  %26 = load %struct.size_class*, %struct.size_class** %4, align 8
  %27 = call %struct.zspage* @isolate_zspage(%struct.size_class* %26, i32 0)
  store %struct.zspage* %27, %struct.zspage** %7, align 8
  %28 = icmp ne %struct.zspage* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.zspage*, %struct.zspage** %7, align 8
  %31 = call i8* @get_first_page(%struct.zspage* %30)
  %32 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %5, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %34 = load %struct.size_class*, %struct.size_class** %4, align 8
  %35 = call i32 @migrate_zspage(%struct.zs_pool* %33, %struct.size_class* %34, %struct.zs_compact_control* %5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.size_class*, %struct.size_class** %4, align 8
  %40 = load %struct.zspage*, %struct.zspage** %7, align 8
  %41 = call i64 @putback_zspage(%struct.size_class* %39, %struct.zspage* %40)
  br label %25

42:                                               ; preds = %37, %25
  %43 = load %struct.zspage*, %struct.zspage** %7, align 8
  %44 = icmp eq %struct.zspage* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %78

46:                                               ; preds = %42
  %47 = load %struct.size_class*, %struct.size_class** %4, align 8
  %48 = load %struct.zspage*, %struct.zspage** %7, align 8
  %49 = call i64 @putback_zspage(%struct.size_class* %47, %struct.zspage* %48)
  %50 = load %struct.size_class*, %struct.size_class** %4, align 8
  %51 = load %struct.zspage*, %struct.zspage** %6, align 8
  %52 = call i64 @putback_zspage(%struct.size_class* %50, %struct.zspage* %51)
  %53 = load i64, i64* @ZS_EMPTY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %57 = load %struct.size_class*, %struct.size_class** %4, align 8
  %58 = load %struct.zspage*, %struct.zspage** %6, align 8
  %59 = call i32 @free_zspage(%struct.zs_pool* %56, %struct.size_class* %57, %struct.zspage* %58)
  %60 = load %struct.size_class*, %struct.size_class** %4, align 8
  %61 = getelementptr inbounds %struct.size_class, %struct.size_class* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %64 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %62
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  br label %70

70:                                               ; preds = %55, %46
  %71 = load %struct.size_class*, %struct.size_class** %4, align 8
  %72 = getelementptr inbounds %struct.size_class, %struct.size_class* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = call i32 (...) @cond_resched()
  %75 = load %struct.size_class*, %struct.size_class** %4, align 8
  %76 = getelementptr inbounds %struct.size_class, %struct.size_class* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  br label %11

78:                                               ; preds = %45, %19, %11
  %79 = load %struct.zspage*, %struct.zspage** %6, align 8
  %80 = icmp ne %struct.zspage* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.size_class*, %struct.size_class** %4, align 8
  %83 = load %struct.zspage*, %struct.zspage** %6, align 8
  %84 = call i64 @putback_zspage(%struct.size_class* %82, %struct.zspage* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load %struct.size_class*, %struct.size_class** %4, align 8
  %87 = getelementptr inbounds %struct.size_class, %struct.size_class* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.zspage* @isolate_zspage(%struct.size_class*, i32) #1

declare dso_local i32 @zs_can_compact(%struct.size_class*) #1

declare dso_local i8* @get_first_page(%struct.zspage*) #1

declare dso_local i32 @migrate_zspage(%struct.zs_pool*, %struct.size_class*, %struct.zs_compact_control*) #1

declare dso_local i64 @putback_zspage(%struct.size_class*, %struct.zspage*) #1

declare dso_local i32 @free_zspage(%struct.zs_pool*, %struct.size_class*, %struct.zspage*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
