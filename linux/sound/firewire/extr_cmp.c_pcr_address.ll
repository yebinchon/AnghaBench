; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_pcr_address.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_pcr_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i64, i32 }

@CMP_INPUT = common dso_local global i64 0, align 8
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cmp_connection*)* @pcr_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcr_address(%struct.cmp_connection* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cmp_connection*, align 8
  store %struct.cmp_connection* %0, %struct.cmp_connection** %3, align 8
  %4 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %5 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CMP_INPUT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %11 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %12 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @CSR_IPCR(i32 %13)
  %15 = add nsw i64 %10, %14
  store i64 %15, i64* %2, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %18 = load %struct.cmp_connection*, %struct.cmp_connection** %3, align 8
  %19 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @CSR_OPCR(i32 %20)
  %22 = add nsw i64 %17, %21
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %16, %9
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @CSR_IPCR(i32) #1

declare dso_local i64 @CSR_OPCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
