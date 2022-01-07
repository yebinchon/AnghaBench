; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_multipath_first_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_multipath_first_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fib6_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_info* (%struct.fib6_info*)* @rt6_multipath_first_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_info* @rt6_multipath_first_sibling(%struct.fib6_info* %0) #0 {
  %2 = alloca %struct.fib6_info*, align 8
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %3, align 8
  %6 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %7 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %10 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @lockdep_is_held(i32* %12)
  %14 = call i8* @rcu_dereference_protected(i32 %8, i32 %13)
  %15 = bitcast i8* %14 to %struct.fib6_node*
  store %struct.fib6_node* %15, %struct.fib6_node** %5, align 8
  %16 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %17 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %20 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @lockdep_is_held(i32* %22)
  %24 = call i8* @rcu_dereference_protected(i32 %18, i32 %23)
  %25 = bitcast i8* %24 to %struct.fib6_info*
  store %struct.fib6_info* %25, %struct.fib6_info** %4, align 8
  br label %26

26:                                               ; preds = %43, %1
  %27 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %28 = icmp ne %struct.fib6_info* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %31 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %34 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %39 = call i64 @rt6_qualify_for_ecmp(%struct.fib6_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  store %struct.fib6_info* %42, %struct.fib6_info** %2, align 8
  br label %55

43:                                               ; preds = %37, %29
  %44 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  %45 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %48 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @lockdep_is_held(i32* %50)
  %52 = call i8* @rcu_dereference_protected(i32 %46, i32 %51)
  %53 = bitcast i8* %52 to %struct.fib6_info*
  store %struct.fib6_info* %53, %struct.fib6_info** %4, align 8
  br label %26

54:                                               ; preds = %26
  store %struct.fib6_info* null, %struct.fib6_info** %2, align 8
  br label %55

55:                                               ; preds = %54, %41
  %56 = load %struct.fib6_info*, %struct.fib6_info** %2, align 8
  ret %struct.fib6_info* %56
}

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @rt6_qualify_for_ecmp(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
