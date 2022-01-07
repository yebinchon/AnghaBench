; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dst.c_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dst.c_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 (%struct.dst_entry*)* }
%struct.metadata_dst = type { i32 }

@DST_NOCOUNT = common dso_local global i32 0, align 4
@DST_METADATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @dst_destroy(%struct.dst_entry* %0) #0 {
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %2, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %3, align 8
  %4 = call i32 (...) @smp_rmb()
  %5 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %6 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DST_NOCOUNT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %13 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @dst_entries_add(%struct.TYPE_2__* %14, i32 -1)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)** %20, align 8
  %22 = icmp ne i32 (%struct.dst_entry*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %25 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)** %27, align 8
  %29 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %30 = call i32 %28(%struct.dst_entry* %29)
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %33 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %38 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dev_put(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %43 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @lwtstate_put(i32 %44)
  %46 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DST_METADATA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %54 = bitcast %struct.dst_entry* %53 to %struct.metadata_dst*
  %55 = call i32 @metadata_dst_free(%struct.metadata_dst* %54)
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %58 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %63 = call i32 @kmem_cache_free(i32 %61, %struct.dst_entry* %62)
  br label %64

64:                                               ; preds = %56, %52
  %65 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  store %struct.dst_entry* %65, %struct.dst_entry** %2, align 8
  %66 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %67 = icmp ne %struct.dst_entry* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.dst_entry*, %struct.dst_entry** %2, align 8
  %70 = call i32 @dst_release_immediate(%struct.dst_entry* %69)
  br label %71

71:                                               ; preds = %68, %64
  ret %struct.dst_entry* null
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @dst_entries_add(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @lwtstate_put(i32) #1

declare dso_local i32 @metadata_dst_free(%struct.metadata_dst*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dst_entry*) #1

declare dso_local i32 @dst_release_immediate(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
