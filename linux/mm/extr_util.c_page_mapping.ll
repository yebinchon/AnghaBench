; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_page_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_page_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type opaque
%struct.page = type { i8* }
%struct.TYPE_3__ = type { i32 }

@PAGE_MAPPING_ANON = common dso_local global i64 0, align 8
@PAGE_MAPPING_FLAGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.address_space* @page_mapping(%struct.page* %0) #0 {
  %2 = alloca %struct.address_space*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call %struct.page* @compound_head(%struct.page* %6)
  store %struct.page* %7, %struct.page** %3, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @PageSlab(%struct.page* %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.address_space* null, %struct.address_space** %2, align 8
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @PageSwapCache(%struct.page* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @page_private(%struct.page* %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @swap_address_space(i32 %23)
  %25 = bitcast i8* %24 to %struct.address_space*
  store %struct.address_space* %25, %struct.address_space** %2, align 8
  br label %45

26:                                               ; preds = %13
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.address_space*
  store %struct.address_space* %30, %struct.address_space** %4, align 8
  %31 = load %struct.address_space*, %struct.address_space** %4, align 8
  %32 = ptrtoint %struct.address_space* %31 to i64
  %33 = load i64, i64* @PAGE_MAPPING_ANON, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store %struct.address_space* null, %struct.address_space** %2, align 8
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.address_space*, %struct.address_space** %4, align 8
  %39 = ptrtoint %struct.address_space* %38 to i64
  %40 = load i64, i64* @PAGE_MAPPING_FLAGS, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = inttoptr i64 %42 to i8*
  %44 = bitcast i8* %43 to %struct.address_space*
  store %struct.address_space* %44, %struct.address_space** %2, align 8
  br label %45

45:                                               ; preds = %37, %36, %18, %12
  %46 = load %struct.address_space*, %struct.address_space** %2, align 8
  ret %struct.address_space* %46
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i8* @swap_address_space(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
