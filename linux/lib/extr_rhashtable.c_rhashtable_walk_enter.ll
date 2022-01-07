; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_walk_enter.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rhashtable.c_rhashtable_walk_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32, i32 }
%struct.rhashtable_iter = type { %struct.TYPE_3__, i64, i64, i64, i32*, %struct.rhashtable* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rhashtable_walk_enter(%struct.rhashtable* %0, %struct.rhashtable_iter* %1) #0 {
  %3 = alloca %struct.rhashtable*, align 8
  %4 = alloca %struct.rhashtable_iter*, align 8
  store %struct.rhashtable* %0, %struct.rhashtable** %3, align 8
  store %struct.rhashtable_iter* %1, %struct.rhashtable_iter** %4, align 8
  %5 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %6 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %7 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %6, i32 0, i32 5
  store %struct.rhashtable* %5, %struct.rhashtable** %7, align 8
  %8 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %9 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %8, i32 0, i32 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %11 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %13 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %15 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %17 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %20 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %23 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %22, i32 0, i32 0
  %24 = call i32 @lockdep_is_held(i32* %23)
  %25 = call %struct.TYPE_4__* @rcu_dereference_protected(i32 %21, i32 %24)
  %26 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %27 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %30 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %33 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %31, i32* %36)
  %38 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  %39 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
