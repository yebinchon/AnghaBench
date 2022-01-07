; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_cblist_flush_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_cblist_flush_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_cblist = type { i64, i32, %struct.rcu_head**, %struct.rcu_head* }
%struct.rcu_head = type { %struct.rcu_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_cblist_flush_enqueue(%struct.rcu_cblist* %0, %struct.rcu_cblist* %1, %struct.rcu_head* %2) #0 {
  %4 = alloca %struct.rcu_cblist*, align 8
  %5 = alloca %struct.rcu_cblist*, align 8
  %6 = alloca %struct.rcu_head*, align 8
  store %struct.rcu_cblist* %0, %struct.rcu_cblist** %4, align 8
  store %struct.rcu_cblist* %1, %struct.rcu_cblist** %5, align 8
  store %struct.rcu_head* %2, %struct.rcu_head** %6, align 8
  %7 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %8 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %7, i32 0, i32 3
  %9 = load %struct.rcu_head*, %struct.rcu_head** %8, align 8
  %10 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %11 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %10, i32 0, i32 3
  store %struct.rcu_head* %9, %struct.rcu_head** %11, align 8
  %12 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %13 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %12, i32 0, i32 3
  %14 = load %struct.rcu_head*, %struct.rcu_head** %13, align 8
  %15 = icmp ne %struct.rcu_head* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %18 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %17, i32 0, i32 2
  %19 = load %struct.rcu_head**, %struct.rcu_head*** %18, align 8
  %20 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %21 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %20, i32 0, i32 2
  store %struct.rcu_head** %19, %struct.rcu_head*** %21, align 8
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %24 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %23, i32 0, i32 3
  %25 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %26 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %25, i32 0, i32 2
  store %struct.rcu_head** %24, %struct.rcu_head*** %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %29 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %32 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %34 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rcu_cblist*, %struct.rcu_cblist** %4, align 8
  %37 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %39 = icmp ne %struct.rcu_head* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %42 = call i32 @rcu_cblist_init(%struct.rcu_cblist* %41)
  br label %59

43:                                               ; preds = %27
  %44 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %45 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %44, i32 0, i32 0
  store %struct.rcu_head* null, %struct.rcu_head** %45, align 8
  %46 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %47 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %48 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %47, i32 0, i32 3
  store %struct.rcu_head* %46, %struct.rcu_head** %48, align 8
  %49 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  %50 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %49, i32 0, i32 0
  %51 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %52 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %51, i32 0, i32 2
  store %struct.rcu_head** %50, %struct.rcu_head*** %52, align 8
  %53 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %54 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @WRITE_ONCE(i32 %55, i32 1)
  %57 = load %struct.rcu_cblist*, %struct.rcu_cblist** %5, align 8
  %58 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @rcu_cblist_init(%struct.rcu_cblist*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
