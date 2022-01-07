; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock_tap.c_vsock_add_tap.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock_tap.c_vsock_add_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsock_tap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ARPHRD_VSOCKMON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vsock_tap_lock = common dso_local global i32 0, align 4
@vsock_tap_all = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsock_add_tap(%struct.vsock_tap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsock_tap*, align 8
  store %struct.vsock_tap* %0, %struct.vsock_tap** %3, align 8
  %4 = load %struct.vsock_tap*, %struct.vsock_tap** %3, align 8
  %5 = getelementptr inbounds %struct.vsock_tap, %struct.vsock_tap* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ARPHRD_VSOCKMON, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.vsock_tap*, %struct.vsock_tap** %3, align 8
  %19 = getelementptr inbounds %struct.vsock_tap, %struct.vsock_tap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__module_get(i32 %20)
  %22 = call i32 @spin_lock(i32* @vsock_tap_lock)
  %23 = load %struct.vsock_tap*, %struct.vsock_tap** %3, align 8
  %24 = getelementptr inbounds %struct.vsock_tap, %struct.vsock_tap* %23, i32 0, i32 0
  %25 = call i32 @list_add_rcu(i32* %24, i32* @vsock_tap_all)
  %26 = call i32 @spin_unlock(i32* @vsock_tap_lock)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
