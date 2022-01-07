; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_state_pol_flow_match.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_state_pol_flow_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xfrm_policy = type { i32 }
%struct.flowi = type { i64 }

@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__SENDTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_state_pol_flow_match(%struct.xfrm_state* %0, %struct.xfrm_policy* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_policy* %1, %struct.xfrm_policy** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %9 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %10 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %56

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %56

26:                                               ; preds = %20
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %28 = call i32 @selinux_authorizable_xfrm(%struct.xfrm_state* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %56

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.flowi*, %struct.flowi** %7, align 8
  %40 = getelementptr inbounds %struct.flowi, %struct.flowi* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %56

45:                                               ; preds = %33
  %46 = load %struct.flowi*, %struct.flowi** %7, align 8
  %47 = getelementptr inbounds %struct.flowi, %struct.flowi* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %51 = load i32, i32* @ASSOCIATION__SENDTO, align 4
  %52 = call i64 @avc_has_perm(i32* @selinux_state, i64 %48, i64 %49, i32 %50, i32 %51, i32* null)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %44, %30, %25, %19, %18
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @selinux_authorizable_xfrm(%struct.xfrm_state*) #1

declare dso_local i64 @avc_has_perm(i32*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
