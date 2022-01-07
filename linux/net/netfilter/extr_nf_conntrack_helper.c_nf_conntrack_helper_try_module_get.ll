; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_try_module_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_conntrack_helper_try_module_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_helper*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8* %9, i32 %10, i32 %11)
  store %struct.nf_conntrack_helper* %12, %struct.nf_conntrack_helper** %7, align 8
  %13 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %7, align 8
  %14 = icmp ne %struct.nf_conntrack_helper* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %7, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @try_module_get(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %7, align 8
  br label %22

22:                                               ; preds = %21, %15, %3
  %23 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %7, align 8
  %24 = icmp ne %struct.nf_conntrack_helper* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %7, align 8
  %27 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %26, i32 0, i32 1
  %28 = call i32 @refcount_inc_not_zero(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %7, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @module_put(i32 %33)
  store %struct.nf_conntrack_helper* null, %struct.nf_conntrack_helper** %7, align 8
  br label %35

35:                                               ; preds = %30, %25, %22
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %7, align 8
  ret %struct.nf_conntrack_helper* %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8*, i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
