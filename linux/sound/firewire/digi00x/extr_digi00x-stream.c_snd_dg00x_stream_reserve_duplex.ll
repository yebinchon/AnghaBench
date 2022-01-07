; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_reserve_duplex(%struct.snd_dg00x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_dg00x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %9 = call i32 @snd_dg00x_stream_get_local_rate(%struct.snd_dg00x* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %21 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24, %19
  %29 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %30 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %29, i32 0, i32 5
  %31 = call i32 @amdtp_domain_stop(i32* %30)
  %32 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %33 = call i32 @finish_session(%struct.snd_dg00x* %32)
  %34 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %35 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %34, i32 0, i32 4
  %36 = call i32 @fw_iso_resources_free(i32* %35)
  %37 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %38 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %37, i32 0, i32 1
  %39 = call i32 @fw_iso_resources_free(i32* %38)
  %40 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @snd_dg00x_stream_set_local_rate(%struct.snd_dg00x* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %28
  %48 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %49 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %50 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %49, i32 0, i32 3
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @keep_resources(%struct.snd_dg00x* %48, i32* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %72

57:                                               ; preds = %47
  %58 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %59 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %60 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %59, i32 0, i32 2
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @keep_resources(%struct.snd_dg00x* %58, i32* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.snd_dg00x*, %struct.snd_dg00x** %4, align 8
  %67 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %66, i32 0, i32 1
  %68 = call i32 @fw_iso_resources_free(i32* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %24
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %65, %55, %45, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snd_dg00x_stream_get_local_rate(%struct.snd_dg00x*, i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_dg00x*) #1

declare dso_local i32 @fw_iso_resources_free(i32*) #1

declare dso_local i32 @snd_dg00x_stream_set_local_rate(%struct.snd_dg00x*, i32) #1

declare dso_local i32 @keep_resources(%struct.snd_dg00x*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
