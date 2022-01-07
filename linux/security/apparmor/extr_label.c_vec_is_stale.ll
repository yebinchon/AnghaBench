; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_is_stale.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_is_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile**, i32)* @vec_is_stale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vec_is_stale(%struct.aa_profile** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_profile**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aa_profile** %0, %struct.aa_profile*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %8 = icmp ne %struct.aa_profile** %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @AA_BUG(i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.aa_profile**, %struct.aa_profile*** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %17, i64 %19
  %21 = load %struct.aa_profile*, %struct.aa_profile** %20, align 8
  %22 = call i64 @profile_is_stale(%struct.aa_profile* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %30

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %12

29:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @profile_is_stale(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
