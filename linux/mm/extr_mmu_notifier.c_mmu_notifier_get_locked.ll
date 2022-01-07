; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c_mmu_notifier_get_locked.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmu_notifier.c_mmu_notifier_get_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { %struct.mmu_notifier_ops* }
%struct.mmu_notifier_ops = type { i32 (%struct.mmu_notifier.0*)*, %struct.mmu_notifier* (%struct.mm_struct*)* }
%struct.mmu_notifier.0 = type opaque
%struct.mm_struct = type opaque
%struct.mm_struct.1 = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mmu_notifier* @mmu_notifier_get_locked(%struct.mmu_notifier_ops* %0, %struct.mm_struct.1* %1) #0 {
  %3 = alloca %struct.mmu_notifier*, align 8
  %4 = alloca %struct.mmu_notifier_ops*, align 8
  %5 = alloca %struct.mm_struct.1*, align 8
  %6 = alloca %struct.mmu_notifier*, align 8
  %7 = alloca i32, align 4
  store %struct.mmu_notifier_ops* %0, %struct.mmu_notifier_ops** %4, align 8
  store %struct.mm_struct.1* %1, %struct.mm_struct.1** %5, align 8
  %8 = load %struct.mm_struct.1*, %struct.mm_struct.1** %5, align 8
  %9 = getelementptr inbounds %struct.mm_struct.1, %struct.mm_struct.1* %8, i32 0, i32 1
  %10 = call i32 @lockdep_assert_held_write(i32* %9)
  %11 = load %struct.mm_struct.1*, %struct.mm_struct.1** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct.1, %struct.mm_struct.1* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.mm_struct.1*, %struct.mm_struct.1** %5, align 8
  %17 = load %struct.mmu_notifier_ops*, %struct.mmu_notifier_ops** %4, align 8
  %18 = call %struct.mmu_notifier* @find_get_mmu_notifier(%struct.mm_struct.1* %16, %struct.mmu_notifier_ops* %17)
  store %struct.mmu_notifier* %18, %struct.mmu_notifier** %6, align 8
  %19 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  %20 = icmp ne %struct.mmu_notifier* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  store %struct.mmu_notifier* %22, %struct.mmu_notifier** %3, align 8
  br label %59

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.mmu_notifier_ops*, %struct.mmu_notifier_ops** %4, align 8
  %26 = getelementptr inbounds %struct.mmu_notifier_ops, %struct.mmu_notifier_ops* %25, i32 0, i32 1
  %27 = load %struct.mmu_notifier* (%struct.mm_struct*)*, %struct.mmu_notifier* (%struct.mm_struct*)** %26, align 8
  %28 = load %struct.mm_struct.1*, %struct.mm_struct.1** %5, align 8
  %29 = bitcast %struct.mm_struct.1* %28 to %struct.mm_struct*
  %30 = call %struct.mmu_notifier* %27(%struct.mm_struct* %29)
  store %struct.mmu_notifier* %30, %struct.mmu_notifier** %6, align 8
  %31 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  %32 = call i64 @IS_ERR(%struct.mmu_notifier* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  store %struct.mmu_notifier* %35, %struct.mmu_notifier** %3, align 8
  br label %59

36:                                               ; preds = %24
  %37 = load %struct.mmu_notifier_ops*, %struct.mmu_notifier_ops** %4, align 8
  %38 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  %39 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %38, i32 0, i32 0
  store %struct.mmu_notifier_ops* %37, %struct.mmu_notifier_ops** %39, align 8
  %40 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  %41 = load %struct.mm_struct.1*, %struct.mm_struct.1** %5, align 8
  %42 = call i32 @__mmu_notifier_register(%struct.mmu_notifier* %40, %struct.mm_struct.1* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %48

46:                                               ; preds = %36
  %47 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  store %struct.mmu_notifier* %47, %struct.mmu_notifier** %3, align 8
  br label %59

48:                                               ; preds = %45
  %49 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  %50 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %49, i32 0, i32 0
  %51 = load %struct.mmu_notifier_ops*, %struct.mmu_notifier_ops** %50, align 8
  %52 = getelementptr inbounds %struct.mmu_notifier_ops, %struct.mmu_notifier_ops* %51, i32 0, i32 0
  %53 = load i32 (%struct.mmu_notifier.0*)*, i32 (%struct.mmu_notifier.0*)** %52, align 8
  %54 = load %struct.mmu_notifier*, %struct.mmu_notifier** %6, align 8
  %55 = bitcast %struct.mmu_notifier* %54 to %struct.mmu_notifier.0*
  %56 = call i32 %53(%struct.mmu_notifier.0* %55)
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.mmu_notifier* @ERR_PTR(i32 %57)
  store %struct.mmu_notifier* %58, %struct.mmu_notifier** %3, align 8
  br label %59

59:                                               ; preds = %48, %46, %34, %21
  %60 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  ret %struct.mmu_notifier* %60
}

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local %struct.mmu_notifier* @find_get_mmu_notifier(%struct.mm_struct.1*, %struct.mmu_notifier_ops*) #1

declare dso_local i64 @IS_ERR(%struct.mmu_notifier*) #1

declare dso_local i32 @__mmu_notifier_register(%struct.mmu_notifier*, %struct.mm_struct.1*) #1

declare dso_local %struct.mmu_notifier* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
