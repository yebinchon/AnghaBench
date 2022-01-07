; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_kill.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32, %struct.fqdir*, i32 }
%struct.fqdir = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@INET_FRAG_HASH_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frag_kill(%struct.inet_frag_queue* %0) #0 {
  %2 = alloca %struct.inet_frag_queue*, align 8
  %3 = alloca %struct.fqdir*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %2, align 8
  %4 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %5 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %4, i32 0, i32 4
  %6 = call i64 @del_timer(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %10 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %9, i32 0, i32 1
  %11 = call i32 @refcount_dec(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %14 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %12
  %20 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %21 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %20, i32 0, i32 3
  %22 = load %struct.fqdir*, %struct.fqdir** %21, align 8
  store %struct.fqdir* %22, %struct.fqdir** %3, align 8
  %23 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %24 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %25 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.fqdir*, %struct.fqdir** %3, align 8
  %30 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %19
  %34 = load %struct.fqdir*, %struct.fqdir** %3, align 8
  %35 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %34, i32 0, i32 1
  %36 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %37 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %36, i32 0, i32 2
  %38 = load %struct.fqdir*, %struct.fqdir** %3, align 8
  %39 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rhashtable_remove_fast(i32* %35, i32* %37, i32 %42)
  %44 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %45 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %44, i32 0, i32 1
  %46 = call i32 @refcount_dec(i32* %45)
  br label %53

47:                                               ; preds = %19
  %48 = load i32, i32* @INET_FRAG_HASH_DEAD, align 4
  %49 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %50 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %33
  %54 = call i32 (...) @rcu_read_unlock()
  br label %55

55:                                               ; preds = %53, %12
  ret void
}

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
