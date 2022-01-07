; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___remove_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___remove_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_profile*)* @__remove_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_profile(%struct.aa_profile* %0) #0 {
  %2 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %2, align 8
  %3 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %4 = icmp ne %struct.aa_profile* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @AA_BUG(i32 %6)
  %8 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %9 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %16 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %25 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @__aa_profile_list_release(i32* %26)
  %28 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %29 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %28, i32 0, i32 0
  %30 = call i32 @aa_label_remove(i32* %29)
  %31 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %32 = call i32 @__aafs_profile_rmdir(%struct.aa_profile* %31)
  %33 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %34 = call i32 @__list_remove_profile(%struct.aa_profile* %33)
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @__aa_profile_list_release(i32*) #1

declare dso_local i32 @aa_label_remove(i32*) #1

declare dso_local i32 @__aafs_profile_rmdir(%struct.aa_profile*) #1

declare dso_local i32 @__list_remove_profile(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
