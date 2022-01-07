; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_canid.c_em_canid_sff_match_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_canid.c_em_canid_sff_match_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.canid_match = type { i32 }

@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_SFF_ID_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.canid_match*, i32, i32)* @em_canid_sff_match_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_canid_sff_match_add(%struct.canid_match* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.canid_match*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.canid_match* %0, %struct.canid_match** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @CAN_SFF_MASK, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CAN_SFF_MASK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.canid_match*, %struct.canid_match** %4, align 8
  %20 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_bit(i32 %18, i32 %21)
  br label %55

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.canid_match*, %struct.canid_match** %4, align 8
  %28 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CAN_SFF_ID_BITS, align 4
  %31 = shl i32 1, %30
  %32 = call i32 @bitmap_fill(i32 %29, i32 %31)
  br label %55

33:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CAN_SFF_ID_BITS, align 4
  %37 = shl i32 1, %36
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.canid_match*, %struct.canid_match** %4, align 8
  %48 = getelementptr inbounds %struct.canid_match, %struct.canid_match* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_bit(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %34

55:                                               ; preds = %17, %26, %34
  ret void
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
