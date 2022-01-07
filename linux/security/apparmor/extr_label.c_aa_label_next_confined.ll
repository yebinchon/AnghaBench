; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_next_confined.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_next_confined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_next_confined(%struct.aa_label* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %7 = icmp ne %struct.aa_label* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @AA_BUG(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %18 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %23 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @profile_unconfined(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @profile_unconfined(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
