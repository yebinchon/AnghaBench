; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c___xdp_return.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c___xdp_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_mem_allocator = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64)* }
%struct.page = type { i32 }

@mem_id_ht = common dso_local global i32 0, align 4
@mem_id_rht_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"page_pool gone mem.id=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.xdp_mem_info*, i32, i64)* @__xdp_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xdp_return(i8* %0, %struct.xdp_mem_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xdp_mem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.xdp_mem_allocator*, align 8
  %10 = alloca %struct.page*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.xdp_mem_info* %1, %struct.xdp_mem_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.xdp_mem_info*, %struct.xdp_mem_info** %6, align 8
  %12 = getelementptr inbounds %struct.xdp_mem_info, %struct.xdp_mem_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %77 [
    i32 130, label %14
    i32 129, label %51
    i32 131, label %54
    i32 128, label %59
  ]

14:                                               ; preds = %4
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load i32, i32* @mem_id_ht, align 4
  %17 = load %struct.xdp_mem_info*, %struct.xdp_mem_info** %6, align 8
  %18 = getelementptr inbounds %struct.xdp_mem_info, %struct.xdp_mem_info* %17, i32 0, i32 1
  %19 = load i32, i32* @mem_id_rht_params, align 4
  %20 = call %struct.xdp_mem_allocator* @rhashtable_lookup(i32 %16, i32* %18, i32 %19)
  store %struct.xdp_mem_allocator* %20, %struct.xdp_mem_allocator** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.page* @virt_to_head_page(i8* %21)
  store %struct.page* %22, %struct.page** %10, align 8
  %23 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %9, align 8
  %24 = call i32 @likely(%struct.xdp_mem_allocator* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %14
  %27 = call i32 (...) @xdp_return_frame_no_direct()
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %9, align 8
  %34 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @page_pool_put_page(i32 %35, %struct.page* %36, i32 %37)
  br label %49

39:                                               ; preds = %14
  %40 = load %struct.xdp_mem_info*, %struct.xdp_mem_info** %6, align 8
  %41 = getelementptr inbounds %struct.xdp_mem_info, %struct.xdp_mem_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.xdp_mem_info*, %struct.xdp_mem_info** %6, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @trace_mem_return_failed(%struct.xdp_mem_info* %44, %struct.page* %45)
  %47 = load %struct.page*, %struct.page** %10, align 8
  %48 = call i32 @put_page(%struct.page* %47)
  br label %49

49:                                               ; preds = %39, %26
  %50 = call i32 (...) @rcu_read_unlock()
  br label %78

51:                                               ; preds = %4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @page_frag_free(i8* %52)
  br label %78

54:                                               ; preds = %4
  %55 = load i8*, i8** %5, align 8
  %56 = call %struct.page* @virt_to_page(i8* %55)
  store %struct.page* %56, %struct.page** %10, align 8
  %57 = load %struct.page*, %struct.page** %10, align 8
  %58 = call i32 @put_page(%struct.page* %57)
  br label %78

59:                                               ; preds = %4
  %60 = call i32 (...) @rcu_read_lock()
  %61 = load i32, i32* @mem_id_ht, align 4
  %62 = load %struct.xdp_mem_info*, %struct.xdp_mem_info** %6, align 8
  %63 = getelementptr inbounds %struct.xdp_mem_info, %struct.xdp_mem_info* %62, i32 0, i32 1
  %64 = load i32, i32* @mem_id_rht_params, align 4
  %65 = call %struct.xdp_mem_allocator* @rhashtable_lookup(i32 %61, i32* %63, i32 %64)
  store %struct.xdp_mem_allocator* %65, %struct.xdp_mem_allocator** %9, align 8
  %66 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %9, align 8
  %67 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_2__*, i64)*, i32 (%struct.TYPE_2__*, i64)** %69, align 8
  %71 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %9, align 8
  %72 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 %70(%struct.TYPE_2__* %73, i64 %74)
  %76 = call i32 (...) @rcu_read_unlock()
  br label %77

77:                                               ; preds = %4, %59
  br label %78

78:                                               ; preds = %77, %54, %51, %49
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xdp_mem_allocator* @rhashtable_lookup(i32, i32*, i32) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i32 @likely(%struct.xdp_mem_allocator*) #1

declare dso_local i32 @xdp_return_frame_no_direct(...) #1

declare dso_local i32 @page_pool_put_page(i32, %struct.page*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @trace_mem_return_failed(%struct.xdp_mem_info*, %struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @page_frag_free(i8*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
