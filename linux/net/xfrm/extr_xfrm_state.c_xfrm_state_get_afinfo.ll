; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_get_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_get_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_afinfo = type { i32 }

@NPROTO = common dso_local global i32 0, align 4
@xfrm_state_afinfo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i32 %0) #0 {
  %2 = alloca %struct.xfrm_state_afinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state_afinfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NPROTO, align 4
  %7 = icmp uge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.xfrm_state_afinfo* null, %struct.xfrm_state_afinfo** %2, align 8
  br label %30

12:                                               ; preds = %1
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load i32*, i32** @xfrm_state_afinfo, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.xfrm_state_afinfo* @rcu_dereference(i32 %18)
  store %struct.xfrm_state_afinfo* %19, %struct.xfrm_state_afinfo** %4, align 8
  %20 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %4, align 8
  %21 = icmp ne %struct.xfrm_state_afinfo* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = call i32 (...) @rcu_read_unlock()
  br label %28

28:                                               ; preds = %26, %12
  %29 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %4, align 8
  store %struct.xfrm_state_afinfo* %29, %struct.xfrm_state_afinfo** %2, align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %2, align 8
  ret %struct.xfrm_state_afinfo* %31
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_state_afinfo* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
