; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___proxy_share.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___proxy_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { %struct.aa_proxy* }
%struct.aa_proxy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_label*, %struct.aa_label*)* @__proxy_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__proxy_share(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_proxy*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store %struct.aa_label* %1, %struct.aa_label** %4, align 8
  %6 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %7 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %6, i32 0, i32 0
  %8 = load %struct.aa_proxy*, %struct.aa_proxy** %7, align 8
  store %struct.aa_proxy* %8, %struct.aa_proxy** %5, align 8
  %9 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %10 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %9, i32 0, i32 0
  %11 = load %struct.aa_proxy*, %struct.aa_proxy** %10, align 8
  %12 = call %struct.aa_proxy* @aa_get_proxy(%struct.aa_proxy* %11)
  %13 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %14 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %13, i32 0, i32 0
  store %struct.aa_proxy* %12, %struct.aa_proxy** %14, align 8
  %15 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %16 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %17 = call i32 @__aa_proxy_redirect(%struct.aa_label* %15, %struct.aa_label* %16)
  %18 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  %19 = call i32 @aa_put_proxy(%struct.aa_proxy* %18)
  ret void
}

declare dso_local %struct.aa_proxy* @aa_get_proxy(%struct.aa_proxy*) #1

declare dso_local i32 @__aa_proxy_redirect(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @aa_put_proxy(%struct.aa_proxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
