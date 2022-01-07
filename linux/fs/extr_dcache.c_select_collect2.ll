; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_select_collect2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_select_collect2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.select_data = type { i32, %struct.dentry*, %struct.dentry* }

@D_WALK_CONTINUE = common dso_local global i32 0, align 4
@DCACHE_SHRINK_LIST = common dso_local global i32 0, align 4
@D_WALK_QUIT = common dso_local global i32 0, align 4
@DCACHE_LRU_LIST = common dso_local global i32 0, align 4
@D_WALK_NORETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dentry*)* @select_collect2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_collect2(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.select_data*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.select_data*
  store %struct.select_data* %9, %struct.select_data** %6, align 8
  %10 = load i32, i32* @D_WALK_CONTINUE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.select_data*, %struct.select_data** %6, align 8
  %12 = getelementptr inbounds %struct.select_data, %struct.select_data* %11, i32 0, i32 2
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = icmp eq %struct.dentry* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DCACHE_SHRINK_LIST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = load %struct.select_data*, %struct.select_data** %6, align 8
  %34 = getelementptr inbounds %struct.select_data, %struct.select_data* %33, i32 0, i32 1
  store %struct.dentry* %32, %struct.dentry** %34, align 8
  %35 = load i32, i32* @D_WALK_QUIT, align 4
  store i32 %35, i32* %3, align 4
  br label %76

36:                                               ; preds = %24
  br label %59

37:                                               ; preds = %17
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DCACHE_LRU_LIST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = call i32 @d_lru_del(%struct.dentry* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = load %struct.select_data*, %struct.select_data** %6, align 8
  %56 = getelementptr inbounds %struct.select_data, %struct.select_data* %55, i32 0, i32 0
  %57 = call i32 @d_shrink_add(%struct.dentry* %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.select_data*, %struct.select_data** %6, align 8
  %61 = getelementptr inbounds %struct.select_data, %struct.select_data* %60, i32 0, i32 0
  %62 = call i32 @list_empty(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = call i64 (...) @need_resched()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @D_WALK_QUIT, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @D_WALK_NORETRY, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %59
  br label %74

74:                                               ; preds = %73, %16
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %30
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @rcu_read_lock(...) #1

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
