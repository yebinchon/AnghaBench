; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_valid_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_valid_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_tplg_hdr = type { i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"ASoC: invalid header size for type %d at offset 0x%lx size 0x%zx.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOC_TPLG_MAGIC_BIG_ENDIAN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"ASoC: pass %d big endian not supported header got %x at offset 0x%lx size 0x%zx.\0A\00", align 1
@SND_SOC_TPLG_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"ASoC: pass %d does not have a valid header got %x at offset 0x%lx size 0x%zx.\0A\00", align 1
@SND_SOC_TPLG_ABI_VERSION = common dso_local global i32 0, align 4
@SND_SOC_TPLG_ABI_VERSION_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [82 x i8] c"ASoC: pass %d invalid ABI version got 0x%x need 0x%x at offset 0x%lx size 0x%zx.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"ASoC: header has 0 size at offset 0x%lx.\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"ASoC: Got 0x%x bytes of type %d version %d vendor %d at pass %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_hdr*)* @soc_valid_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_valid_header(%struct.soc_tplg* %0, %struct.snd_soc_tplg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_hdr*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_hdr* %1, %struct.snd_soc_tplg_hdr** %5, align 8
  %6 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %7 = call i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg* %6)
  %8 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %9 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %172

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @le32_to_cpu(i64 %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 48
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %24 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @le32_to_cpu(i64 %28)
  %30 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %31 = call i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg* %30)
  %32 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %33 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %172

40:                                               ; preds = %15
  %41 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SOC_TPLG_MAGIC_BIG_ENDIAN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %48 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %51 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %57 = call i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg* %56)
  %58 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %59 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55, i32 %57, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %172

66:                                               ; preds = %40
  %67 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %68 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le32_to_cpu(i64 %69)
  %71 = load i32, i32* @SND_SOC_TPLG_MAGIC, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %75 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %78 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %81 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %84 = call i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg* %83)
  %85 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %86 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %79, i64 %82, i32 %84, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %172

93:                                               ; preds = %66
  %94 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = load i32, i32* @SND_SOC_TPLG_ABI_VERSION, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %102 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @le32_to_cpu(i64 %103)
  %105 = load i32, i32* @SND_SOC_TPLG_ABI_VERSION_MIN, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %100, %93
  %108 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %109 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %112 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %115 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @SND_SOC_TPLG_ABI_VERSION, align 4
  %118 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %119 = call i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg* %118)
  %120 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %121 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %113, i64 %116, i32 %117, i32 %119, i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %172

128:                                              ; preds = %100
  %129 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %130 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %135 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %138 = call i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg* %137)
  %139 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %172

142:                                              ; preds = %128
  %143 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %144 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %147 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @le32_to_cpu(i64 %148)
  %150 = icmp eq i32 %145, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %142
  %152 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %153 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %156 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %159 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %162 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.snd_soc_tplg_hdr*, %struct.snd_soc_tplg_hdr** %5, align 8
  %165 = getelementptr inbounds %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_hdr* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %168 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dev_dbg(i32 %154, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i64 %157, i64 %160, i32 %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %151, %142
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %133, %107, %73, %46, %22, %14
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @soc_tplg_get_hdr_offset(%struct.soc_tplg*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
