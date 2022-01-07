; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_del_uncached_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_rt_del_uncached_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32, %struct.uncached_list* }
%struct.uncached_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_del_uncached_list(%struct.rtable* %0) #0 {
  %2 = alloca %struct.rtable*, align 8
  %3 = alloca %struct.uncached_list*, align 8
  store %struct.rtable* %0, %struct.rtable** %2, align 8
  %4 = load %struct.rtable*, %struct.rtable** %2, align 8
  %5 = getelementptr inbounds %struct.rtable, %struct.rtable* %4, i32 0, i32 0
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.rtable*, %struct.rtable** %2, align 8
  %10 = getelementptr inbounds %struct.rtable, %struct.rtable* %9, i32 0, i32 1
  %11 = load %struct.uncached_list*, %struct.uncached_list** %10, align 8
  store %struct.uncached_list* %11, %struct.uncached_list** %3, align 8
  %12 = load %struct.uncached_list*, %struct.uncached_list** %3, align 8
  %13 = getelementptr inbounds %struct.uncached_list, %struct.uncached_list* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.rtable*, %struct.rtable** %2, align 8
  %16 = getelementptr inbounds %struct.rtable, %struct.rtable* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.uncached_list*, %struct.uncached_list** %3, align 8
  %19 = getelementptr inbounds %struct.uncached_list, %struct.uncached_list* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  br label %21

21:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
