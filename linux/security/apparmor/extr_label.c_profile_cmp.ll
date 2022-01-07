; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_profile_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_profile_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_profile*)* @profile_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_cmp(%struct.aa_profile* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %4, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %5, align 8
  %7 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %8 = icmp ne %struct.aa_profile* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @AA_BUG(i32 %10)
  %12 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %13 = icmp ne %struct.aa_profile* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %18 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @AA_BUG(i32 %22)
  %24 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %25 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @AA_BUG(i32 %29)
  %31 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %32 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @AA_BUG(i32 %37)
  %39 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %40 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @AA_BUG(i32 %45)
  %47 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %48 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %49 = icmp eq %struct.aa_profile* %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %2
  %51 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %52 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %56 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50, %2
  store i32 0, i32* %3, align 4
  br label %83

61:                                               ; preds = %50
  %62 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %63 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %66 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ns_cmp(i32 %64, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %75 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %79 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @strcmp(i64 %77, i64 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %71, %60
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @ns_cmp(i32, i32) #1

declare dso_local i32 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
