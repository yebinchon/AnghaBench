; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_delete_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_delete_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.xfrm_state*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_state_delete_tunnel(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %4, i32 0, i32 0
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %7 = icmp ne %struct.xfrm_state* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 0
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  store %struct.xfrm_state* %11, %struct.xfrm_state** %3, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 1
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = call i32 @xfrm_state_delete(%struct.xfrm_state* %17)
  br label %19

19:                                               ; preds = %16, %8
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 1
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %24 = call i32 @xfrm_state_put_sync(%struct.xfrm_state* %23)
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 0
  store %struct.xfrm_state* null, %struct.xfrm_state** %26, align 8
  br label %27

27:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @xfrm_state_put_sync(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
