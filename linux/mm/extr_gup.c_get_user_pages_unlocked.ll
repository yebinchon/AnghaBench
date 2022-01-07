; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_gup.c_get_user_pages_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_gup.c_get_user_pages_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@FOLL_TOUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_user_pages_unlocked(i64 %0, i64 %1, %struct.page** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  store %struct.mm_struct* %15, %struct.mm_struct** %10, align 8
  store i32 1, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FOLL_LONGTERM, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  %27 = call i32 @down_read(i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.page**, %struct.page*** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @FOLL_TOUCH, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @__get_user_pages_locked(%struct.TYPE_3__* %28, %struct.mm_struct* %29, i64 %30, i64 %31, %struct.page** %32, i32* null, i32* %11, i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = call i32 @up_read(i32* %41)
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %21
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @__get_user_pages_locked(%struct.TYPE_3__*, %struct.mm_struct*, i64, i64, %struct.page**, i32*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
