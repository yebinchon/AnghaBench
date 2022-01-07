; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_merge.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_label* @aa_label_merge(%struct.aa_label* %0, %struct.aa_label* %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.aa_label* %1, %struct.aa_label** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.aa_label* null, %struct.aa_label** %8, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %11 = icmp ne %struct.aa_label* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %16 = icmp ne %struct.aa_label* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %21 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %22 = icmp eq %struct.aa_label* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %25 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %24)
  store %struct.aa_label* %25, %struct.aa_label** %4, align 8
  br label %61

26:                                               ; preds = %3
  %27 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %28 = icmp ne %struct.aa_label* %27, null
  br i1 %28, label %59, label %29

29:                                               ; preds = %26
  %30 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %31 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %30)
  store %struct.aa_label* %31, %struct.aa_label** %5, align 8
  %32 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %33 = call %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %32)
  store %struct.aa_label* %33, %struct.aa_label** %6, align 8
  %34 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %35 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %38 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.aa_label* @aa_label_alloc(i64 %40, i32* null, i32 %41)
  store %struct.aa_label* %42, %struct.aa_label** %9, align 8
  %43 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %44 = icmp ne %struct.aa_label* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %29
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %48 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %49 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %50 = call %struct.aa_label* @label_merge_insert(%struct.aa_label* %47, %struct.aa_label* %48, %struct.aa_label* %49)
  store %struct.aa_label* %50, %struct.aa_label** %8, align 8
  %51 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %52 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %53 = call i32 @label_free_or_put_new(%struct.aa_label* %51, %struct.aa_label* %52)
  br label %54

54:                                               ; preds = %46, %45
  %55 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %56 = call i32 @aa_put_label(%struct.aa_label* %55)
  %57 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %58 = call i32 @aa_put_label(%struct.aa_label* %57)
  br label %59

59:                                               ; preds = %54, %26
  %60 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  store %struct.aa_label* %60, %struct.aa_label** %4, align 8
  br label %61

61:                                               ; preds = %59, %23
  %62 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  ret %struct.aa_label* %62
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_label* @aa_get_newest_label(%struct.aa_label*) #1

declare dso_local %struct.aa_label* @aa_label_alloc(i64, i32*, i32) #1

declare dso_local %struct.aa_label* @label_merge_insert(%struct.aa_label*, %struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @label_free_or_put_new(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
