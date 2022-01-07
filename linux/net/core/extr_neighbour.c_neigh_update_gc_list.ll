; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_update_gc_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_update_gc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NUD_PERMANENT = common dso_local global i32 0, align 4
@NTF_EXT_LEARNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*)* @neigh_update_gc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_update_gc_list(%struct.neighbour* %0) #0 {
  %2 = alloca %struct.neighbour*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %2, align 8
  %5 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %6 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @write_lock_bh(i32* %8)
  %10 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %11 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %10, i32 0, i32 3
  %12 = call i32 @write_lock(i32* %11)
  %13 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %14 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NUD_PERMANENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NTF_EXT_LEARNED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %19, %1
  %27 = phi i1 [ true, %1 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %30 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %29, i32 0, i32 4
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %42 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %41, i32 0, i32 4
  %43 = call i32 @list_del_init(i32* %42)
  %44 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %45 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @atomic_dec(i32* %47)
  br label %69

49:                                               ; preds = %37, %26
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %57 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %56, i32 0, i32 4
  %58 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = call i32 @list_add_tail(i32* %57, i32* %61)
  %63 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %64 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @atomic_inc(i32* %66)
  br label %68

68:                                               ; preds = %55, %52, %49
  br label %69

69:                                               ; preds = %68, %40
  %70 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %71 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %70, i32 0, i32 3
  %72 = call i32 @write_unlock(i32* %71)
  %73 = load %struct.neighbour*, %struct.neighbour** %2, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @write_unlock_bh(i32* %76)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
