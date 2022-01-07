; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_visitor.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i64 }
%struct.btree_geo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btree_visitor(%struct.btree_head* %0, %struct.btree_geo* %1, i64 %2, void (i8*, i64, i64*, i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.btree_head*, align 8
  %7 = alloca %struct.btree_geo*, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (i8*, i64, i64*, i64, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.btree_head* %0, %struct.btree_head** %6, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %7, align 8
  store i64 %2, i64* %8, align 8
  store void (i8*, i64, i64*, i64, i8*)* %3, void (i8*, i64, i64*, i64, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  store void (i8*, i64, i64*, i64, i8*)* @empty, void (i8*, i64, i64*, i64, i8*)** %9, align 8
  br label %15

15:                                               ; preds = %14, %5
  %16 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %17 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %22 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %23 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %24 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load void (i8*, i64, i64*, i64, i8*)*, void (i8*, i64, i64*, i64, i8*)** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %30 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @__btree_for_each(%struct.btree_head* %21, %struct.btree_geo* %22, i64 %25, i64 %26, void (i8*, i64, i64*, i64, i8*)* %27, i8* %28, i32 0, i32 %31, i32 0)
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %20, %15
  %34 = load i64, i64* %11, align 8
  ret i64 %34
}

declare dso_local void @empty(i8*, i64, i64*, i64, i8*) #1

declare dso_local i64 @__btree_for_each(%struct.btree_head*, %struct.btree_geo*, i64, i64, void (i8*, i64, i64*, i64, i8*)*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
