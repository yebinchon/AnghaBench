; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_unique.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"vec not sorted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile**, i32)* @unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unique(%struct.aa_profile** %0, i32 %1) #0 {
  %3 = alloca %struct.aa_profile**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aa_profile** %0, %struct.aa_profile*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, ...) @AA_BUG(i32 %11)
  %13 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %14 = icmp ne %struct.aa_profile** %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, ...) @AA_BUG(i32 %16)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %65, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %23, i64 %25
  %27 = load %struct.aa_profile*, %struct.aa_profile** %26, align 8
  %28 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %28, i64 %30
  %32 = load %struct.aa_profile*, %struct.aa_profile** %31, align 8
  %33 = call i32 @profile_cmp(%struct.aa_profile* %27, %struct.aa_profile* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, ...) @AA_BUG(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %22
  %41 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %41, i64 %43
  %45 = load %struct.aa_profile*, %struct.aa_profile** %44, align 8
  %46 = call i32 @aa_put_profile(%struct.aa_profile* %45)
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %65

49:                                               ; preds = %22
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %55, i64 %57
  %59 = load %struct.aa_profile*, %struct.aa_profile** %58, align 8
  %60 = load %struct.aa_profile**, %struct.aa_profile*** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.aa_profile*, %struct.aa_profile** %60, i64 %62
  store %struct.aa_profile* %59, %struct.aa_profile** %63, align 8
  br label %64

64:                                               ; preds = %54, %49
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %18

68:                                               ; preds = %18
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, ...) @AA_BUG(i32 %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @AA_BUG(i32, ...) #1

declare dso_local i32 @profile_cmp(%struct.aa_profile*, %struct.aa_profile*) #1

declare dso_local i32 @aa_put_profile(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
