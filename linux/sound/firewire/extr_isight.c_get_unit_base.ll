; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_get_unit_base.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_get_unit_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fw_csr_iterator = type { i32 }

@CSR_OFFSET = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fw_unit*)* @get_unit_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_unit_base(%struct.fw_unit* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.fw_csr_iterator, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %7 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %8 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %4, i32 %9)
  br label %11

11:                                               ; preds = %24, %1
  %12 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %4, i32* %5, i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CSR_OFFSET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %2, align 8
  br label %26

24:                                               ; preds = %14
  br label %11

25:                                               ; preds = %11
  store i64 0, i64* %2, align 8
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
