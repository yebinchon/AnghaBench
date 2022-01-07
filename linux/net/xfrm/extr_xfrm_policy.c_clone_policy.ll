; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_clone_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_clone_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.xfrm_policy*, i32)* @clone_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @clone_policy(%struct.xfrm_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.net*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %9 = call %struct.net* @xp_net(%struct.xfrm_policy* %8)
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %9, i32 %10)
  store %struct.xfrm_policy* %11, %struct.xfrm_policy** %6, align 8
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %13 = call %struct.net* @xp_net(%struct.xfrm_policy* %12)
  store %struct.net* %13, %struct.net** %7, align 8
  %14 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %15 = icmp ne %struct.xfrm_policy* %14, null
  br i1 %15, label %16, label %109

16:                                               ; preds = %2
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %20, i32 0, i32 12
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %26 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %25, i32 0, i32 11
  %27 = call i64 @security_xfrm_policy_clone(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %31 = call i32 @kfree(%struct.xfrm_policy* %30)
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %3, align 8
  br label %111

32:                                               ; preds = %16
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %37 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %42 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %44 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %47 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %49 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %52 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %54 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %57 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %59 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %62 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %64 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %67 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %69 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %72 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %74 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %79 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %82 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %84 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %87 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %90 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32 %85, i32 %88, i32 %94)
  %96 = load %struct.net*, %struct.net** %7, align 8
  %97 = getelementptr inbounds %struct.net, %struct.net* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @spin_lock_bh(i32* %98)
  %100 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @xfrm_sk_policy_link(%struct.xfrm_policy* %100, i32 %101)
  %103 = load %struct.net*, %struct.net** %7, align 8
  %104 = getelementptr inbounds %struct.net, %struct.net* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_bh(i32* %105)
  %107 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %108 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %107)
  br label %109

109:                                              ; preds = %32, %2
  %110 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  store %struct.xfrm_policy* %110, %struct.xfrm_policy** %3, align 8
  br label %111

111:                                              ; preds = %109, %29
  %112 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  ret %struct.xfrm_policy* %112
}

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net*, i32) #1

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i64 @security_xfrm_policy_clone(i32, i32*) #1

declare dso_local i32 @kfree(%struct.xfrm_policy*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xfrm_sk_policy_link(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
