; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_cache_packet_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_cache_packet_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@V2_IN_OUT_CONF_OFFSET = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@V2_OPT_IN_IFACE_MASK = common dso_local global i32 0, align 4
@V2_OPT_IN_IFACE_SHIFT = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@V2_OPT_OUT_IFACE_MASK = common dso_local global i32 0, align 4
@V2_OPT_OUT_IFACE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*)* @v2_cache_packet_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_cache_packet_formats(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %7 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %8 = load i32, i32* @V2_IN_OUT_CONF_OFFSET, align 4
  %9 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %7, i32 %8, i32* %4, i32 4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %18 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %17, i32 0, i32 1
  %19 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %20 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %21 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %26 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @calculate_fixed_part(%struct.TYPE_5__* %18, i32 %19, i32 %24, i32 %29)
  %31 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %32 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %31, i32 0, i32 1
  %33 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %34 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @V2_OPT_IN_IFACE_MASK, align 4
  %40 = load i32, i32* @V2_OPT_IN_IFACE_SHIFT, align 4
  %41 = call i32 @calculate_differed_part(%struct.TYPE_5__* %32, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %43 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %42, i32 0, i32 0
  %44 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %45 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %46 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %51 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @calculate_fixed_part(%struct.TYPE_5__* %43, i32 %44, i32 %49, i32 %54)
  %56 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %57 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %56, i32 0, i32 0
  %58 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %59 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @V2_OPT_OUT_IFACE_MASK, align 4
  %65 = load i32, i32* @V2_OPT_OUT_IFACE_SHIFT, align 4
  %66 = call i32 @calculate_differed_part(%struct.TYPE_5__* %57, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %68 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 10, i32* %69, align 4
  %70 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %71 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 10, i32* %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %14, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @calculate_fixed_part(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @calculate_differed_part(%struct.TYPE_5__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
