; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_calculate_fixed_part.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_calculate_fixed_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu_packet_format = type { i32, i8* }

@SND_MOTU_SPEC_SUPPORT_CLOCK_X4 = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_MICINST_CHUNK = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_RETURN_CHUNK = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_RX_SEPARETED_MAIN = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_HAS_AESEBU_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_motu_packet_format*, i32, i32, i8)* @calculate_fixed_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_fixed_part(%struct.snd_motu_packet_format* %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.snd_motu_packet_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [3 x i8], align 1
  store %struct.snd_motu_packet_format* %0, %struct.snd_motu_packet_format** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %10 = bitcast [3 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 3, i1 false)
  %11 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %12 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load i8, i8* %8, align 1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = load i8, i8* %8, align 1
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  store i8 %15, i8* %16, align 1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SND_MOTU_SPEC_SUPPORT_CLOCK_X4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8, i8* %8, align 1
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  store i8 %22, i8* %23, align 1
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SND_MOTU_SPEC_TX_MICINST_CHUNK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %36, 2
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, 2
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  br label %44

44:                                               ; preds = %33, %28
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SND_MOTU_SPEC_TX_RETURN_CHUNK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, 2
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %57, 2
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  br label %60

60:                                               ; preds = %49, %44
  br label %88

61:                                               ; preds = %24
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SND_MOTU_SPEC_RX_SEPARETED_MAIN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, 2
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  %72 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %74, 2
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  br label %77

77:                                               ; preds = %66, %61
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %80, 2
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %85, 2
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %83, align 1
  br label %88

88:                                               ; preds = %77, %60
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SND_MOTU_SPEC_HAS_AESEBU_IFACE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %96, 2
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 1
  %99 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %101, 2
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  br label %104

104:                                              ; preds = %93, %88
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %107, 2
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 1
  %110 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, 2
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %110, align 1
  %115 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %118 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %116, i8* %120, align 1
  %121 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %124 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %122, i8* %126, align 1
  %127 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %130 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8 %128, i8* %132, align 1
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
