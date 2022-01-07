; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.snd_soc_card*, %struct.snd_soc_dapm_context }
%struct.snd_soc_card = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_tplg_dapm_widget = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_6__, i32, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.snd_soc_dapm_widget = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.snd_soc_tplg_ctl_hdr = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ASoC: creating DAPM widget %s id %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ASoC: template %s has %d controls of type %x\0A\00", align 1
@SND_SOC_TPLG_TYPE_MIXER = common dso_local global i32 0, align 4
@SND_SOC_TPLG_TYPE_ENUM = common dso_local global i32 0, align 4
@SND_SOC_TPLG_TYPE_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ASoC: invalid widget control type %d:%d:%d\0A\00", align 1
@SND_SOC_DOBJ_WIDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_dapm_widget*)* @soc_tplg_dapm_widget_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_dapm_widget_create(%struct.soc_tplg* %0, %struct.snd_soc_tplg_dapm_widget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_soc_dapm_widget, align 8
  %8 = alloca %struct.snd_soc_dapm_widget*, align 8
  %9 = alloca %struct.snd_soc_tplg_ctl_hdr*, align 8
  %10 = alloca %struct.snd_soc_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_dapm_widget* %1, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %13 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %14 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  store %struct.snd_soc_dapm_context* %16, %struct.snd_soc_dapm_context** %6, align 8
  %17 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %18 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %20, align 8
  store %struct.snd_soc_card* %21, %struct.snd_soc_card** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %26 = call i64 @strnlen(i32 %24, i64 %25)
  %27 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %347

32:                                               ; preds = %2
  %33 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %34 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %37 = call i64 @strnlen(i32 %35, i64 %36)
  %38 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %347

43:                                               ; preds = %32
  %44 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %45 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52)
  %54 = call i32 @memset(%struct.snd_soc_dapm_widget* %7, i32 0, i32 88)
  %55 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %56 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le32_to_cpu(i64 %57)
  %59 = call i32 @get_widget_id(i32 %58)
  %60 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %3, align 4
  br label %347

67:                                               ; preds = %43
  %68 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %69 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kstrdup(i32 %70, i32 %71)
  %73 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 9
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 9
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %347

80:                                               ; preds = %67
  %81 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %82 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kstrdup(i32 %83, i32 %84)
  %86 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 10
  store i8* %85, i8** %86, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 10
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %342

93:                                               ; preds = %80
  %94 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %100 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @le32_to_cpu(i64 %101)
  %103 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %105 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @le32_to_cpu(i64 %106)
  %108 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 3
  store i32 %107, i32* %108, align 4
  %109 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %110 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le32_to_cpu(i64 %111)
  %113 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %115 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 1
  %120 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 5
  store i32 %119, i32* %120, align 4
  %121 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %122 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 6
  store i32 %126, i32* %127, align 8
  %128 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %129 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @le32_to_cpu(i64 %130)
  %132 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 7
  store i32 %131, i32* %132, align 4
  %133 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %134 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 13
  store i32 %136, i32* %137, align 8
  %138 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %139 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 11
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %144 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @le32_to_cpu(i64 %146)
  %148 = sext i32 %147 to i64
  %149 = add i64 96, %148
  %150 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %151 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 8
  %156 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %157 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  %161 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  store i32 0, i32* %161, align 8
  br label %264

162:                                              ; preds = %93
  %163 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %164 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to %struct.snd_soc_tplg_ctl_hdr*
  store %struct.snd_soc_tplg_ctl_hdr* %167, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %168 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %169 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %172 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %175 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %178 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, i32, i64, ...) @dev_dbg(i32 %170, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %173, i64 %176, i32 %179)
  %181 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %182 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @le32_to_cpu(i64 %184)
  switch i32 %185, label %243 [
    i32 134, label %186
    i32 135, label %186
    i32 133, label %186
    i32 132, label %186
    i32 136, label %186
    i32 128, label %186
    i32 138, label %205
    i32 137, label %205
    i32 131, label %205
    i32 129, label %205
    i32 130, label %205
    i32 139, label %224
  ]

186:                                              ; preds = %162, %162, %162, %162, %162, %162
  %187 = load i32, i32* @SND_SOC_TPLG_TYPE_MIXER, align 4
  store i32 %187, i32* %11, align 4
  %188 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %189 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @le32_to_cpu(i64 %190)
  %192 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  store i32 %191, i32* %192, align 8
  %193 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %194 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @soc_tplg_dapm_widget_dmixer_create(%struct.soc_tplg* %193, i32 %195)
  %197 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 12
  store i32 %196, i32* %197, align 4
  %198 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 12
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %186
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %12, align 4
  br label %338

204:                                              ; preds = %186
  br label %263

205:                                              ; preds = %162, %162, %162, %162, %162
  %206 = load i32, i32* @SND_SOC_TPLG_TYPE_ENUM, align 4
  store i32 %206, i32* %11, align 4
  %207 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %208 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @le32_to_cpu(i64 %209)
  %211 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  store i32 %210, i32* %211, align 8
  %212 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %213 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @soc_tplg_dapm_widget_denum_create(%struct.soc_tplg* %212, i32 %214)
  %216 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 12
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 12
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %205
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %12, align 4
  br label %338

223:                                              ; preds = %205
  br label %263

224:                                              ; preds = %162
  %225 = load i32, i32* @SND_SOC_TPLG_TYPE_BYTES, align 4
  store i32 %225, i32* %11, align 4
  %226 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %227 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @le32_to_cpu(i64 %228)
  %230 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  store i32 %229, i32* %230, align 8
  %231 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %232 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @soc_tplg_dapm_widget_dbytes_create(%struct.soc_tplg* %231, i32 %233)
  %235 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 12
  store i32 %234, i32* %235, align 4
  %236 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 12
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %224
  %240 = load i32, i32* @ENOMEM, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %12, align 4
  br label %338

242:                                              ; preds = %224
  br label %263

243:                                              ; preds = %162
  %244 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %245 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %248 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %252 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %9, align 8
  %256 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @le32_to_cpu(i64 %258)
  %260 = call i32 @dev_err(i32 %246, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %250, i32 %254, i32 %259)
  %261 = load i32, i32* @EINVAL, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %12, align 4
  br label %338

263:                                              ; preds = %242, %223, %204
  br label %264

264:                                              ; preds = %263, %160
  %265 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %266 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %267 = call i32 @soc_tplg_widget_load(%struct.soc_tplg* %265, %struct.snd_soc_dapm_widget* %7, %struct.snd_soc_tplg_dapm_widget* %266)
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %12, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  br label %338

271:                                              ; preds = %264
  %272 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  %273 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %278 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control(%struct.snd_soc_dapm_context* %277, %struct.snd_soc_dapm_widget* %7)
  store %struct.snd_soc_dapm_widget* %278, %struct.snd_soc_dapm_widget** %8, align 8
  br label %282

279:                                              ; preds = %271
  %280 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %281 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context* %280, %struct.snd_soc_dapm_widget* %7)
  store %struct.snd_soc_dapm_widget* %281, %struct.snd_soc_dapm_widget** %8, align 8
  br label %282

282:                                              ; preds = %279, %276
  %283 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %284 = call i64 @IS_ERR(%struct.snd_soc_dapm_widget* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %288 = call i32 @PTR_ERR(%struct.snd_soc_dapm_widget* %287)
  store i32 %288, i32* %12, align 4
  br label %338

289:                                              ; preds = %282
  %290 = load i32, i32* @SND_SOC_DOBJ_WIDGET, align 4
  %291 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %292 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %291, i32 0, i32 11
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 4
  store i32 %290, i32* %293, align 8
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %296 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %295, i32 0, i32 11
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  store i32 %294, i32* %298, align 4
  %299 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %300 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %303 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %302, i32 0, i32 11
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 2
  store i32 %301, i32* %304, align 8
  %305 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %306 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %309 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %308, i32 0, i32 11
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  store i32 %307, i32* %310, align 4
  %311 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %312 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %311, i32 0, i32 11
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %315 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %314, i32 0, i32 1
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 0
  %318 = call i32 @list_add(i32* %313, i32* %317)
  %319 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %320 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %321 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %5, align 8
  %322 = call i32 @soc_tplg_widget_ready(%struct.soc_tplg* %319, %struct.snd_soc_dapm_widget* %320, %struct.snd_soc_tplg_dapm_widget* %321)
  store i32 %322, i32* %12, align 4
  %323 = load i32, i32* %12, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %289
  br label %333

326:                                              ; preds = %289
  %327 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 10
  %328 = load i8*, i8** %327, align 8
  %329 = call i32 @kfree(i8* %328)
  %330 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 9
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @kfree(i8* %331)
  store i32 0, i32* %3, align 4
  br label %347

333:                                              ; preds = %325
  %334 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %335 = call i32 @snd_soc_tplg_widget_remove(%struct.snd_soc_dapm_widget* %334)
  %336 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %8, align 8
  %337 = call i32 @snd_soc_dapm_free_widget(%struct.snd_soc_dapm_widget* %336)
  br label %338

338:                                              ; preds = %333, %286, %270, %243, %239, %220, %201
  %339 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 10
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @kfree(i8* %340)
  br label %342

342:                                              ; preds = %338, %90
  %343 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %7, i32 0, i32 9
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @kfree(i8* %344)
  %346 = load i32, i32* %12, align 4
  store i32 %346, i32* %3, align 4
  br label %347

347:                                              ; preds = %342, %326, %77, %64, %40, %29
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @memset(%struct.snd_soc_dapm_widget*, i32, i32) #1

declare dso_local i32 @get_widget_id(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @soc_tplg_dapm_widget_dmixer_create(%struct.soc_tplg*, i32) #1

declare dso_local i32 @soc_tplg_dapm_widget_denum_create(%struct.soc_tplg*, i32) #1

declare dso_local i32 @soc_tplg_dapm_widget_dbytes_create(%struct.soc_tplg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @soc_tplg_widget_load(%struct.soc_tplg*, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*) #1

declare dso_local %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_widget*) #1

declare dso_local %struct.snd_soc_dapm_widget* @snd_soc_dapm_new_control_unlocked(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_widget*) #1

declare dso_local i64 @IS_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @PTR_ERR(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @soc_tplg_widget_ready(%struct.soc_tplg*, %struct.snd_soc_dapm_widget*, %struct.snd_soc_tplg_dapm_widget*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @snd_soc_tplg_widget_remove(%struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @snd_soc_dapm_free_widget(%struct.snd_soc_dapm_widget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
