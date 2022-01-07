; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___labelset_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c___labelset_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, i32 }
%struct.aa_label = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_ns*)* @__labelset_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__labelset_update(%struct.aa_ns* %0) #0 {
  %2 = alloca %struct.aa_ns*, align 8
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %2, align 8
  %5 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %6 = icmp ne %struct.aa_ns* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @AA_BUG(i32 %8)
  %10 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %11 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %10, i32 0, i32 1
  %12 = call i32 @mutex_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  br label %17

17:                                               ; preds = %31, %1
  %18 = load %struct.aa_ns*, %struct.aa_ns** %2, align 8
  %19 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %18, i32 0, i32 0
  %20 = call %struct.aa_label* @labelset_next_stale(i32* %19)
  store %struct.aa_label* %20, %struct.aa_label** %3, align 8
  %21 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %22 = icmp ne %struct.aa_label* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %25 = call %struct.aa_label* @__label_update(%struct.aa_label* %24)
  store %struct.aa_label* %25, %struct.aa_label** %4, align 8
  %26 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %27 = call i32 @aa_put_label(%struct.aa_label* %26)
  %28 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %29 = call i32 @aa_put_label(%struct.aa_label* %28)
  br label %30

30:                                               ; preds = %23, %17
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %33 = icmp ne %struct.aa_label* %32, null
  br i1 %33, label %17, label %34

34:                                               ; preds = %31
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.aa_label* @labelset_next_stale(i32*) #1

declare dso_local %struct.aa_label* @__label_update(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
