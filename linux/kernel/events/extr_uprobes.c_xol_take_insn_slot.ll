; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_xol_take_insn_slot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_xol_take_insn_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xol_area = type { i32, i32, i32, i32 }

@UINSNS_PER_PAGE = common dso_local global i32 0, align 4
@UPROBE_XOL_SLOT_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xol_area*)* @xol_take_insn_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xol_take_insn_slot(%struct.xol_area* %0) #0 {
  %2 = alloca %struct.xol_area*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.xol_area* %0, %struct.xol_area** %2, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  %7 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @UINSNS_PER_PAGE, align 4
  %10 = call i32 @find_first_zero_bit(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @UINSNS_PER_PAGE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %5
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  %17 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_and_set_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %39

22:                                               ; preds = %14
  %23 = load i32, i32* @UINSNS_PER_PAGE, align 4
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %5
  %25 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  %26 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  %29 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %28, i32 0, i32 1
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load i32, i32* @UINSNS_PER_PAGE, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @wait_event(i32 %27, i32 %33)
  br label %35

35:                                               ; preds = %24, %22
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @UINSNS_PER_PAGE, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %5, label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  %41 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @UPROBE_XOL_SLOT_BYTES, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %3, align 8
  %48 = load %struct.xol_area*, %struct.xol_area** %2, align 8
  %49 = getelementptr inbounds %struct.xol_area, %struct.xol_area* %48, i32 0, i32 1
  %50 = call i32 @atomic_inc(i32* %49)
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
