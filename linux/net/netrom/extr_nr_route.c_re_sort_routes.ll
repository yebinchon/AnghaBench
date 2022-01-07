; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_route.c_re_sort_routes.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_route.c_re_sort_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nr_node = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nr_node*, i32, i32)* @re_sort_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_sort_routes(%struct.nr_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nr_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nr_node* %0, %struct.nr_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %8 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %16 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %14, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %3
  %25 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %26 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %33 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %36 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %43 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %47 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = load %struct.nr_node*, %struct.nr_node** %4, align 8
  %53 = getelementptr inbounds %struct.nr_node, %struct.nr_node* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @swap(i64 %59, i64 %61)
  br label %63

63:                                               ; preds = %45, %3
  ret void
}

declare dso_local i32 @swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
