; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_dfa_free.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_dfa_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_dfa*)* @dfa_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfa_free(%struct.aa_dfa* %0) #0 {
  %2 = alloca %struct.aa_dfa*, align 8
  %3 = alloca i32, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %2, align 8
  %4 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %5 = icmp ne %struct.aa_dfa* %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %10 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32** %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %16 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kvfree(i32* %21)
  %23 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %24 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load %struct.aa_dfa*, %struct.aa_dfa** %2, align 8
  %34 = call i32 @kfree(%struct.aa_dfa* %33)
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @kfree(%struct.aa_dfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
