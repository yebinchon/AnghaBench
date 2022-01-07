; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.h_smp_ltk_sec_level.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.h_smp_ltk_sec_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_ltk = type { i64 }

@BT_SECURITY_FIPS = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_ltk*)* @smp_ltk_sec_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_ltk_sec_level(%struct.smp_ltk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_ltk*, align 8
  store %struct.smp_ltk* %0, %struct.smp_ltk** %3, align 8
  %4 = load %struct.smp_ltk*, %struct.smp_ltk** %3, align 8
  %5 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.smp_ltk*, %struct.smp_ltk** %3, align 8
  %10 = call i64 @smp_ltk_is_sc(%struct.smp_ltk* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @BT_SECURITY_FIPS, align 4
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %8
  %15 = load i32, i32* @BT_SECURITY_HIGH, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %14, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @smp_ltk_is_sc(%struct.smp_ltk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
