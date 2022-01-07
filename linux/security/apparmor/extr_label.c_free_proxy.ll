; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_free_proxy.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_free_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_proxy = type { i32 }
%struct.aa_label = type { i32 }

@PROXY_POISON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_proxy*)* @free_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_proxy(%struct.aa_proxy* %0) #0 {
  %2 = alloca %struct.aa_proxy*, align 8
  store %struct.aa_proxy* %0, %struct.aa_proxy** %2, align 8
  %3 = load %struct.aa_proxy*, %struct.aa_proxy** %2, align 8
  %4 = icmp ne %struct.aa_proxy* %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load %struct.aa_proxy*, %struct.aa_proxy** %2, align 8
  %7 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rcu_dereference_protected(i32 %8, i32 1)
  %10 = call i32 @aa_put_label(i32 %9)
  %11 = load %struct.aa_proxy*, %struct.aa_proxy** %2, align 8
  %12 = call i32 @memset(%struct.aa_proxy* %11, i32 0, i32 4)
  %13 = load %struct.aa_proxy*, %struct.aa_proxy** %2, align 8
  %14 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @PROXY_POISON, align 8
  %17 = inttoptr i64 %16 to %struct.aa_label*
  %18 = call i32 @RCU_INIT_POINTER(i32 %15, %struct.aa_label* %17)
  %19 = load %struct.aa_proxy*, %struct.aa_proxy** %2, align 8
  %20 = call i32 @kfree(%struct.aa_proxy* %19)
  br label %21

21:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @aa_put_label(i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @memset(%struct.aa_proxy*, i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.aa_label*) #1

declare dso_local i32 @kfree(%struct.aa_proxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
