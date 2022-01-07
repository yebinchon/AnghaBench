; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_get_encap_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_get_encap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i64 }
%struct.lwtunnel_encap_ops = type { i32 (%struct.lwtunnel_state*)* }

@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@LWTUNNEL_ENCAP_MAX = common dso_local global i64 0, align 8
@lwtun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_get_encap_size(%struct.lwtunnel_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lwtunnel_state*, align 8
  %4 = alloca %struct.lwtunnel_encap_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %7 = icmp ne %struct.lwtunnel_state* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

9:                                                ; preds = %1
  %10 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %11 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %17 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LWTUNNEL_ENCAP_MAX, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9
  store i32 0, i32* %2, align 4
  br label %53

22:                                               ; preds = %15
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i32*, i32** @lwtun_encaps, align 8
  %25 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %26 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.lwtunnel_encap_ops* @rcu_dereference(i32 %29)
  store %struct.lwtunnel_encap_ops* %30, %struct.lwtunnel_encap_ops** %4, align 8
  %31 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %4, align 8
  %32 = icmp ne %struct.lwtunnel_encap_ops* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %4, align 8
  %35 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.lwtunnel_state*)*, i32 (%struct.lwtunnel_state*)** %35, align 8
  %37 = icmp ne i32 (%struct.lwtunnel_state*)* %36, null
  br label %38

38:                                               ; preds = %33, %22
  %39 = phi i1 [ false, %22 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %4, align 8
  %45 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.lwtunnel_state*)*, i32 (%struct.lwtunnel_state*)** %45, align 8
  %47 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %3, align 8
  %48 = call i32 %46(%struct.lwtunnel_state* %47)
  %49 = call i32 @nla_total_size(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %21, %8
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.lwtunnel_encap_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
