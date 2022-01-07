; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___dentry_kill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___dentry_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.TYPE_2__*, i64, i32, %struct.dentry* }
%struct.TYPE_2__ = type { i32 (%struct.dentry*)*, i32 (%struct.dentry*)* }

@DCACHE_OP_PRUNE = common dso_local global i32 0, align 4
@DCACHE_LRU_LIST = common dso_local global i32 0, align 4
@DCACHE_SHRINK_LIST = common dso_local global i32 0, align 4
@nr_dentry = common dso_local global i32 0, align 4
@DCACHE_MAY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @__dentry_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dentry_kill(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store %struct.dentry* null, %struct.dentry** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = call i32 @IS_ROOT(%struct.dentry* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 5
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 4
  %15 = call i32 @lockref_mark_dead(i32* %14)
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DCACHE_OP_PRUNE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.dentry*, %struct.dentry** %2, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %2, align 8
  %29 = call i32 %27(%struct.dentry* %28)
  br label %30

30:                                               ; preds = %22, %12
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DCACHE_LRU_LIST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.dentry*, %struct.dentry** %2, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DCACHE_SHRINK_LIST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.dentry*, %struct.dentry** %2, align 8
  %46 = call i32 @d_lru_del(%struct.dentry* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.dentry*, %struct.dentry** %2, align 8
  %50 = call i32 @__d_drop(%struct.dentry* %49)
  %51 = load %struct.dentry*, %struct.dentry** %2, align 8
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = call i32 @dentry_unlist(%struct.dentry* %51, %struct.dentry* %52)
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = icmp ne %struct.dentry* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.dentry*, %struct.dentry** %2, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.dentry*, %struct.dentry** %2, align 8
  %67 = call i32 @dentry_unlink_inode(%struct.dentry* %66)
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.dentry*, %struct.dentry** %2, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* @nr_dentry, align 4
  %74 = call i32 @this_cpu_dec(i32 %73)
  %75 = load %struct.dentry*, %struct.dentry** %2, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load %struct.dentry*, %struct.dentry** %2, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %83, align 8
  %85 = icmp ne i32 (%struct.dentry*)* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.dentry*, %struct.dentry** %2, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %90, align 8
  %92 = load %struct.dentry*, %struct.dentry** %2, align 8
  %93 = call i32 %91(%struct.dentry* %92)
  br label %94

94:                                               ; preds = %86, %79, %72
  %95 = load %struct.dentry*, %struct.dentry** %2, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.dentry*, %struct.dentry** %2, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DCACHE_SHRINK_LIST, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load i32, i32* @DCACHE_MAY_FREE, align 4
  %106 = load %struct.dentry*, %struct.dentry** %2, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %94
  %111 = load %struct.dentry*, %struct.dentry** %2, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load i32, i32* %4, align 4
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.dentry*, %struct.dentry** %2, align 8
  %119 = call i32 @dentry_free(%struct.dentry* %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = call i32 (...) @cond_resched()
  ret void
}

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @lockref_mark_dead(i32*) #1

declare dso_local i32 @d_lru_del(%struct.dentry*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @dentry_unlist(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dentry_unlink_inode(%struct.dentry*) #1

declare dso_local i32 @this_cpu_dec(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dentry_free(%struct.dentry*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
