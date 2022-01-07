; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_nomem.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c_xas_nomem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XA_FLAGS_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@radix_tree_node_cachep = common dso_local global i32 0, align 4
@XAS_RESTART = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xas_nomem(%struct.xa_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xa_state*, align 8
  %5 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %7 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call i64 @XA_ERROR(i32 %10)
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %15 = call i32 @xas_destroy(%struct.xa_state* %14)
  store i32 0, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %18 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XA_FLAGS_ACCOUNT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @__GFP_ACCOUNT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* @radix_tree_node_cachep, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.TYPE_5__* @kmem_cache_alloc(i32 %30, i32 %31)
  %33 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %34 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %33, i32 0, i32 1
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %36 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %56

40:                                               ; preds = %29
  %41 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %42 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %45 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @list_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @XA_NODE_BUG_ON(%struct.TYPE_5__* %43, i32 %51)
  %53 = load i64, i64* @XAS_RESTART, align 8
  %54 = load %struct.xa_state*, %struct.xa_state** %4, align 8
  %55 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %40, %39, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @XA_ERROR(i32) #1

declare dso_local i32 @xas_destroy(%struct.xa_state*) #1

declare dso_local %struct.TYPE_5__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @XA_NODE_BUG_ON(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
