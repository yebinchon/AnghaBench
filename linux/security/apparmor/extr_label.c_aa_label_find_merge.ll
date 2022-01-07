; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_find_merge.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_find_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_labelset = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @aa_label_find_merge(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_labelset*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i64, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  store %struct.aa_label* %1, %struct.aa_label** %4, align 8
  store %struct.aa_label* null, %struct.aa_label** %7, align 8
  store %struct.aa_label* null, %struct.aa_label** %8, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %11 = icmp ne %struct.aa_label* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %16 = icmp ne %struct.aa_label* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %21 = call i64 @label_is_stale(%struct.aa_label* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %25 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %24)
  store %struct.aa_label* %25, %struct.aa_label** %7, align 8
  store %struct.aa_label* %25, %struct.aa_label** %3, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %28 = call i64 @label_is_stale(%struct.aa_label* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %32 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %31)
  store %struct.aa_label* %32, %struct.aa_label** %8, align 8
  store %struct.aa_label* %32, %struct.aa_label** %4, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %35 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %36 = call %struct.aa_labelset* @labelset_of_merge(%struct.aa_label* %34, %struct.aa_label* %35)
  store %struct.aa_labelset* %36, %struct.aa_labelset** %5, align 8
  %37 = load %struct.aa_labelset*, %struct.aa_labelset** %5, align 8
  %38 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %37, i32 0, i32 0
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @read_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.aa_labelset*, %struct.aa_labelset** %5, align 8
  %42 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %43 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %44 = call %struct.aa_label* @__label_find_merge(%struct.aa_labelset* %41, %struct.aa_label* %42, %struct.aa_label* %43)
  store %struct.aa_label* %44, %struct.aa_label** %6, align 8
  %45 = load %struct.aa_labelset*, %struct.aa_labelset** %5, align 8
  %46 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @read_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %50 = call i32 @aa_put_label(%struct.aa_label* %49)
  %51 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %52 = call i32 @aa_put_label(%struct.aa_label* %51)
  %53 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  ret %struct.aa_label* %53
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @label_is_stale(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local %struct.aa_labelset* @labelset_of_merge(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aa_label* @__label_find_merge(%struct.aa_labelset*, %struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
