; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_calculate_differed_part.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_calculate_differed_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu_packet_format = type { i8* }

@V2_OPT_IFACE_MODE_ADAT = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_HAS_OPT_IFACE_A = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_HAS_OPT_IFACE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_motu_packet_format*, i32, i32, i32, i32)* @calculate_differed_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_differed_part(%struct.snd_motu_packet_format* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_motu_packet_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  store %struct.snd_motu_packet_format* %0, %struct.snd_motu_packet_format** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 2, i1 false)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %10, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @V2_OPT_IFACE_MODE_ADAT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SND_MOTU_SPEC_HAS_OPT_IFACE_A, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, 8
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  br label %37

37:                                               ; preds = %26, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SND_MOTU_SPEC_HAS_OPT_IFACE_B, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %5
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %6, align 8
  %53 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %51, i8* %55, align 1
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %6, align 8
  %59 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 %57, i8* %61, align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
