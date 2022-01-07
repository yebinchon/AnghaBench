; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_shrink_dcache_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_shrink_dcache_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry*, i32 }
%struct.select_data = type { i32, %struct.dentry*, i32, %struct.dentry* }

@select_collect = common dso_local global i32 0, align 4
@select_collect2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shrink_dcache_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.select_data, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  br label %5

5:                                                ; preds = %75, %17, %1
  %6 = bitcast %struct.select_data* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 3
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  store %struct.dentry* %8, %struct.dentry** %7, align 8
  %9 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 0
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = load i32, i32* @select_collect, align 4
  %13 = call i32 @d_walk(%struct.dentry* %11, %struct.select_data* %3, i32 %12)
  %14 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 0
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 0
  %19 = call i32 @shrink_dentry_list(i32* %18)
  br label %5

20:                                               ; preds = %5
  %21 = call i32 (...) @cond_resched()
  %22 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %76

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %27, align 8
  %28 = load %struct.dentry*, %struct.dentry** %2, align 8
  %29 = load i32, i32* @select_collect2, align 4
  %30 = call i32 @d_walk(%struct.dentry* %28, %struct.select_data* %3, i32 %29)
  %31 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %32 = load %struct.dentry*, %struct.dentry** %31, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %34, label %68

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %36 = load %struct.dentry*, %struct.dentry** %35, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 1
  %38 = call i32 @spin_lock(i32* %37)
  %39 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  %41 = call i32 @shrink_lock_dentry(%struct.dentry* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %45 = load %struct.dentry*, %struct.dentry** %44, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = call i32 (...) @rcu_read_unlock()
  br label %67

49:                                               ; preds = %34
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %52 = load %struct.dentry*, %struct.dentry** %51, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load %struct.dentry*, %struct.dentry** %53, align 8
  store %struct.dentry* %54, %struct.dentry** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %4, align 8
  %56 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %57 = load %struct.dentry*, %struct.dentry** %56, align 8
  %58 = icmp ne %struct.dentry* %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 0
  %62 = call i32 @__dput_to_list(%struct.dentry* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %49
  %64 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 1
  %65 = load %struct.dentry*, %struct.dentry** %64, align 8
  %66 = call i32 @__dentry_kill(%struct.dentry* %65)
  br label %67

67:                                               ; preds = %63, %43
  br label %68

68:                                               ; preds = %67, %26
  %69 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 0
  %70 = call i32 @list_empty(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.select_data, %struct.select_data* %3, i32 0, i32 0
  %74 = call i32 @shrink_dentry_list(i32* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %5

76:                                               ; preds = %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @d_walk(%struct.dentry*, %struct.select_data*, i32) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @shrink_dentry_list(i32*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @shrink_lock_dentry(%struct.dentry*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @__dput_to_list(%struct.dentry*, i32*) #2

declare dso_local i32 @__dentry_kill(%struct.dentry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
