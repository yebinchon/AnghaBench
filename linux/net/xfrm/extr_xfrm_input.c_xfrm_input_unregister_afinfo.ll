; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input_unregister_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input_unregister_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_input_afinfo = type { i64 }

@xfrm_input_afinfo_lock = common dso_local global i32 0, align 4
@xfrm_input_afinfo = common dso_local global %struct.xfrm_input_afinfo** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_input_unregister_afinfo(%struct.xfrm_input_afinfo* %0) #0 {
  %2 = alloca %struct.xfrm_input_afinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.xfrm_input_afinfo* %0, %struct.xfrm_input_afinfo** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @spin_lock_bh(i32* @xfrm_input_afinfo_lock)
  %5 = load %struct.xfrm_input_afinfo**, %struct.xfrm_input_afinfo*** @xfrm_input_afinfo, align 8
  %6 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %5, i64 %8
  %10 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %9, align 8
  %11 = icmp ne %struct.xfrm_input_afinfo* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.xfrm_input_afinfo**, %struct.xfrm_input_afinfo*** @xfrm_input_afinfo, align 8
  %17 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %2, align 8
  %18 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %16, i64 %19
  %21 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %20, align 8
  %22 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %2, align 8
  %23 = icmp ne %struct.xfrm_input_afinfo* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %15
  %31 = load %struct.xfrm_input_afinfo**, %struct.xfrm_input_afinfo*** @xfrm_input_afinfo, align 8
  %32 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %2, align 8
  %33 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %31, i64 %34
  %36 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %35, align 8
  %37 = call i32 @RCU_INIT_POINTER(%struct.xfrm_input_afinfo* %36, i32* null)
  br label %38

38:                                               ; preds = %30, %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = call i32 @spin_unlock_bh(i32* @xfrm_input_afinfo_lock)
  %41 = call i32 (...) @synchronize_rcu()
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.xfrm_input_afinfo*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
