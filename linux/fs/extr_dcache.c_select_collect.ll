; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_select_collect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_select_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.select_data = type { i32, i32, %struct.dentry* }

@D_WALK_CONTINUE = common dso_local global i32 0, align 4
@DCACHE_SHRINK_LIST = common dso_local global i32 0, align 4
@DCACHE_LRU_LIST = common dso_local global i32 0, align 4
@D_WALK_QUIT = common dso_local global i32 0, align 4
@D_WALK_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dentry*)* @select_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_collect(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.select_data*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.select_data*
  store %struct.select_data* %8, %struct.select_data** %5, align 8
  %9 = load i32, i32* @D_WALK_CONTINUE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.select_data*, %struct.select_data** %5, align 8
  %11 = getelementptr inbounds %struct.select_data, %struct.select_data* %10, i32 0, i32 2
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = icmp eq %struct.dentry* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %69

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DCACHE_SHRINK_LIST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.select_data*, %struct.select_data** %5, align 8
  %25 = getelementptr inbounds %struct.select_data, %struct.select_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %54

28:                                               ; preds = %16
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DCACHE_LRU_LIST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = call i32 @d_lru_del(%struct.dentry* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = load %struct.select_data*, %struct.select_data** %5, align 8
  %47 = getelementptr inbounds %struct.select_data, %struct.select_data* %46, i32 0, i32 0
  %48 = call i32 @d_shrink_add(%struct.dentry* %45, i32* %47)
  %49 = load %struct.select_data*, %struct.select_data** %5, align 8
  %50 = getelementptr inbounds %struct.select_data, %struct.select_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %44, %38
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.select_data*, %struct.select_data** %5, align 8
  %56 = getelementptr inbounds %struct.select_data, %struct.select_data* %55, i32 0, i32 0
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = call i64 (...) @need_resched()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @D_WALK_QUIT, align 4
  br label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @D_WALK_NORETRY, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %54
  br label %69

69:                                               ; preds = %68, %15
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @d_lru_del(%struct.dentry*) #1

declare dso_local i32 @d_shrink_add(%struct.dentry*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @need_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
