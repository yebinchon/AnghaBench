; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wmfw_parse_id_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wmfw_parse_id_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32, i8* }
%struct.wmfw_id_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Firmware: %x v%d.%d.%d, %d algorithms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm_adsp*, %struct.wmfw_id_hdr*, i32)* @wmfw_parse_id_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmfw_parse_id_header(%struct.wm_adsp* %0, %struct.wmfw_id_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.wm_adsp*, align 8
  %5 = alloca %struct.wmfw_id_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %4, align 8
  store %struct.wmfw_id_hdr* %1, %struct.wmfw_id_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wmfw_id_hdr*, %struct.wmfw_id_hdr** %5, align 8
  %8 = getelementptr inbounds %struct.wmfw_id_hdr, %struct.wmfw_id_hdr* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @be32_to_cpu(i32 %9)
  %11 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %12 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.wmfw_id_hdr*, %struct.wmfw_id_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.wmfw_id_hdr, %struct.wmfw_id_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @be32_to_cpu(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %19 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %21 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %22 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %25 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 16711680
  %28 = ashr i32 %27, 16
  %29 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %30 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 65280
  %33 = ashr i32 %32, 8
  %34 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %35 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 255
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @adsp_info(%struct.wm_adsp* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %28, i32 %33, i32 %37, i32 %38)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @adsp_info(%struct.wm_adsp*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
