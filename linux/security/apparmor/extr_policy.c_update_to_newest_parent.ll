; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_update_to_newest_parent.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_update_to_newest_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_profile* (%struct.aa_profile*)* @update_to_newest_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_profile* @update_to_newest_parent(%struct.aa_profile* %0) #0 {
  %2 = alloca %struct.aa_profile*, align 8
  %3 = alloca %struct.aa_profile*, align 8
  %4 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %2, align 8
  %5 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %6 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %9 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = call %struct.aa_profile* @rcu_dereference_protected(i32 %7, i32 %12)
  store %struct.aa_profile* %13, %struct.aa_profile** %3, align 8
  %14 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %15 = call %struct.aa_profile* @aa_get_newest_profile(%struct.aa_profile* %14)
  store %struct.aa_profile* %15, %struct.aa_profile** %4, align 8
  %16 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %17 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %18 = icmp ne %struct.aa_profile* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %21 = call i32 @aa_put_profile(%struct.aa_profile* %20)
  %22 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %26 = call i32 @rcu_assign_pointer(i32 %24, %struct.aa_profile* %25)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %29 = call i32 @aa_put_profile(%struct.aa_profile* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  ret %struct.aa_profile* %31
}

declare dso_local %struct.aa_profile* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.aa_profile* @aa_get_newest_profile(%struct.aa_profile*) #1

declare dso_local i32 @aa_put_profile(%struct.aa_profile*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
