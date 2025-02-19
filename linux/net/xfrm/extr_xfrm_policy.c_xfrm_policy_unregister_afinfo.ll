; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_unregister_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_unregister_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy_afinfo = type { %struct.dst_ops* }
%struct.dst_ops = type { i32*, i32*, i32*, i32* }

@xfrm_policy_afinfo = common dso_local global %struct.xfrm_policy_afinfo** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_policy_unregister_afinfo(%struct.xfrm_policy_afinfo* %0) #0 {
  %2 = alloca %struct.xfrm_policy_afinfo*, align 8
  %3 = alloca %struct.dst_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.xfrm_policy_afinfo* %0, %struct.xfrm_policy_afinfo** %2, align 8
  %5 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %2, align 8
  %6 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %5, i32 0, i32 0
  %7 = load %struct.dst_ops*, %struct.dst_ops** %6, align 8
  store %struct.dst_ops* %7, %struct.dst_ops** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.xfrm_policy_afinfo**, %struct.xfrm_policy_afinfo*** @xfrm_policy_afinfo, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.xfrm_policy_afinfo** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.xfrm_policy_afinfo**, %struct.xfrm_policy_afinfo*** @xfrm_policy_afinfo, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %14, i64 %16
  %18 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %17, align 8
  %19 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %2, align 8
  %20 = icmp ne %struct.xfrm_policy_afinfo* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %29

22:                                               ; preds = %13
  %23 = load %struct.xfrm_policy_afinfo**, %struct.xfrm_policy_afinfo*** @xfrm_policy_afinfo, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %23, i64 %25
  %27 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %26, align 8
  %28 = call i32 @RCU_INIT_POINTER(%struct.xfrm_policy_afinfo* %27, i32* null)
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %22, %8
  %33 = call i32 (...) @synchronize_rcu()
  %34 = load %struct.dst_ops*, %struct.dst_ops** %3, align 8
  %35 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.dst_ops*, %struct.dst_ops** %3, align 8
  %37 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.dst_ops*, %struct.dst_ops** %3, align 8
  %39 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.dst_ops*, %struct.dst_ops** %3, align 8
  %41 = getelementptr inbounds %struct.dst_ops, %struct.dst_ops* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.xfrm_policy_afinfo**) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.xfrm_policy_afinfo*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
