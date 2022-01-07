; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_calculate_syt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_calculate_syt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@TICKS_PER_CYCLE = common dso_local global i32 0, align 4
@CIP_SYT_MASK = common dso_local global i32 0, align 4
@CIP_SYT_NO_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, i32)* @calculate_syt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_syt(%struct.amdtp_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %11 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TICKS_PER_CYCLE, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %2
  %18 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %19 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cip_sfc_is_base_44100(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %25 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %30 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %28, %33
  store i32 %34, i32* %6, align 4
  br label %73

35:                                               ; preds = %17
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %37 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = urem i32 %41, 13
  store i32 %42, i32* %8, align 4
  %43 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %44 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %35
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 146
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i1 [ true, %50 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 1386, %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = icmp uge i32 %64, 147
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %70 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %23
  br label %82

74:                                               ; preds = %2
  %75 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %76 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TICKS_PER_CYCLE, align 4
  %81 = sub i32 %79, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %74, %73
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %85 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @TICKS_PER_CYCLE, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %82
  %92 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %93 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @TICKS_PER_CYCLE, align 4
  %104 = udiv i32 %102, %103
  %105 = add i32 %101, %104
  %106 = shl i32 %105, 12
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @TICKS_PER_CYCLE, align 4
  %109 = urem i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @CIP_SYT_MASK, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %3, align 4
  br label %117

115:                                              ; preds = %82
  %116 = load i32, i32* @CIP_SYT_NO_INFO, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %91
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @cip_sfc_is_base_44100(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
