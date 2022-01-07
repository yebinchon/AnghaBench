; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, %struct.amdtp_stream, i64, i32, %struct.cmp_connection, %struct.cmp_connection }
%struct.amdtp_stream = type { i32 }
%struct.cmp_connection = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@CMP_OUTPUT = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@CMP_INPUT = common dso_local global i32 0, align 4
@CIP_BLOCKING = common dso_local global i32 0, align 4
@CIP_EMPTY_HAS_WRONG_DBC = common dso_local global i32 0, align 4
@CIP_SKIP_DBC_ZERO_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*, %struct.amdtp_stream*)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_bebob* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_bebob*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmp_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %11 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %12 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %11, i32 0, i32 1
  %13 = icmp eq %struct.amdtp_stream* %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %17 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %16, i32 0, i32 5
  store %struct.cmp_connection* %17, %struct.cmp_connection** %7, align 8
  %18 = load i32, i32* @CMP_OUTPUT, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %22 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %21, i32 0, i32 4
  store %struct.cmp_connection* %22, %struct.cmp_connection** %7, align 8
  %23 = load i32, i32* @CMP_INPUT, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.cmp_connection*, %struct.cmp_connection** %7, align 8
  %26 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %27 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cmp_connection_init(%struct.cmp_connection* %25, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %82

35:                                               ; preds = %24
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %37 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %38 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CIP_BLOCKING, align 4
  %42 = call i32 @amdtp_am824_init(%struct.amdtp_stream* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.cmp_connection*, %struct.cmp_connection** %7, align 8
  %47 = call i32 @cmp_connection_destroy(%struct.cmp_connection* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %82

49:                                               ; preds = %35
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %51 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %52 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %51, i32 0, i32 1
  %53 = icmp eq %struct.amdtp_stream* %50, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %56 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* @CIP_EMPTY_HAS_WRONG_DBC, align 4
  %61 = load i32, i32* @CIP_SKIP_DBC_ZERO_CHECK, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %64 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %70 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* @CIP_EMPTY_HAS_WRONG_DBC, align 4
  %75 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %76 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %68
  br label %81

81:                                               ; preds = %80, %49
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %45, %33
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @cmp_connection_init(%struct.cmp_connection*, i32, i32, i32) #1

declare dso_local i32 @amdtp_am824_init(%struct.amdtp_stream*, i32, i32, i32) #1

declare dso_local i32 @cmp_connection_destroy(%struct.cmp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
