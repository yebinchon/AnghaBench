; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frags_free_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frags_free_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32, i32 }

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@INET_FRAG_HASH_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @inet_frags_free_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet_frags_free_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.inet_frag_queue*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.inet_frag_queue*
  store %struct.inet_frag_queue* %8, %struct.inet_frag_queue** %5, align 8
  %9 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %10 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %9, i32 0, i32 3
  %11 = call i64 @del_timer_sync(i32* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %6, align 4
  %15 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %16 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %19 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %26 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %27 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %34 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @INET_FRAG_HASH_DEAD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %45 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %49 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %48, i32 0, i32 1
  %50 = call i64 @refcount_sub_and_test(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %5, align 8
  %54 = call i32 @inet_frag_destroy(%struct.inet_frag_queue* %53)
  br label %55

55:                                               ; preds = %52, %43
  ret void
}

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @refcount_sub_and_test(i32, i32*) #1

declare dso_local i32 @inet_frag_destroy(%struct.inet_frag_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
