; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_end_page_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_end_page_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { i32, %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32, i32, i32 }
%struct.page = type { i32 }

@FSCACHE_COOKIE_STORING_TAG = common dso_local global i32 0, align 4
@fscache_page_radix_clear_store = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_PENDING_TAG = common dso_local global i32 0, align 4
@fscache_n_store_radix_deletes = common dso_local global i32 0, align 4
@fscache_page_radix_delete = common dso_local global i32 0, align 4
@fscache_page_write_end = common dso_local global i32 0, align 4
@fscache_page_write_end_pend = common dso_local global i32 0, align 4
@fscache_page_write_end_noc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fscache_object*, %struct.page*)* @fscache_end_page_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fscache_end_page_write(%struct.fscache_object* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  store %struct.page* null, %struct.page** %6, align 8
  %8 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %9 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %12 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %11, i32 0, i32 1
  %13 = load %struct.fscache_cookie*, %struct.fscache_cookie** %12, align 8
  store %struct.fscache_cookie* %13, %struct.fscache_cookie** %5, align 8
  %14 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %15 = icmp ne %struct.fscache_cookie* %14, null
  br i1 %15, label %16, label %79

16:                                               ; preds = %2
  %17 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %18 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %21 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %20, i32 0, i32 2
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FSCACHE_COOKIE_STORING_TAG, align 4
  %26 = call i32 @radix_tree_tag_clear(i32* %21, i32 %24, i32 %25)
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = load i32, i32* @fscache_page_radix_clear_store, align 4
  %30 = call i32 @trace_fscache_page(%struct.fscache_cookie* %27, %struct.page* %28, i32 %29)
  %31 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %32 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %31, i32 0, i32 2
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FSCACHE_COOKIE_PENDING_TAG, align 4
  %37 = call i32 @radix_tree_tag_get(i32* %32, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %16
  %40 = call i32 @fscache_stat(i32* @fscache_n_store_radix_deletes)
  %41 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %42 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %41, i32 0, i32 2
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.page* @radix_tree_delete(i32* %42, i32 %45)
  store %struct.page* %46, %struct.page** %6, align 8
  %47 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = load i32, i32* @fscache_page_radix_delete, align 4
  %50 = call i32 @trace_fscache_page(%struct.fscache_cookie* %47, %struct.page* %48, i32 %49)
  %51 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = load i32, i32* @fscache_page_write_end, align 4
  %54 = call i32 @trace_fscache_page(%struct.fscache_cookie* %51, %struct.page* %52, i32 %53)
  %55 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %56 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %55, i32 0, i32 2
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.page* @radix_tree_lookup(i32* %56, i32 %59)
  store %struct.page* %60, %struct.page** %7, align 8
  %61 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = call i32 @trace_fscache_check_page(%struct.fscache_cookie* %61, %struct.page* %62, %struct.page* %63, i32 1)
  br label %70

65:                                               ; preds = %16
  %66 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %67 = load %struct.page*, %struct.page** %4, align 8
  %68 = load i32, i32* @fscache_page_write_end_pend, align 4
  %69 = call i32 @trace_fscache_page(%struct.fscache_cookie* %66, %struct.page* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %39
  %71 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %72 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %75 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %74, i32 0, i32 0
  %76 = call i32 @wake_up_bit(i32* %75, i32 0)
  %77 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %78 = call i32 @trace_fscache_wake_cookie(%struct.fscache_cookie* %77)
  br label %84

79:                                               ; preds = %2
  %80 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = load i32, i32* @fscache_page_write_end_noc, align 4
  %83 = call i32 @trace_fscache_page(%struct.fscache_cookie* %80, %struct.page* %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %86 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load %struct.page*, %struct.page** %6, align 8
  %89 = icmp ne %struct.page* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.page*, %struct.page** %6, align 8
  %92 = call i32 @put_page(%struct.page* %91)
  br label %93

93:                                               ; preds = %90, %84
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_tag_clear(i32*, i32, i32) #1

declare dso_local i32 @trace_fscache_page(%struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @radix_tree_tag_get(i32*, i32, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local %struct.page* @radix_tree_delete(i32*, i32) #1

declare dso_local %struct.page* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @trace_fscache_check_page(%struct.fscache_cookie*, %struct.page*, %struct.page*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @trace_fscache_wake_cookie(%struct.fscache_cookie*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
