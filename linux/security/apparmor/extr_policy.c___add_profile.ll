; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___add_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c___add_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.aa_profile = type { %struct.aa_label, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.aa_label = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.aa_profile*)* @__add_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__add_profile(%struct.list_head* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca %struct.aa_label*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %4, align 8
  %6 = load %struct.list_head*, %struct.list_head** %3, align 8
  %7 = icmp ne %struct.list_head* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @AA_BUG(i32 %9)
  %11 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %12 = icmp ne %struct.aa_profile* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %17 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %24 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @mutex_is_locked(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @AA_BUG(i32 %30)
  %32 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %33 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.list_head*, %struct.list_head** %3, align 8
  %36 = call i32 @list_add_rcu(i32* %34, %struct.list_head* %35)
  %37 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %38 = call i32 @aa_get_profile(%struct.aa_profile* %37)
  %39 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %40 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %44 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %43, i32 0, i32 0
  %45 = call %struct.aa_label* @aa_label_insert(i32* %42, %struct.aa_label* %44)
  store %struct.aa_label* %45, %struct.aa_label** %5, align 8
  %46 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %47 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %48 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %47, i32 0, i32 0
  %49 = icmp ne %struct.aa_label* %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @AA_BUG(i32 %50)
  %52 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %53 = call i32 @aa_put_label(%struct.aa_label* %52)
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, %struct.list_head*) #1

declare dso_local i32 @aa_get_profile(%struct.aa_profile*) #1

declare dso_local %struct.aa_label* @aa_label_insert(i32*, %struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
