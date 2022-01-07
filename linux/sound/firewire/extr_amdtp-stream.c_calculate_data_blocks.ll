; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_calculate_data_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_calculate_data_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CIP_BLOCKING = common dso_local global i32 0, align 4
@CIP_SYT_NO_INFO = common dso_local global i32 0, align 4
@CIP_SFC_44100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, i32)* @calculate_data_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_data_blocks(%struct.amdtp_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.amdtp_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %8 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CIP_BLOCKING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CIP_SYT_NO_INFO, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %22

18:                                               ; preds = %13
  %19 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %20 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %17
  br label %86

23:                                               ; preds = %2
  %24 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %25 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cip_sfc_is_base_44100(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %31 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %85

35:                                               ; preds = %23
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %37 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %42 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CIP_SFC_44100, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 1
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = icmp uge i32 %52, 40
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i1 [ true, %46 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = xor i32 %48, %56
  %58 = add i32 5, %57
  store i32 %58, i32* %6, align 4
  br label %69

59:                                               ; preds = %35
  %60 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %61 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 1
  %64 = mul nsw i32 11, %63
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %59, %54
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %73 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  %76 = ashr i32 80, %75
  %77 = icmp uge i32 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %82 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %29
  br label %86

86:                                               ; preds = %85, %22
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @cip_sfc_is_base_44100(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
