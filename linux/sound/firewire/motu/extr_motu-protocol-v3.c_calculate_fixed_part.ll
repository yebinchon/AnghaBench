; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_calculate_fixed_part.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_calculate_fixed_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu_packet_format = type { i32, i8** }

@SND_MOTU_SPEC_SUPPORT_CLOCK_X4 = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_MICINST_CHUNK = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_RETURN_CHUNK = common dso_local global i32 0, align 4
@SND_MOTU_SPEC_TX_REVERB_CHUNK = common dso_local global i32 0, align 4
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
  br i1 %27, label %28, label %99

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SND_MOTU_SPEC_TX_MICINST_CHUNK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

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
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SND_MOTU_SPEC_SUPPORT_CLOCK_X4, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, 2
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %54

54:                                               ; preds = %48, %33
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SND_MOTU_SPEC_TX_RETURN_CHUNK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, 2
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %68, 2
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SND_MOTU_SPEC_SUPPORT_CLOCK_X4, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, 2
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  br label %81

81:                                               ; preds = %75, %60
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @SND_MOTU_SPEC_TX_REVERB_CHUNK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %90, 2
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %95, 2
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %93, align 1
  br label %98

98:                                               ; preds = %87, %82
  br label %126

99:                                               ; preds = %24
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SND_MOTU_SPEC_RX_SEPARETED_MAIN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
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
  br label %115

115:                                              ; preds = %104, %99
  %116 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, 2
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  %121 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, 2
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %121, align 1
  br label %126

126:                                              ; preds = %115, %98
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @SND_MOTU_SPEC_HAS_AESEBU_IFACE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %134, 2
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %132, align 1
  %137 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %139, 2
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %137, align 1
  br label %142

142:                                              ; preds = %131, %126
  %143 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = add nsw i32 %145, 2
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %150, 2
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 1
  %153 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 2, %155
  %157 = call i8* @round_up(i32 %156, i32 4)
  %158 = getelementptr i8, i8* %157, i64 -2
  %159 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %160 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  store i8* %158, i8** %162, align 8
  %163 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = add nsw i32 2, %165
  %167 = call i8* @round_up(i32 %166, i32 4)
  %168 = getelementptr i8, i8* %167, i64 -2
  %169 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %170 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 1
  store i8* %168, i8** %172, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @SND_MOTU_SPEC_SUPPORT_CLOCK_X4, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %142
  %178 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 2, %180
  %182 = call i8* @round_up(i32 %181, i32 4)
  %183 = getelementptr i8, i8* %182, i64 -2
  %184 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %5, align 8
  %185 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %184, i32 0, i32 1
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 2
  store i8* %183, i8** %187, align 8
  br label %188

188:                                              ; preds = %177, %142
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @round_up(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
