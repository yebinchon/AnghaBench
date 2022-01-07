; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_ltk_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_ltk_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_ltk = type { i32, i32 }

@MGMT_LTK_AUTHENTICATED = common dso_local global i32 0, align 4
@MGMT_LTK_UNAUTHENTICATED = common dso_local global i32 0, align 4
@MGMT_LTK_P256_AUTH = common dso_local global i32 0, align 4
@MGMT_LTK_P256_UNAUTH = common dso_local global i32 0, align 4
@MGMT_LTK_P256_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_ltk*)* @mgmt_ltk_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_ltk_type(%struct.smp_ltk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_ltk*, align 8
  store %struct.smp_ltk* %0, %struct.smp_ltk** %3, align 8
  %4 = load %struct.smp_ltk*, %struct.smp_ltk** %3, align 8
  %5 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %27 [
    i32 131, label %7
    i32 128, label %7
    i32 130, label %16
    i32 129, label %25
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.smp_ltk*, %struct.smp_ltk** %3, align 8
  %9 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @MGMT_LTK_AUTHENTICATED, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %7
  %15 = load i32, i32* @MGMT_LTK_UNAUTHENTICATED, align 4
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.smp_ltk*, %struct.smp_ltk** %3, align 8
  %18 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @MGMT_LTK_P256_AUTH, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %16
  %24 = load i32, i32* @MGMT_LTK_P256_UNAUTH, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @MGMT_LTK_P256_DEBUG, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @MGMT_LTK_UNAUTHENTICATED, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21, %14, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
