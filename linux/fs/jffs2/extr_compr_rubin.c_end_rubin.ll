; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_end_rubin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_end_rubin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i32, i32 }

@RUBIN_REG_SIZE = common dso_local global i32 0, align 4
@UPPER_BIT_RUBIN = common dso_local global i32 0, align 4
@LOWER_BITS_RUBIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rubin_state*)* @end_rubin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_rubin(%struct.rubin_state* %0) #0 {
  %2 = alloca %struct.rubin_state*, align 8
  %3 = alloca i32, align 4
  store %struct.rubin_state* %0, %struct.rubin_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RUBIN_REG_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load %struct.rubin_state*, %struct.rubin_state** %2, align 8
  %10 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %9, i32 0, i32 1
  %11 = load i32, i32* @UPPER_BIT_RUBIN, align 4
  %12 = load %struct.rubin_state*, %struct.rubin_state** %2, align 8
  %13 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = call i32 @pushbit(i32* %10, i32 %18, i32 1)
  %20 = load i32, i32* @LOWER_BITS_RUBIN, align 4
  %21 = load %struct.rubin_state*, %struct.rubin_state** %2, align 8
  %22 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rubin_state*, %struct.rubin_state** %2, align 8
  %26 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  ret void
}

declare dso_local i32 @pushbit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
