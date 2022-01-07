; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_snd_tscm_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_snd_tscm_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i64, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tscm_stream_reserve_duplex(%struct.snd_tscm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tscm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %9 = call i32 @snd_tscm_stream_get_rate(%struct.snd_tscm* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %16 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %19, %14
  %24 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %24, i32 0, i32 5
  %26 = call i32 @amdtp_domain_stop(i32* %25)
  %27 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %28 = call i32 @finish_session(%struct.snd_tscm* %27)
  %29 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %30 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %29, i32 0, i32 1
  %31 = call i32 @fw_iso_resources_free(i32* %30)
  %32 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %33 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %32, i32 0, i32 4
  %34 = call i32 @fw_iso_resources_free(i32* %33)
  %35 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @INT_MAX, align 4
  %38 = call i32 @set_clock(%struct.snd_tscm* %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %68

43:                                               ; preds = %23
  %44 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %47 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %46, i32 0, i32 3
  %48 = call i32 @keep_resources(%struct.snd_tscm* %44, i32 %45, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %43
  %54 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %57 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %56, i32 0, i32 2
  %58 = call i32 @keep_resources(%struct.snd_tscm* %54, i32 %55, i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %63 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %62, i32 0, i32 1
  %64 = call i32 @fw_iso_resources_free(i32* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %19
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61, %51, %41, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @snd_tscm_stream_get_rate(%struct.snd_tscm*, i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_tscm*) #1

declare dso_local i32 @fw_iso_resources_free(i32*) #1

declare dso_local i32 @set_clock(%struct.snd_tscm*, i32, i32) #1

declare dso_local i32 @keep_resources(%struct.snd_tscm*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
