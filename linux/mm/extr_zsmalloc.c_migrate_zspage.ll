; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_migrate_zspage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_migrate_zspage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_pool = type { i32 }
%struct.size_class = type { i32 }
%struct.zs_compact_control = type { i32, %struct.page*, %struct.page* }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HANDLE_PIN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zs_pool*, %struct.size_class*, %struct.zs_compact_control*)* @migrate_zspage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_zspage(%struct.zs_pool* %0, %struct.size_class* %1, %struct.zs_compact_control* %2) #0 {
  %4 = alloca %struct.zs_pool*, align 8
  %5 = alloca %struct.size_class*, align 8
  %6 = alloca %struct.zs_compact_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.zs_pool* %0, %struct.zs_pool** %4, align 8
  store %struct.size_class* %1, %struct.size_class** %5, align 8
  store %struct.zs_compact_control* %2, %struct.zs_compact_control** %6, align 8
  %14 = load %struct.zs_compact_control*, %struct.zs_compact_control** %6, align 8
  %15 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %14, i32 0, i32 1
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %10, align 8
  %17 = load %struct.zs_compact_control*, %struct.zs_compact_control** %6, align 8
  %18 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %17, i32 0, i32 2
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %11, align 8
  %20 = load %struct.zs_compact_control*, %struct.zs_compact_control** %6, align 8
  %21 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %3, %35, %47
  %24 = load %struct.size_class*, %struct.size_class** %5, align 8
  %25 = load %struct.page*, %struct.page** %10, align 8
  %26 = call i64 @find_alloced_obj(%struct.size_class* %24, %struct.page* %25, i32* %12)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load %struct.page*, %struct.page** %10, align 8
  %31 = call %struct.page* @get_next_page(%struct.page* %30)
  store %struct.page* %31, %struct.page** %10, align 8
  %32 = load %struct.page*, %struct.page** %10, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %73

35:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.size_class*, %struct.size_class** %5, align 8
  %38 = load %struct.page*, %struct.page** %11, align 8
  %39 = call i32 @get_zspage(%struct.page* %38)
  %40 = call i64 @zspage_full(%struct.size_class* %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @unpin_tag(i64 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %73

47:                                               ; preds = %36
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @handle_to_obj(i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.size_class*, %struct.size_class** %5, align 8
  %51 = load %struct.page*, %struct.page** %11, align 8
  %52 = call i32 @get_zspage(%struct.page* %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @obj_malloc(%struct.size_class* %50, i32 %52, i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.size_class*, %struct.size_class** %5, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @zs_object_copy(%struct.size_class* %55, i64 %56, i64 %57)
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @HANDLE_PIN_BIT, align 4
  %62 = call i64 @BIT(i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @record_obj(i64 %65, i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @unpin_tag(i64 %68)
  %70 = load %struct.size_class*, %struct.size_class** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @obj_free(%struct.size_class* %70, i64 %71)
  br label %23

73:                                               ; preds = %42, %34
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = load %struct.zs_compact_control*, %struct.zs_compact_control** %6, align 8
  %76 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %75, i32 0, i32 1
  store %struct.page* %74, %struct.page** %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.zs_compact_control*, %struct.zs_compact_control** %6, align 8
  %79 = getelementptr inbounds %struct.zs_compact_control, %struct.zs_compact_control* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local i64 @find_alloced_obj(%struct.size_class*, %struct.page*, i32*) #1

declare dso_local %struct.page* @get_next_page(%struct.page*) #1

declare dso_local i64 @zspage_full(%struct.size_class*, i32) #1

declare dso_local i32 @get_zspage(%struct.page*) #1

declare dso_local i32 @unpin_tag(i64) #1

declare dso_local i64 @handle_to_obj(i64) #1

declare dso_local i64 @obj_malloc(%struct.size_class*, i32, i64) #1

declare dso_local i32 @zs_object_copy(%struct.size_class*, i64, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @record_obj(i64, i64) #1

declare dso_local i32 @obj_free(%struct.size_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
