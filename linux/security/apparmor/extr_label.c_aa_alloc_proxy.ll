; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_alloc_proxy.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_alloc_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_proxy = type { i32, i32 }
%struct.aa_label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_proxy* @aa_alloc_proxy(%struct.aa_label* %0, i32 %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_proxy*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.aa_proxy* @kzalloc(i32 8, i32 %6)
  store %struct.aa_proxy* %7, %struct.aa_proxy** %5, align 8
  %8 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  %9 = icmp ne %struct.aa_proxy* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  %12 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %11, i32 0, i32 1
  %13 = call i32 @kref_init(i32* %12)
  %14 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  %15 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %18 = call i32 @aa_get_label(%struct.aa_label* %17)
  %19 = call i32 @rcu_assign_pointer(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %10, %2
  %21 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  ret %struct.aa_proxy* %21
}

declare dso_local %struct.aa_proxy* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @aa_get_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
