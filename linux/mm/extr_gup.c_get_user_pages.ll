; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_gup.c_get_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_gup.c_get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@FOLL_TOUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_user_pages(i64 %0, i64 %1, i32 %2, %struct.page** %3, %struct.vm_area_struct** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.vm_area_struct**, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page** %3, %struct.page*** %9, align 8
  store %struct.vm_area_struct** %4, %struct.vm_area_struct*** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.page**, %struct.page*** %9, align 8
  %18 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @FOLL_TOUCH, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @__gup_longterm_locked(%struct.TYPE_3__* %11, i32 %14, i64 %15, i64 %16, %struct.page** %17, %struct.vm_area_struct** %18, i32 %21)
  ret i64 %22
}

declare dso_local i64 @__gup_longterm_locked(%struct.TYPE_3__*, i32, i64, i64, %struct.page**, %struct.vm_area_struct**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
