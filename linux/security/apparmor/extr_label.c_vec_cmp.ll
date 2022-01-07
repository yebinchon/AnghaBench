; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_vec_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile**, i32, %struct.aa_profile**, i32)* @vec_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vec_cmp(%struct.aa_profile** %0, i32 %1, %struct.aa_profile** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_profile**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_profile**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aa_profile** %0, %struct.aa_profile*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.aa_profile** %2, %struct.aa_profile*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.aa_profile**, %struct.aa_profile*** %6, align 8
  %13 = icmp ne %struct.aa_profile** %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_profile**, %struct.aa_profile*** %6, align 8
  %18 = load %struct.aa_profile*, %struct.aa_profile** %17, align 8
  %19 = icmp ne %struct.aa_profile* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_profile**, %struct.aa_profile*** %8, align 8
  %24 = icmp ne %struct.aa_profile** %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @AA_BUG(i32 %26)
  %28 = load %struct.aa_profile**, %struct.aa_profile*** %8, align 8
  %29 = load %struct.aa_profile*, %struct.aa_profile** %28, align 8
  %30 = icmp ne %struct.aa_profile* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @AA_BUG(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @AA_BUG(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @AA_BUG(i32 %40)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %69, %4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i1 [ false, %42 ], [ %49, %46 ]
  br i1 %51, label %52, label %72

52:                                               ; preds = %50
  %53 = load %struct.aa_profile**, %struct.aa_profile*** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %53, i64 %55
  %57 = load %struct.aa_profile*, %struct.aa_profile** %56, align 8
  %58 = load %struct.aa_profile**, %struct.aa_profile*** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %58, i64 %60
  %62 = load %struct.aa_profile*, %struct.aa_profile** %61, align 8
  %63 = call i32 @profile_cmp(%struct.aa_profile* %57, %struct.aa_profile* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %76

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %42

72:                                               ; preds = %50
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @profile_cmp(%struct.aa_profile*, %struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
