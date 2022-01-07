; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_find_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_find_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@xas = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @find_get_entry(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @xas, align 4
  %7 = load %struct.address_space*, %struct.address_space** %3, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @XA_STATE(i32 %6, i32* %8, i32 %9)
  %11 = call i32 (...) @rcu_read_lock()
  br label %12

12:                                               ; preds = %39, %31, %18, %2
  %13 = call i32 @xas_reset(i32* @xas)
  %14 = call %struct.page* @xas_load(i32* @xas)
  store %struct.page* %14, %struct.page** %5, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i64 @xas_retry(i32* @xas, %struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %12

19:                                               ; preds = %12
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = call i64 @xa_is_value(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19
  br label %46

27:                                               ; preds = %22
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @page_cache_get_speculative(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %12

32:                                               ; preds = %27
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call %struct.page* @xas_reload(i32* @xas)
  %35 = icmp ne %struct.page* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @put_page(%struct.page* %40)
  br label %12

42:                                               ; preds = %32
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.page* @find_subpage(%struct.page* %43, i32 %44)
  store %struct.page* %45, %struct.page** %5, align 8
  br label %46

46:                                               ; preds = %42, %26
  %47 = call i32 (...) @rcu_read_unlock()
  %48 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %48
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @xas_reset(i32*) #1

declare dso_local %struct.page* @xas_load(i32*) #1

declare dso_local i64 @xas_retry(i32*, %struct.page*) #1

declare dso_local i64 @xa_is_value(%struct.page*) #1

declare dso_local i32 @page_cache_get_speculative(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @xas_reload(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @find_subpage(%struct.page*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
