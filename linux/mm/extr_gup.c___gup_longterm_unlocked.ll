; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_gup.c___gup_longterm_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_gup.c___gup_longterm_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }

@FOLL_LONGTERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, %struct.page**)* @__gup_longterm_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gup_longterm_unlocked(i64 %0, i32 %1, i32 %2, %struct.page** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.page** %3, %struct.page*** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @FOLL_LONGTERM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.page**, %struct.page*** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__gup_longterm_locked(%struct.TYPE_4__* %20, %struct.TYPE_5__* %23, i64 %24, i32 %25, %struct.page** %26, i32* null, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @up_read(i32* %32)
  br label %40

34:                                               ; preds = %4
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.page**, %struct.page*** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @get_user_pages_unlocked(i64 %35, i32 %36, %struct.page** %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %14
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__gup_longterm_locked(%struct.TYPE_4__*, %struct.TYPE_5__*, i64, i32, %struct.page**, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @get_user_pages_unlocked(i64, i32, %struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
