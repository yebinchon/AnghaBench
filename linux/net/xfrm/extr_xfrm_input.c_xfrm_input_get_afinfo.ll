; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input_get_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input_get_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_input_afinfo = type { i32 }

@xfrm_input_afinfo = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_input_afinfo* (i32)* @xfrm_input_get_afinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_input_afinfo* @xfrm_input_get_afinfo(i32 %0) #0 {
  %2 = alloca %struct.xfrm_input_afinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_input_afinfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @xfrm_input_afinfo, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp uge i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON_ONCE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.xfrm_input_afinfo* null, %struct.xfrm_input_afinfo** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load i32*, i32** @xfrm_input_afinfo, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.xfrm_input_afinfo* @rcu_dereference(i32 %19)
  store %struct.xfrm_input_afinfo* %20, %struct.xfrm_input_afinfo** %4, align 8
  %21 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %4, align 8
  %22 = icmp ne %struct.xfrm_input_afinfo* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = call i32 (...) @rcu_read_unlock()
  br label %29

29:                                               ; preds = %27, %13
  %30 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %4, align 8
  store %struct.xfrm_input_afinfo* %30, %struct.xfrm_input_afinfo** %2, align 8
  br label %31

31:                                               ; preds = %29, %12
  %32 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %2, align 8
  ret %struct.xfrm_input_afinfo* %32
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_input_afinfo* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
