; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_profile_depth.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_profile_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*)* @profile_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_depth(%struct.aa_profile* %0) #0 {
  %2 = alloca %struct.aa_profile*, align 8
  %3 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %11, %1
  %6 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %7 = icmp ne %struct.aa_profile* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load %struct.aa_profile*, %struct.aa_profile** %2, align 8
  %13 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.aa_profile* @rcu_access_pointer(i32 %14)
  store %struct.aa_profile* %15, %struct.aa_profile** %2, align 8
  br label %5

16:                                               ; preds = %5
  %17 = call i32 (...) @rcu_read_unlock()
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.aa_profile* @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
