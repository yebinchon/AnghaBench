; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_unregister_type_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_unregister_type_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_type_offload = type { i32 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_type_offload* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_unregister_type_offload(%struct.xfrm_type_offload* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.xfrm_type_offload*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xfrm_state_afinfo*, align 8
  store %struct.xfrm_type_offload* %0, %struct.xfrm_type_offload** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext %6)
  store %struct.xfrm_state_afinfo* %7, %struct.xfrm_state_afinfo** %5, align 8
  %8 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %5, align 8
  %9 = icmp eq %struct.xfrm_state_afinfo* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_type_offload, %struct.xfrm_type_offload* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
  ]

18:                                               ; preds = %14
  %19 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %5, align 8
  %20 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %19, i32 0, i32 0
  %21 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %20, align 8
  %22 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %3, align 8
  %23 = icmp ne %struct.xfrm_type_offload* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %5, align 8
  %27 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %26, i32 0, i32 0
  store %struct.xfrm_type_offload* null, %struct.xfrm_type_offload** %27, align 8
  br label %30

28:                                               ; preds = %14
  %29 = call i32 @WARN_ON(i32 1)
  br label %30

30:                                               ; preds = %28, %18
  %31 = call i32 (...) @rcu_read_unlock()
  br label %32

32:                                               ; preds = %30, %13
  ret void
}

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
