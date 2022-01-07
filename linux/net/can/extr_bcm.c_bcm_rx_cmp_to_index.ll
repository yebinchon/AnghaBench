; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_cmp_to_index.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_cmp_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, i32, %struct.canfd_frame*, %struct.canfd_frame* }
%struct.canfd_frame = type { i32, i32 }

@RX_RECV = common dso_local global i32 0, align 4
@RX_CHECK_DLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*, i32, %struct.canfd_frame*)* @bcm_rx_cmp_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_cmp_to_index(%struct.bcm_op* %0, i32 %1, %struct.canfd_frame* %2) #0 {
  %4 = alloca %struct.bcm_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.canfd_frame*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca %struct.canfd_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.bcm_op* %0, %struct.bcm_op** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.canfd_frame* %2, %struct.canfd_frame** %6, align 8
  %10 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %10, i32 0, i32 3
  %12 = load %struct.canfd_frame*, %struct.canfd_frame** %11, align 8
  %13 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %14 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %12, i64 %18
  store %struct.canfd_frame* %19, %struct.canfd_frame** %7, align 8
  %20 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %20, i32 0, i32 2
  %22 = load %struct.canfd_frame*, %struct.canfd_frame** %21, align 8
  %23 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %22, i64 %28
  store %struct.canfd_frame* %29, %struct.canfd_frame** %8, align 8
  %30 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %31 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RX_RECV, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %38 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %39 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %40 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %37, %struct.canfd_frame* %38, %struct.canfd_frame* %39)
  br label %94

41:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %45 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @get_u64(%struct.canfd_frame* %49, i32 %50)
  %52 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @get_u64(%struct.canfd_frame* %52, i32 %53)
  %55 = and i32 %51, %54
  %56 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @get_u64(%struct.canfd_frame* %56, i32 %57)
  %59 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @get_u64(%struct.canfd_frame* %59, i32 %60)
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %55, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %66 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %67 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %68 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %65, %struct.canfd_frame* %66, %struct.canfd_frame* %67)
  br label %94

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 8
  store i32 %72, i32* %9, align 4
  br label %42

73:                                               ; preds = %42
  %74 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %75 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RX_CHECK_DLC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %82 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %85 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %90 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %91 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %92 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %89, %struct.canfd_frame* %90, %struct.canfd_frame* %91)
  br label %94

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %36, %64, %88, %93, %73
  ret void
}

declare dso_local i32 @bcm_rx_update_and_send(%struct.bcm_op*, %struct.canfd_frame*, %struct.canfd_frame*) #1

declare dso_local i32 @get_u64(%struct.canfd_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
