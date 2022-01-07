; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_unregister_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_unregister_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_afinfo = type { i32 }

@NPROTO = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@xfrm_state_afinfo_lock = common dso_local global i32 0, align 4
@xfrm_state_afinfo = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_unregister_afinfo(%struct.xfrm_state_afinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state_afinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xfrm_state_afinfo* %0, %struct.xfrm_state_afinfo** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %7 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NPROTO, align 4
  %11 = icmp sge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EAFNOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = call i32 @spin_lock_bh(i32* @xfrm_state_afinfo_lock)
  %20 = load i32**, i32*** @xfrm_state_afinfo, align 8
  %21 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %22 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %20, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %18
  %32 = load i32**, i32*** @xfrm_state_afinfo, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call %struct.xfrm_state_afinfo* @rcu_access_pointer(i32* %36)
  %38 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %39 = icmp ne %struct.xfrm_state_afinfo* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %31
  %44 = load i32**, i32*** @xfrm_state_afinfo, align 8
  %45 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %3, align 8
  %46 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %44, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @RCU_INIT_POINTER(i32* %50, i32* null)
  br label %52

52:                                               ; preds = %43, %40
  br label %53

53:                                               ; preds = %52, %18
  %54 = call i32 @spin_unlock_bh(i32* @xfrm_state_afinfo_lock)
  %55 = call i32 (...) @synchronize_rcu()
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.xfrm_state_afinfo* @rcu_access_pointer(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
