; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { %struct.amdtp_stream, i64, i32, %struct.cmp_connection, %struct.cmp_connection }
%struct.amdtp_stream = type { i32 }
%struct.cmp_connection = type { i32 }

@CMP_OUTPUT = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@CMP_INPUT = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@CIP_NONBLOCKING = common dso_local global i32 0, align 4
@CIP_JUMBO_PAYLOAD = common dso_local global i32 0, align 4
@CIP_WRONG_DBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, %struct.amdtp_stream*)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_oxfw* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_oxfw*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.cmp_connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %11 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %12 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %11, i32 0, i32 0
  %13 = icmp eq %struct.amdtp_stream* %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %16 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %15, i32 0, i32 4
  store %struct.cmp_connection* %16, %struct.cmp_connection** %6, align 8
  %17 = load i32, i32* @CMP_OUTPUT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %21 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %20, i32 0, i32 3
  store %struct.cmp_connection* %21, %struct.cmp_connection** %6, align 8
  %22 = load i32, i32* @CMP_INPUT, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %26 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %27 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cmp_connection_init(%struct.cmp_connection* %25, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %24
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %37 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %38 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CIP_NONBLOCKING, align 4
  %42 = call i32 @amdtp_am824_init(%struct.amdtp_stream* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %47 = call i32 @cmp_connection_destroy(%struct.cmp_connection* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %35
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %51 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %52 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %51, i32 0, i32 0
  %53 = icmp eq %struct.amdtp_stream* %50, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load i32, i32* @CIP_JUMBO_PAYLOAD, align 4
  %56 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %57 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %62 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load i32, i32* @CIP_WRONG_DBS, align 4
  %67 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %68 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %54
  br label %73

73:                                               ; preds = %72, %49
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %45, %33
  %75 = load i32, i32* %3, align 4
  ret i32 %75
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
