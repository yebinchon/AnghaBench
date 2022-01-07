; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_walk_peek.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_walk_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_iter = type { i64, %struct.rhash_head*, %struct.rhashtable*, %struct.rhlist_head* }
%struct.rhash_head = type { i32 }
%struct.rhashtable = type { i64 }
%struct.rhlist_head = type { %struct.rhash_head }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rhashtable_walk_peek(%struct.rhashtable_iter* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rhashtable_iter*, align 8
  %4 = alloca %struct.rhlist_head*, align 8
  %5 = alloca %struct.rhashtable*, align 8
  %6 = alloca %struct.rhash_head*, align 8
  store %struct.rhashtable_iter* %0, %struct.rhashtable_iter** %3, align 8
  %7 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %8 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %7, i32 0, i32 3
  %9 = load %struct.rhlist_head*, %struct.rhlist_head** %8, align 8
  store %struct.rhlist_head* %9, %struct.rhlist_head** %4, align 8
  %10 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %11 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %10, i32 0, i32 2
  %12 = load %struct.rhashtable*, %struct.rhashtable** %11, align 8
  store %struct.rhashtable* %12, %struct.rhashtable** %5, align 8
  %13 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %14 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %13, i32 0, i32 1
  %15 = load %struct.rhash_head*, %struct.rhash_head** %14, align 8
  store %struct.rhash_head* %15, %struct.rhash_head** %6, align 8
  %16 = load %struct.rhash_head*, %struct.rhash_head** %6, align 8
  %17 = icmp ne %struct.rhash_head* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.rhashtable*, %struct.rhashtable** %5, align 8
  %20 = load %struct.rhashtable*, %struct.rhashtable** %5, align 8
  %21 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.rhlist_head*, %struct.rhlist_head** %4, align 8
  %26 = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %25, i32 0, i32 0
  br label %29

27:                                               ; preds = %18
  %28 = load %struct.rhash_head*, %struct.rhash_head** %6, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi %struct.rhash_head* [ %26, %24 ], [ %28, %27 ]
  %31 = call i8* @rht_obj(%struct.rhashtable* %19, %struct.rhash_head* %30)
  store i8* %31, i8** %2, align 8
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %34 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %39 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %3, align 8
  %44 = call i8* @__rhashtable_walk_find_next(%struct.rhashtable_iter* %43)
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i8* @rht_obj(%struct.rhashtable*, %struct.rhash_head*) #1

declare dso_local i8* @__rhashtable_walk_find_next(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
