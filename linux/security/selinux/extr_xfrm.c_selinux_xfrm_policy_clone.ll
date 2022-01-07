; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_policy_clone.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_policy_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_sec_ctx = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@selinux_xfrm_refcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_policy_clone(%struct.xfrm_sec_ctx* %0, %struct.xfrm_sec_ctx** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_sec_ctx*, align 8
  %5 = alloca %struct.xfrm_sec_ctx**, align 8
  %6 = alloca %struct.xfrm_sec_ctx*, align 8
  store %struct.xfrm_sec_ctx* %0, %struct.xfrm_sec_ctx** %4, align 8
  store %struct.xfrm_sec_ctx** %1, %struct.xfrm_sec_ctx*** %5, align 8
  %7 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %8 = icmp ne %struct.xfrm_sec_ctx* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %12 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 8, %14
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.xfrm_sec_ctx* @kmemdup(%struct.xfrm_sec_ctx* %11, i64 %15, i32 %16)
  store %struct.xfrm_sec_ctx* %17, %struct.xfrm_sec_ctx** %6, align 8
  %18 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %19 = icmp ne %struct.xfrm_sec_ctx* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %10
  %24 = call i32 @atomic_inc(i32* @selinux_xfrm_refcount)
  %25 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %26 = load %struct.xfrm_sec_ctx**, %struct.xfrm_sec_ctx*** %5, align 8
  store %struct.xfrm_sec_ctx* %25, %struct.xfrm_sec_ctx** %26, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %20, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.xfrm_sec_ctx* @kmemdup(%struct.xfrm_sec_ctx*, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
