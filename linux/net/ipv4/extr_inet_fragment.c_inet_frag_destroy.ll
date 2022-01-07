; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32, %struct.fqdir*, i32 }
%struct.fqdir = type { %struct.inet_frags* }
%struct.inet_frags = type { i32 }

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@inet_frag_destroy_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frag_destroy(%struct.inet_frag_queue* %0) #0 {
  %2 = alloca %struct.inet_frag_queue*, align 8
  %3 = alloca %struct.fqdir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_frags*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %8 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %17 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %16, i32 0, i32 4
  %18 = call i64 @del_timer(i32* %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %23 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %22, i32 0, i32 3
  %24 = load %struct.fqdir*, %struct.fqdir** %23, align 8
  store %struct.fqdir* %24, %struct.fqdir** %3, align 8
  %25 = load %struct.fqdir*, %struct.fqdir** %3, align 8
  %26 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %25, i32 0, i32 0
  %27 = load %struct.inet_frags*, %struct.inet_frags** %26, align 8
  store %struct.inet_frags* %27, %struct.inet_frags** %6, align 8
  %28 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %29 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %28, i32 0, i32 2
  %30 = call i32 @inet_frag_rbtree_purge(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %33 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %2, align 8
  %37 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %36, i32 0, i32 1
  %38 = load i32, i32* @inet_frag_destroy_rcu, align 4
  %39 = call i32 @call_rcu(i32* %37, i32 %38)
  %40 = load %struct.fqdir*, %struct.fqdir** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sub_frag_mem_limit(%struct.fqdir* %40, i32 %41)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @inet_frag_rbtree_purge(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @sub_frag_mem_limit(%struct.fqdir*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
