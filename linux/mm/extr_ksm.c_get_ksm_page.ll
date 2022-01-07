; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_ksm.c_get_ksm_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_ksm.c_get_ksm_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.stable_node = type { i32 }

@PAGE_MAPPING_KSM = common dso_local global i64 0, align 8
@GET_KSM_PAGE_TRYLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GET_KSM_PAGE_LOCK = common dso_local global i32 0, align 4
@GET_KSM_PAGE_NOLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.stable_node*, i32)* @get_ksm_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @get_ksm_page(%struct.stable_node* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.stable_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.stable_node* %0, %struct.stable_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.stable_node*, %struct.stable_node** %4, align 8
  %10 = ptrtoint %struct.stable_node* %9 to i64
  %11 = load i64, i64* @PAGE_MAPPING_KSM, align 8
  %12 = or i64 %10, %11
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %104, %2
  %15 = load %struct.stable_node*, %struct.stable_node** %4, align 8
  %16 = getelementptr inbounds %struct.stable_node, %struct.stable_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @READ_ONCE(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.page* @pfn_to_page(i64 %19)
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @READ_ONCE(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %96

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %40, %29
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = call i32 @get_page_unless_zero(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.page*, %struct.page** %6, align 8
  %37 = call i32 @PageSwapCache(%struct.page* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %96

40:                                               ; preds = %35
  %41 = call i32 (...) @cpu_relax()
  br label %30

42:                                               ; preds = %30
  %43 = load %struct.page*, %struct.page** %6, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @READ_ONCE(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = call i32 @put_page(%struct.page* %51)
  br label %96

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @GET_KSM_PAGE_TRYLOCK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = call i32 @trylock_page(%struct.page* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = call i32 @put_page(%struct.page* %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.page* @ERR_PTR(i32 %65)
  store %struct.page* %66, %struct.page** %3, align 8
  br label %108

67:                                               ; preds = %57
  br label %76

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @GET_KSM_PAGE_LOCK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = call i32 @lock_page(%struct.page* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %67
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @GET_KSM_PAGE_NOLOCK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.page*, %struct.page** %6, align 8
  %82 = getelementptr inbounds %struct.page, %struct.page* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @READ_ONCE(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.page*, %struct.page** %6, align 8
  %90 = call i32 @unlock_page(%struct.page* %89)
  %91 = load %struct.page*, %struct.page** %6, align 8
  %92 = call i32 @put_page(%struct.page* %91)
  br label %96

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %76
  %95 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %95, %struct.page** %3, align 8
  br label %108

96:                                               ; preds = %88, %50, %39, %28
  %97 = call i32 (...) @smp_rmb()
  %98 = load %struct.stable_node*, %struct.stable_node** %4, align 8
  %99 = getelementptr inbounds %struct.stable_node, %struct.stable_node* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @READ_ONCE(i32 %100)
  %102 = load i64, i64* %8, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %14

105:                                              ; preds = %96
  %106 = load %struct.stable_node*, %struct.stable_node** %4, align 8
  %107 = call i32 @remove_node_from_stable_tree(%struct.stable_node* %106)
  store %struct.page* null, %struct.page** %3, align 8
  br label %108

108:                                              ; preds = %105, %94, %61
  %109 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %109
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @remove_node_from_stable_tree(%struct.stable_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
