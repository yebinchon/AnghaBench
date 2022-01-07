; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_link_stream_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_link_stream_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_ext_stream = type { i64, %struct.hdac_stream }
%struct.hdac_stream = type { i32 }

@AZX_REG_PPLCCTL = common dso_local global i64 0, align 8
@AZX_PPLCCTL_STRM_MASK = common dso_local global i32 0, align 4
@AZX_PPLCCTL_STRM_SHIFT = common dso_local global i32 0, align 4
@AZX_REG_PPLCFMT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_ext_link_stream_setup(%struct.hdac_ext_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.hdac_ext_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.hdac_ext_stream* %0, %struct.hdac_ext_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %8 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %7, i32 0, i32 1
  store %struct.hdac_stream* %8, %struct.hdac_stream** %5, align 8
  %9 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %10 = call i32 @snd_hdac_ext_link_stream_clear(%struct.hdac_ext_stream* %9)
  %11 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %12 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AZX_REG_PPLCCTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AZX_PPLCCTL_STRM_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.hdac_stream*, %struct.hdac_stream** %5, align 8
  %22 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AZX_PPLCCTL_STRM_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %20, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %29 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AZX_REG_PPLCCTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %3, align 8
  %36 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AZX_REG_PPLCFMT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i32 %34, i64 %39)
  ret i32 0
}

declare dso_local i32 @snd_hdac_ext_link_stream_clear(%struct.hdac_ext_stream*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
