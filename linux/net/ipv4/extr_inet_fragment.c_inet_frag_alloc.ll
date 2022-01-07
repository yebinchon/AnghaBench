; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32, %struct.fqdir* }
%struct.fqdir = type { i32 }
%struct.inet_frags = type { i32, i32, i32 (%struct.inet_frag_queue.0*, i8*)*, i32 }
%struct.inet_frag_queue.0 = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet_frag_queue* (%struct.fqdir*, %struct.inet_frags*, i8*)* @inet_frag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet_frag_queue* @inet_frag_alloc(%struct.fqdir* %0, %struct.inet_frags* %1, i8* %2) #0 {
  %4 = alloca %struct.inet_frag_queue*, align 8
  %5 = alloca %struct.fqdir*, align 8
  %6 = alloca %struct.inet_frags*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inet_frag_queue*, align 8
  store %struct.fqdir* %0, %struct.fqdir** %5, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %10 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.inet_frag_queue* @kmem_cache_zalloc(i32 %11, i32 %12)
  store %struct.inet_frag_queue* %13, %struct.inet_frag_queue** %8, align 8
  %14 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %15 = icmp ne %struct.inet_frag_queue* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %4, align 8
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.fqdir*, %struct.fqdir** %5, align 8
  %19 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %20 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %19, i32 0, i32 3
  store %struct.fqdir* %18, %struct.fqdir** %20, align 8
  %21 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %22 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %21, i32 0, i32 2
  %23 = load i32 (%struct.inet_frag_queue.0*, i8*)*, i32 (%struct.inet_frag_queue.0*, i8*)** %22, align 8
  %24 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %25 = bitcast %struct.inet_frag_queue* %24 to %struct.inet_frag_queue.0*
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 %23(%struct.inet_frag_queue.0* %25, i8* %26)
  %28 = load %struct.fqdir*, %struct.fqdir** %5, align 8
  %29 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %30 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @add_frag_mem_limit(%struct.fqdir* %28, i32 %31)
  %33 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %34 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %33, i32 0, i32 2
  %35 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %36 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @timer_setup(i32* %34, i32 %37, i32 0)
  %39 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %40 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %43 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %42, i32 0, i32 0
  %44 = call i32 @refcount_set(i32* %43, i32 3)
  %45 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  store %struct.inet_frag_queue* %45, %struct.inet_frag_queue** %4, align 8
  br label %46

46:                                               ; preds = %17, %16
  %47 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  ret %struct.inet_frag_queue* %47
}

declare dso_local %struct.inet_frag_queue* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @add_frag_mem_limit(%struct.fqdir*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
