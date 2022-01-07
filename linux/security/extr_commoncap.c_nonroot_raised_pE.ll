; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_nonroot_raised_pE.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_nonroot_raised_pE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@effective = common dso_local global i32 0, align 4
@ambient = common dso_local global i32 0, align 4
@permitted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32, i32)* @nonroot_raised_pE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonroot_raised_pE(%struct.cred* %0, %struct.cred* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @effective, align 4
  %11 = load i32, i32* @ambient, align 4
  %12 = load %struct.cred*, %struct.cred** %5, align 8
  %13 = call i64 @__cap_grew(i32 %10, i32 %11, %struct.cred* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load i32, i32* @effective, align 4
  %17 = load %struct.cred*, %struct.cred** %5, align 8
  %18 = call i64 @__cap_full(i32 %16, %struct.cred* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.cred*, %struct.cred** %5, align 8
  %23 = call i64 @__is_eff(i32 %21, %struct.cred* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.cred*, %struct.cred** %5, align 8
  %28 = call i64 @__is_real(i32 %26, %struct.cred* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %25, %20
  %31 = call i64 (...) @root_privileged()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %30, %4
  %34 = call i64 (...) @root_privileged()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cred*, %struct.cred** %5, align 8
  %39 = call i64 @__is_suid(i32 %37, %struct.cred* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @effective, align 4
  %43 = load %struct.cred*, %struct.cred** %5, align 8
  %44 = call i64 @__cap_full(i32 %42, %struct.cred* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41, %36, %33
  %47 = load %struct.cred*, %struct.cred** %5, align 8
  %48 = load %struct.cred*, %struct.cred** %6, align 8
  %49 = call i32 @__is_setuid(%struct.cred* %47, %struct.cred* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* @permitted, align 4
  %56 = load %struct.cred*, %struct.cred** %5, align 8
  %57 = load %struct.cred*, %struct.cred** %6, align 8
  %58 = call i64 @__cap_gained(i32 %55, %struct.cred* %56, %struct.cred* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* @ambient, align 4
  %62 = load %struct.cred*, %struct.cred** %5, align 8
  %63 = load %struct.cred*, %struct.cred** %6, align 8
  %64 = call i64 @__cap_gained(i32 %61, %struct.cred* %62, %struct.cred* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54, %41, %30, %25, %15
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %60, %46
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i64 @__cap_grew(i32, i32, %struct.cred*) #1

declare dso_local i64 @__cap_full(i32, %struct.cred*) #1

declare dso_local i64 @__is_eff(i32, %struct.cred*) #1

declare dso_local i64 @__is_real(i32, %struct.cred*) #1

declare dso_local i64 @root_privileged(...) #1

declare dso_local i64 @__is_suid(i32, %struct.cred*) #1

declare dso_local i32 @__is_setuid(%struct.cred*, %struct.cred*) #1

declare dso_local i64 @__cap_gained(i32, %struct.cred*, %struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
