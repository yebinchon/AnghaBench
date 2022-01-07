; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_labelset_of_merge.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_labelset_of_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_labelset = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_ns = type { %struct.aa_labelset }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_labelset* (%struct.aa_label*, %struct.aa_label*)* @labelset_of_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_labelset* @labelset_of_merge(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.aa_labelset*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  %8 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %9 = call %struct.aa_ns* @labels_ns(%struct.aa_label* %8)
  store %struct.aa_ns* %9, %struct.aa_ns** %6, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %11 = call %struct.aa_ns* @labels_ns(%struct.aa_label* %10)
  store %struct.aa_ns* %11, %struct.aa_ns** %7, align 8
  %12 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %13 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %14 = call i64 @ns_cmp(%struct.aa_ns* %12, %struct.aa_ns* %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %18 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %17, i32 0, i32 0
  store %struct.aa_labelset* %18, %struct.aa_labelset** %3, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %21 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %20, i32 0, i32 0
  store %struct.aa_labelset* %21, %struct.aa_labelset** %3, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.aa_labelset*, %struct.aa_labelset** %3, align 8
  ret %struct.aa_labelset* %23
}

declare dso_local %struct.aa_ns* @labels_ns(%struct.aa_label*) #1

declare dso_local i64 @ns_cmp(%struct.aa_ns*, %struct.aa_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
