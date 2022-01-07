; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32 }
%struct.fqdir = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inet_frag_queue* @inet_frag_find(%struct.fqdir* %0, i8* %1) #0 {
  %3 = alloca %struct.inet_frag_queue*, align 8
  %4 = alloca %struct.fqdir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inet_frag_queue*, align 8
  %7 = alloca %struct.inet_frag_queue*, align 8
  store %struct.fqdir* %0, %struct.fqdir** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %6, align 8
  %8 = load %struct.fqdir*, %struct.fqdir** %4, align 8
  %9 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.fqdir*, %struct.fqdir** %4, align 8
  %14 = call i64 @frag_mem_limit(%struct.fqdir* %13)
  %15 = load %struct.fqdir*, %struct.fqdir** %4, align 8
  %16 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %3, align 8
  br label %52

20:                                               ; preds = %12
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.fqdir*, %struct.fqdir** %4, align 8
  %23 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %22, i32 0, i32 2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.fqdir*, %struct.fqdir** %4, align 8
  %26 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.inet_frag_queue* @rhashtable_lookup(i32* %23, i8* %24, i32 %29)
  store %struct.inet_frag_queue* %30, %struct.inet_frag_queue** %7, align 8
  %31 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %7, align 8
  %32 = icmp ne %struct.inet_frag_queue* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = load %struct.fqdir*, %struct.fqdir** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.inet_frag_queue* @inet_frag_create(%struct.fqdir* %34, i8* %35, %struct.inet_frag_queue** %7)
  store %struct.inet_frag_queue* %36, %struct.inet_frag_queue** %6, align 8
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %7, align 8
  %39 = call i32 @IS_ERR_OR_NULL(%struct.inet_frag_queue* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %7, align 8
  store %struct.inet_frag_queue* %42, %struct.inet_frag_queue** %6, align 8
  %43 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %44 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %43, i32 0, i32 0
  %45 = call i32 @refcount_inc_not_zero(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %6, align 8
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %37
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  store %struct.inet_frag_queue* %51, %struct.inet_frag_queue** %3, align 8
  br label %52

52:                                               ; preds = %49, %19
  %53 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  ret %struct.inet_frag_queue* %53
}

declare dso_local i64 @frag_mem_limit(%struct.fqdir*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet_frag_queue* @rhashtable_lookup(i32*, i8*, i32) #1

declare dso_local %struct.inet_frag_queue* @inet_frag_create(%struct.fqdir*, i8*, %struct.inet_frag_queue**) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.inet_frag_queue*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
