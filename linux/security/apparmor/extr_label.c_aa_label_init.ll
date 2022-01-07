; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32, i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_init(%struct.aa_label* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %9 = icmp ne %struct.aa_label* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @aa_alloc_secid(%struct.aa_label* %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %25 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %27 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  %32 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %33 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %32, i32 0, i32 2
  %34 = call i32 @kref_init(i32* %33)
  %35 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %36 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %35, i32 0, i32 1
  %37 = call i32 @RB_CLEAR_NODE(i32* %36)
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @aa_alloc_secid(%struct.aa_label*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
