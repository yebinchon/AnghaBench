; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bcm_op = type { i64, i32, i32, i32, %struct.canfd_frame*, i32, i32, i32, i32, i32 }
%struct.canfd_frame = type { i64 }

@RX_RTR_FRAME = common dso_local global i32 0, align 4
@RX_FILTER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @bcm_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_handler(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm_op*, align 8
  %6 = alloca %struct.canfd_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bcm_op*
  store %struct.bcm_op* %9, %struct.bcm_op** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.canfd_frame*
  store %struct.canfd_frame* %13, %struct.canfd_frame** %6, align 8
  %14 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %15 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %18 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %134

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %27 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %134

31:                                               ; preds = %22
  %32 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %33 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %32, i32 0, i32 9
  %34 = call i32 @hrtimer_cancel(i32* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %39 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %46 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %48 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %52 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RX_RTR_FRAME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %31
  %58 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %59 = call i32 @bcm_can_tx(%struct.bcm_op* %58)
  br label %134

60:                                               ; preds = %31
  %61 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %62 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RX_FILTER_ID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %69 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %70 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %73 = call i32 @bcm_rx_update_and_send(%struct.bcm_op* %68, i32 %71, %struct.canfd_frame* %72)
  br label %131

74:                                               ; preds = %60
  %75 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %76 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %81 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %82 = call i32 @bcm_rx_cmp_to_index(%struct.bcm_op* %80, i32 0, %struct.canfd_frame* %81)
  br label %131

83:                                               ; preds = %74
  %84 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %85 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %130

88:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %126, %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %92 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %89
  %96 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %97 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %96, i32 0, i32 4
  %98 = load %struct.canfd_frame*, %struct.canfd_frame** %97, align 8
  %99 = call i32 @get_u64(%struct.canfd_frame* %98, i32 0)
  %100 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %101 = call i32 @get_u64(%struct.canfd_frame* %100, i32 0)
  %102 = and i32 %99, %101
  %103 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %104 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %103, i32 0, i32 4
  %105 = load %struct.canfd_frame*, %struct.canfd_frame** %104, align 8
  %106 = call i32 @get_u64(%struct.canfd_frame* %105, i32 0)
  %107 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %108 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %107, i32 0, i32 4
  %109 = load %struct.canfd_frame*, %struct.canfd_frame** %108, align 8
  %110 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %111 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = mul i32 %112, %113
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %109, i64 %115
  %117 = call i32 @get_u64(%struct.canfd_frame* %116, i32 0)
  %118 = and i32 %106, %117
  %119 = icmp eq i32 %102, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %95
  %121 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %124 = call i32 @bcm_rx_cmp_to_index(%struct.bcm_op* %121, i32 %122, %struct.canfd_frame* %123)
  br label %129

125:                                              ; preds = %95
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %89

129:                                              ; preds = %120, %89
  br label %130

130:                                              ; preds = %129, %83
  br label %131

131:                                              ; preds = %130, %79, %67
  %132 = load %struct.bcm_op*, %struct.bcm_op** %5, align 8
  %133 = call i32 @bcm_rx_starttimer(%struct.bcm_op* %132)
  br label %134

134:                                              ; preds = %131, %57, %30, %21
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @bcm_can_tx(%struct.bcm_op*) #1

declare dso_local i32 @bcm_rx_update_and_send(%struct.bcm_op*, i32, %struct.canfd_frame*) #1

declare dso_local i32 @bcm_rx_cmp_to_index(%struct.bcm_op*, i32, %struct.canfd_frame*) #1

declare dso_local i32 @get_u64(%struct.canfd_frame*, i32) #1

declare dso_local i32 @bcm_rx_starttimer(%struct.bcm_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
