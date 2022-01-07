; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_X.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i32)* @unpack_X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_X(%struct.aa_ext* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %7 = call i32 @inbounds(%struct.aa_ext* %6, i32 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %12 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %24

19:                                               ; preds = %10
  %20 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %21 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %18, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @inbounds(%struct.aa_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
