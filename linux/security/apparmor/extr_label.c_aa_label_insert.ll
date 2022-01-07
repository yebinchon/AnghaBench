; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_insert.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_labelset = type { i32 }
%struct.aa_label = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @aa_label_insert(%struct.aa_labelset* %0, %struct.aa_label* %1) #0 {
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_labelset*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca i64, align 8
  store %struct.aa_labelset* %0, %struct.aa_labelset** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  %8 = load %struct.aa_labelset*, %struct.aa_labelset** %4, align 8
  %9 = icmp ne %struct.aa_labelset* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %14 = icmp ne %struct.aa_label* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %19 = call i32 @label_is_stale(%struct.aa_label* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %2
  %22 = load %struct.aa_labelset*, %struct.aa_labelset** %4, align 8
  %23 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @read_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %27 = call %struct.aa_label* @__label_find(%struct.aa_label* %26)
  store %struct.aa_label* %27, %struct.aa_label** %6, align 8
  %28 = load %struct.aa_labelset*, %struct.aa_labelset** %4, align 8
  %29 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @read_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %33 = icmp ne %struct.aa_label* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  store %struct.aa_label* %35, %struct.aa_label** %3, align 8
  br label %50

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.aa_labelset*, %struct.aa_labelset** %4, align 8
  %39 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @write_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.aa_labelset*, %struct.aa_labelset** %4, align 8
  %43 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %44 = call %struct.aa_label* @__label_insert(%struct.aa_labelset* %42, %struct.aa_label* %43, i32 0)
  store %struct.aa_label* %44, %struct.aa_label** %6, align 8
  %45 = load %struct.aa_labelset*, %struct.aa_labelset** %4, align 8
  %46 = getelementptr inbounds %struct.aa_labelset, %struct.aa_labelset* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @write_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  store %struct.aa_label* %49, %struct.aa_label** %3, align 8
  br label %50

50:                                               ; preds = %37, %34
  %51 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  ret %struct.aa_label* %51
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @label_is_stale(%struct.aa_label*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aa_label* @__label_find(%struct.aa_label*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aa_label* @__label_insert(%struct.aa_labelset*, %struct.aa_label*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
