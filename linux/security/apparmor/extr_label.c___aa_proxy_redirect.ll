; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___aa_proxy_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___aa_proxy_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FLAG_STALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__aa_proxy_redirect(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store %struct.aa_label* %1, %struct.aa_label** %4, align 8
  %6 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %7 = icmp ne %struct.aa_label* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @AA_BUG(i32 %9)
  %11 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %12 = icmp ne %struct.aa_label* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %17 = call %struct.TYPE_5__* @labels_set(%struct.aa_label* %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @lockdep_assert_held_write(i32* %18)
  %20 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %21 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %26 = call %struct.TYPE_6__* @labels_ns(%struct.aa_label* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call %struct.aa_label* @rcu_dereference_protected(i32 %24, i32* %27)
  store %struct.aa_label* %28, %struct.aa_label** %5, align 8
  %29 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %30 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %35 = call i32 @aa_get_label(%struct.aa_label* %34)
  %36 = call i32 @rcu_assign_pointer(i32 %33, i32 %35)
  %37 = load i32, i32* @FLAG_STALE, align 4
  %38 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %39 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %43 = call i32 @aa_put_label(%struct.aa_label* %42)
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local %struct.TYPE_5__* @labels_set(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @rcu_dereference_protected(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @labels_ns(%struct.aa_label*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @aa_get_label(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
