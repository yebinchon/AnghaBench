; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_prctl_drop.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_prctl_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@CAP_SETPCAP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @cap_prctl_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_prctl_drop(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.cred*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i32 (...) @current_user_ns()
  %6 = load i32, i32* @CAP_SETPCAP, align 4
  %7 = call i32 @ns_capable(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EPERM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @cap_valid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %12
  %20 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %20, %struct.cred** %4, align 8
  %21 = load %struct.cred*, %struct.cred** %4, align 8
  %22 = icmp ne %struct.cred* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load %struct.cred*, %struct.cred** %4, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @cap_lower(i32 %29, i64 %30)
  %32 = load %struct.cred*, %struct.cred** %4, align 8
  %33 = call i32 @commit_creds(%struct.cred* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %23, %16, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @cap_valid(i64) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @cap_lower(i32, i64) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
