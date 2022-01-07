; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_find_get_pages_contig.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_find_get_pages_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@xas = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_get_pages_contig(%struct.address_space* %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  %12 = load %struct.address_space*, %struct.address_space** %6, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xas, i32 0, i32 0), align 4
  %16 = call i32 @XA_STATE(i32 %15, i32* %13, i32 %14)
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %77

24:                                               ; preds = %4
  %25 = call i32 (...) @rcu_read_lock()
  %26 = call %struct.page* @xas_load(%struct.TYPE_8__* @xas)
  store %struct.page* %26, %struct.page** %10, align 8
  br label %27

27:                                               ; preds = %72, %24
  %28 = load %struct.page*, %struct.page** %10, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = load %struct.page*, %struct.page** %10, align 8
  %32 = call i64 @xas_retry(%struct.TYPE_8__* @xas, %struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %72

35:                                               ; preds = %30
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = call i64 @xa_is_value(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %74

40:                                               ; preds = %35
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i32 @page_cache_get_speculative(%struct.page* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %70

45:                                               ; preds = %40
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = call %struct.page* @xas_reload(%struct.TYPE_8__* @xas)
  %48 = icmp ne %struct.page* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %67

53:                                               ; preds = %45
  %54 = load %struct.page*, %struct.page** %10, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xas, i32 0, i32 0), align 4
  %56 = call %struct.page* @find_subpage(%struct.page* %54, i32 %55)
  %57 = load %struct.page**, %struct.page*** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 %59
  store %struct.page* %56, %struct.page** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %74

66:                                               ; preds = %53
  br label %72

67:                                               ; preds = %52
  %68 = load %struct.page*, %struct.page** %10, align 8
  %69 = call i32 @put_page(%struct.page* %68)
  br label %70

70:                                               ; preds = %67, %44
  %71 = call i32 @xas_reset(%struct.TYPE_8__* @xas)
  br label %72

72:                                               ; preds = %70, %66, %34
  %73 = call %struct.page* @xas_next(%struct.TYPE_8__* @xas)
  store %struct.page* %73, %struct.page** %10, align 8
  br label %27

74:                                               ; preds = %65, %39, %27
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %23
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.page* @xas_load(%struct.TYPE_8__*) #1

declare dso_local i64 @xas_retry(%struct.TYPE_8__*, %struct.page*) #1

declare dso_local i64 @xa_is_value(%struct.page*) #1

declare dso_local i32 @page_cache_get_speculative(%struct.page*) #1

declare dso_local %struct.page* @xas_reload(%struct.TYPE_8__*) #1

declare dso_local %struct.page* @find_subpage(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @xas_reset(%struct.TYPE_8__*) #1

declare dso_local %struct.page* @xas_next(%struct.TYPE_8__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
