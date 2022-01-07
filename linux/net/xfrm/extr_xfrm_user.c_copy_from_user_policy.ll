; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_from_user_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_copy_from_user_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_userpolicy_info = type { %struct.TYPE_2__, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, %struct.xfrm_userpolicy_info*)* @copy_from_user_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_from_user_policy(%struct.xfrm_policy* %0, %struct.xfrm_userpolicy_info* %1) #0 {
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca %struct.xfrm_userpolicy_info*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %3, align 8
  store %struct.xfrm_userpolicy_info* %1, %struct.xfrm_userpolicy_info** %4, align 8
  %5 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %6 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %11 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %15, i32 0, i32 4
  %17 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %17, i32 0, i32 0
  %19 = call i32 @memcpy(i32* %16, %struct.TYPE_2__* %18, i32 4)
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %20, i32 0, i32 3
  %22 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %22, i32 0, i32 3
  %24 = call i32 @memcpy(i32* %21, %struct.TYPE_2__* %23, i32 4)
  %25 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %26 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %31 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %4, align 8
  %36 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
