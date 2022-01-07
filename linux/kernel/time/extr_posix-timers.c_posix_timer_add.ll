; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posix_timer_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-timers.c_posix_timer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.signal_struct* }
%struct.signal_struct = type { i32 }
%struct.hlist_head = type { i32 }
%struct.k_itimer = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@hash_lock = common dso_local global i32 0, align 4
@posix_timers_hashtable = common dso_local global %struct.hlist_head* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.k_itimer*)* @posix_timer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_timer_add(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  %3 = alloca %struct.signal_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hlist_head*, align 8
  %6 = alloca i32, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.signal_struct*, %struct.signal_struct** %8, align 8
  store %struct.signal_struct* %9, %struct.signal_struct** %3, align 8
  %10 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %11 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %64, %1
  %16 = call i32 @spin_lock(i32* @hash_lock)
  %17 = load %struct.hlist_head*, %struct.hlist_head** @posix_timers_hashtable, align 8
  %18 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %19 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %20 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @hash(%struct.signal_struct* %18, i32 %21)
  %23 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %17, i64 %22
  store %struct.hlist_head* %23, %struct.hlist_head** %5, align 8
  %24 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %25 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %26 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %27 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__posix_timers_find(%struct.hlist_head* %24, %struct.signal_struct* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %15
  %32 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %33 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %32, i32 0, i32 0
  %34 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %35 = call i32 @hlist_add_head_rcu(i32* %33, %struct.hlist_head* %34)
  %36 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %37 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %15
  %40 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %41 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %47 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %50 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %54, %48
  %63 = call i32 @spin_unlock(i32* @hash_lock)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %15, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @hash(%struct.signal_struct*, i32) #1

declare dso_local i32 @__posix_timers_find(%struct.hlist_head*, %struct.signal_struct*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
