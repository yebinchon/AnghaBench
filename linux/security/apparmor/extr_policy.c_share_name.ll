; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_share_name.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_share_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_profile*, %struct.aa_profile*)* @share_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @share_name(%struct.aa_profile* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca %struct.aa_profile*, align 8
  %4 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %3, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %4, align 8
  %5 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %6 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @aa_put_str(i32 %8)
  %10 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %11 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @aa_get_str(i32 %13)
  %15 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %16 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %20 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %27 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %30 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %34 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  ret void
}

declare dso_local i32 @aa_put_str(i32) #1

declare dso_local i32 @aa_get_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
