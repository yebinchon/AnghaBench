; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_gup.c_get_user_pages_locked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_gup.c_get_user_pages_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@FOLL_LONGTERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_3__* null, align 8
@FOLL_TOUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_user_pages_locked(i64 %0, i64 %1, i32 %2, %struct.page** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @FOLL_LONGTERM, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %6, align 8
  br label %33

20:                                               ; preds = %5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.page**, %struct.page*** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FOLL_TOUCH, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @__get_user_pages_locked(%struct.TYPE_3__* %21, i32 %24, i64 %25, i64 %26, %struct.page** %27, i32* null, i32* %28, i32 %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @__get_user_pages_locked(%struct.TYPE_3__*, i32, i64, i64, %struct.page**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
