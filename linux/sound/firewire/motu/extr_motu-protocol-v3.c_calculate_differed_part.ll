; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_calculate_differed_part.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_calculate_differed_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu_packet_format = type { i8* }

@SND_MOTU_SPEC_HAS_OPT_IFACE_A = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_HAS_OPT_IFACE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_motu_packet_format*, i32, i32, i32, i32, i32, i32)* @calculate_differed_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_differed_part(%struct.snd_motu_packet_format* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.snd_motu_packet_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.snd_motu_packet_format* %0, %struct.snd_motu_packet_format** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = bitcast [3 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 3, i1 false)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SND_MOTU_SPEC_HAS_OPT_IFACE_A, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, 4
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %33, align 1
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, 4
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  br label %54

43:                                               ; preds = %27
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, 8
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, 4
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %54

54:                                               ; preds = %43, %32
  br label %55

55:                                               ; preds = %54, %22, %7
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SND_MOTU_SPEC_HAS_OPT_IFACE_B, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %73, 4
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, 4
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  br label %92

81:                                               ; preds = %65
  %82 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %84, 8
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  %87 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  br label %92

92:                                               ; preds = %81, %70
  br label %93

93:                                               ; preds = %92, %60, %55
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %124, %93
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = call zeroext i8 @round_up(i8 zeroext %108, i32 4)
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %111
  store i8 %109, i8* %112, align 1
  br label %113

113:                                              ; preds = %104, %97
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %8, align 8
  %119 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 %117, i8* %123, align 1
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %94

127:                                              ; preds = %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local zeroext i8 @round_up(i8 zeroext, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
