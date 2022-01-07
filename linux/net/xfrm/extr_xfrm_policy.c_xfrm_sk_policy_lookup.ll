; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_sk_policy_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i32, i32* }
%struct.flowi = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.sock*, i32, %struct.flowi*, i32, i64)* @xfrm_sk_policy_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @xfrm_sk_policy_lookup(%struct.sock* %0, i32 %1, %struct.flowi* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flowi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfrm_policy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.flowi* %2, %struct.flowi** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = call i32 (...) @rcu_read_lock()
  br label %15

15:                                               ; preds = %77, %5
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.xfrm_policy* @rcu_dereference(i32 %22)
  store %struct.xfrm_policy* %23, %struct.xfrm_policy** %11, align 8
  %24 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %25 = icmp ne %struct.xfrm_policy* %24, null
  br i1 %25, label %26, label %92

26:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %28 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %11, align 8
  br label %93

33:                                               ; preds = %26
  %34 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %35 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %34, i32 0, i32 3
  %36 = load %struct.flowi*, %struct.flowi** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @xfrm_selector_match(i32* %35, %struct.flowi* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %33
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %46 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %44, %48
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %51 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %49, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %41
  %56 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %57 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %41
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %11, align 8
  br label %93

62:                                               ; preds = %55
  %63 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %64 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.flowi*, %struct.flowi** %8, align 8
  %67 = getelementptr inbounds %struct.flowi, %struct.flowi* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @security_xfrm_policy_lookup(i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %62
  %74 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %75 = call i32 @xfrm_pol_hold_rcu(%struct.xfrm_policy* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %15

78:                                               ; preds = %73
  br label %89

79:                                               ; preds = %62
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @ESRCH, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %11, align 8
  br label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = call %struct.xfrm_policy* @ERR_PTR(i32 %86)
  store %struct.xfrm_policy* %87, %struct.xfrm_policy** %11, align 8
  br label %88

88:                                               ; preds = %85, %84
  br label %89

89:                                               ; preds = %88, %78
  br label %91

90:                                               ; preds = %33
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %11, align 8
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %15
  br label %93

93:                                               ; preds = %92, %61, %32
  %94 = call i32 (...) @rcu_read_unlock()
  %95 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  ret %struct.xfrm_policy* %95
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_policy* @rcu_dereference(i32) #1

declare dso_local i32 @xfrm_selector_match(i32*, %struct.flowi*, i32) #1

declare dso_local i32 @security_xfrm_policy_lookup(i32, i32, i32) #1

declare dso_local i32 @xfrm_pol_hold_rcu(%struct.xfrm_policy*) #1

declare dso_local %struct.xfrm_policy* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
