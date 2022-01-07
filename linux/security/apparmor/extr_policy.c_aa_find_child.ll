; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_find_child.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @aa_find_child(%struct.aa_profile* %0, i8* %1) #0 {
  %3 = alloca %struct.aa_profile*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %9 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.aa_profile* @__find_child(i32* %10, i8* %11)
  store %struct.aa_profile* %12, %struct.aa_profile** %5, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %15 = icmp ne %struct.aa_profile* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %18 = call i32 @aa_get_profile_not0(%struct.aa_profile* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %7, label %23

23:                                               ; preds = %21
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  ret %struct.aa_profile* %25
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.aa_profile* @__find_child(i32*, i8*) #1

declare dso_local i32 @aa_get_profile_not0(%struct.aa_profile*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
