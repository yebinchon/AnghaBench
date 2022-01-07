; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c____xfrm_state_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c____xfrm_state_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.xfrm_state*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @___xfrm_state_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @___xfrm_state_destroy(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %3 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %4 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %3, i32 0, i32 11
  %5 = call i32 @hrtimer_cancel(i32* %4)
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 10
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kfree(i32 %11)
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @xfrm_put_type_offload(i64 %48)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.xfrm_state*)*, i32 (%struct.xfrm_state*)** %59, align 8
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %62 = call i32 %60(%struct.xfrm_state* %61)
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @xfrm_put_type(%struct.TYPE_2__* %65)
  br label %67

67:                                               ; preds = %55, %50
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %69 = call i32 @xfrm_dev_state_free(%struct.xfrm_state* %68)
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %71 = call i32 @security_xfrm_state_free(%struct.xfrm_state* %70)
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %73 = call i32 @xfrm_state_free(%struct.xfrm_state* %72)
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @xfrm_put_type_offload(i64) #1

declare dso_local i32 @xfrm_put_type(%struct.TYPE_2__*) #1

declare dso_local i32 @xfrm_dev_state_free(%struct.xfrm_state*) #1

declare dso_local i32 @security_xfrm_state_free(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_free(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
