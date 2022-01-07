; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-utils.c_snd_skl_parse_uuids.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-utils.c_snd_skl_parse_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32, %struct.skl_dev* }
%struct.skl_dev = type { i32 }
%struct.firmware = type { i8*, i32 }
%struct.adsp_fw_hdr = type { i32, i32 }
%struct.adsp_module_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uuid_module = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Small fw file size, No space for hdr\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Small fw file size, No module entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Small fw file size, No modules\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Adding uuid :%pUL   mod id: %d  Loadable: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_skl_parse_uuids(%struct.sst_dsp* %0, %struct.firmware* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_dsp*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adsp_fw_hdr*, align 8
  %11 = alloca %struct.adsp_module_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.skl_dev*, align 8
  %17 = alloca %struct.uuid_module*, align 8
  %18 = alloca %struct.firmware, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sst_dsp* %0, %struct.sst_dsp** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %22 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %21, i32 0, i32 1
  %23 = load %struct.skl_dev*, %struct.skl_dev** %22, align 8
  store %struct.skl_dev* %23, %struct.skl_dev** %16, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.firmware*, %struct.firmware** %7, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.firmware*, %struct.firmware** %7, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = call i32 @skl_dsp_strip_extended_manifest(%struct.firmware* %18)
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %15, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 8, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %19, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %4
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %45 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %193

50:                                               ; preds = %4
  %51 = load i8*, i8** %15, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = bitcast i8* %54 to %struct.adsp_fw_hdr*
  store %struct.adsp_fw_hdr* %55, %struct.adsp_fw_hdr** %10, align 8
  %56 = load %struct.adsp_fw_hdr*, %struct.adsp_fw_hdr** %10, align 8
  %57 = getelementptr inbounds %struct.adsp_fw_hdr, %struct.adsp_fw_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 12
  %61 = load i32, i32* %19, align 4
  %62 = zext i32 %61 to i64
  %63 = add i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %19, align 4
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %19, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %50
  %70 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %71 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %193

76:                                               ; preds = %50
  %77 = load i8*, i8** %15, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load %struct.adsp_fw_hdr*, %struct.adsp_fw_hdr** %10, align 8
  %82 = getelementptr inbounds %struct.adsp_fw_hdr, %struct.adsp_fw_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = bitcast i8* %85 to %struct.adsp_module_entry*
  store %struct.adsp_module_entry* %86, %struct.adsp_module_entry** %11, align 8
  %87 = load %struct.adsp_fw_hdr*, %struct.adsp_fw_hdr** %10, align 8
  %88 = getelementptr inbounds %struct.adsp_fw_hdr, %struct.adsp_fw_hdr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 12
  %93 = load i32, i32* %19, align 4
  %94 = zext i32 %93 to i64
  %95 = add i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %19, align 4
  %97 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %19, align 4
  %100 = icmp ule i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %76
  %102 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %103 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %193

108:                                              ; preds = %76
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %183, %108
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %188

113:                                              ; preds = %109
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call %struct.uuid_module* @kzalloc(i32 24, i32 %114)
  store %struct.uuid_module* %115, %struct.uuid_module** %17, align 8
  %116 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %117 = icmp ne %struct.uuid_module* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %20, align 4
  br label %189

121:                                              ; preds = %113
  %122 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %123 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %122, i32 0, i32 3
  %124 = load %struct.adsp_module_entry*, %struct.adsp_module_entry** %11, align 8
  %125 = getelementptr inbounds %struct.adsp_module_entry, %struct.adsp_module_entry* %124, i32 0, i32 2
  %126 = call i32 @guid_copy(i32* %123, i32* %125)
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = shl i32 %128, 12
  %130 = or i32 %127, %129
  %131 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %132 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.adsp_module_entry*, %struct.adsp_module_entry** %11, align 8
  %134 = getelementptr inbounds %struct.adsp_module_entry, %struct.adsp_module_entry* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %138 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.adsp_module_entry*, %struct.adsp_module_entry** %11, align 8
  %140 = getelementptr inbounds %struct.adsp_module_entry, %struct.adsp_module_entry* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %143 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.adsp_module_entry*, %struct.adsp_module_entry** %11, align 8
  %145 = getelementptr inbounds %struct.adsp_module_entry, %struct.adsp_module_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 4, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  %150 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %151 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i32 @devm_kzalloc(i32 %152, i32 %153, i32 %154)
  %156 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %157 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  %158 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %159 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %121
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %20, align 4
  br label %189

165:                                              ; preds = %121
  %166 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %167 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %166, i32 0, i32 4
  %168 = load %struct.skl_dev*, %struct.skl_dev** %16, align 8
  %169 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %168, i32 0, i32 0
  %170 = call i32 @list_add_tail(i32* %167, i32* %169)
  %171 = load %struct.sst_dsp*, %struct.sst_dsp** %6, align 8
  %172 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %175 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %174, i32 0, i32 3
  %176 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %177 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.uuid_module*, %struct.uuid_module** %17, align 8
  %180 = getelementptr inbounds %struct.uuid_module, %struct.uuid_module* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_dbg(i32 %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32* %175, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %165
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  %186 = load %struct.adsp_module_entry*, %struct.adsp_module_entry** %11, align 8
  %187 = getelementptr inbounds %struct.adsp_module_entry, %struct.adsp_module_entry* %186, i32 1
  store %struct.adsp_module_entry* %187, %struct.adsp_module_entry** %11, align 8
  br label %109

188:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %193

189:                                              ; preds = %162, %118
  %190 = load %struct.skl_dev*, %struct.skl_dev** %16, align 8
  %191 = call i32 @skl_freeup_uuid_list(%struct.skl_dev* %190)
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %188, %101, %69, %43
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @skl_dsp_strip_extended_manifest(%struct.firmware*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.uuid_module* @kzalloc(i32, i32) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local i32 @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @skl_freeup_uuid_list(%struct.skl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
