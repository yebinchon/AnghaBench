; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_resource.c_profile_setrlimit.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_resource.c_profile_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rlimit = type { i64 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i32, %struct.rlimit*)* @profile_setrlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_setrlimit(%struct.aa_profile* %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca %struct.aa_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rlimit*, align 8
  %7 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rlimit* %2, %struct.rlimit** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %9 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %21 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %19, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %16, %3
  %34 = load %struct.aa_profile*, %struct.aa_profile** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %37 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @audit_resource(%struct.aa_profile* %34, i32 %35, i64 %38, i32* null, i32* null, i32 %39)
  ret i32 %40
}

declare dso_local i32 @audit_resource(%struct.aa_profile*, i32, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
