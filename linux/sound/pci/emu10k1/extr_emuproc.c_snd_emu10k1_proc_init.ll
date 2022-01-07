; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.snd_info_entry = type { i32, %struct.TYPE_4__, i32, %struct.snd_emu10k1*, i8* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"emu10k1\00", align 1
@snd_emu10k1_proc_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"spdif-in\00", align 1
@snd_emu10k1_proc_spdif_read = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"capture-rates\00", align 1
@snd_emu10k1_proc_rates_read = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"voices\00", align 1
@snd_emu10k1_proc_voices_read = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"fx8010_gpr\00", align 1
@SNDRV_INFO_CONTENT_DATA = common dso_local global i8* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@A_TOTAL_SIZE_GPR = common dso_local global i32 0, align 4
@TOTAL_SIZE_GPR = common dso_local global i32 0, align 4
@snd_emu10k1_proc_ops_fx8010 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"fx8010_tram_data\00", align 1
@A_TOTAL_SIZE_TANKMEM_DATA = common dso_local global i32 0, align 4
@TOTAL_SIZE_TANKMEM_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"fx8010_tram_addr\00", align 1
@A_TOTAL_SIZE_TANKMEM_ADDR = common dso_local global i32 0, align 4
@TOTAL_SIZE_TANKMEM_ADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"fx8010_code\00", align 1
@A_TOTAL_SIZE_CODE = common dso_local global i32 0, align 4
@TOTAL_SIZE_CODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"fx8010_acode\00", align 1
@snd_emu10k1_proc_acode_read = common dso_local global i32 0, align 4
@snd_emu_proc_emu1010_reg_read = common dso_local global i32 0, align 4
@snd_emu_proc_io_reg_read = common dso_local global i32 0, align 4
@snd_emu_proc_io_reg_write = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_read00a = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_read00b = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_read20a = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_read20b = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_read20c = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_write00 = common dso_local global i32 0, align 4
@snd_emu_proc_ptr_reg_write20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_proc_init(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %4 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %5 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %8 = load i32, i32* @snd_emu10k1_proc_read, align 4
  %9 = call i32 @snd_card_ro_proc_new(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.snd_emu10k1* %7, i32 %8)
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %21 = load i32, i32* @snd_emu10k1_proc_spdif_read, align 4
  %22 = call i32 @snd_card_ro_proc_new(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.snd_emu10k1* %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %35 = load i32, i32* @snd_emu10k1_proc_rates_read, align 4
  %36 = call i32 @snd_card_ro_proc_new(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.snd_emu10k1* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %42 = load i32, i32* @snd_emu10k1_proc_voices_read, align 4
  %43 = call i32 @snd_card_ro_proc_new(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.snd_emu10k1* %41, i32 %42)
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @snd_card_proc_new(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.snd_info_entry** %3)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %37
  %50 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %51 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %52 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %54 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %55 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %54, i32 0, i32 3
  store %struct.snd_emu10k1* %53, %struct.snd_emu10k1** %55, align 8
  %56 = load i32, i32* @S_IFREG, align 4
  %57 = or i32 %56, 292
  %58 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %59 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @A_TOTAL_SIZE_GPR, align 4
  br label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @TOTAL_SIZE_GPR, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %71 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %73 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32* @snd_emu10k1_proc_ops_fx8010, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %37
  %76 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @snd_card_proc_new(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %struct.snd_info_entry** %3)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %107, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %83 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %84 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %86 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %87 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %86, i32 0, i32 3
  store %struct.snd_emu10k1* %85, %struct.snd_emu10k1** %87, align 8
  %88 = load i32, i32* @S_IFREG, align 4
  %89 = or i32 %88, 292
  %90 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %91 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %93 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i32, i32* @A_TOTAL_SIZE_TANKMEM_DATA, align 4
  br label %100

98:                                               ; preds = %81
  %99 = load i32, i32* @TOTAL_SIZE_TANKMEM_DATA, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %103 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %105 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32* @snd_emu10k1_proc_ops_fx8010, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %75
  %108 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %109 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @snd_card_proc_new(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.snd_info_entry** %3)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %139, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %115 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %116 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %118 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %119 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %118, i32 0, i32 3
  store %struct.snd_emu10k1* %117, %struct.snd_emu10k1** %119, align 8
  %120 = load i32, i32* @S_IFREG, align 4
  %121 = or i32 %120, 292
  %122 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %123 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %125 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load i32, i32* @A_TOTAL_SIZE_TANKMEM_ADDR, align 4
  br label %132

130:                                              ; preds = %113
  %131 = load i32, i32* @TOTAL_SIZE_TANKMEM_ADDR, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %135 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %137 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32* @snd_emu10k1_proc_ops_fx8010, i32** %138, align 8
  br label %139

139:                                              ; preds = %132, %107
  %140 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %141 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @snd_card_proc_new(i32 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.snd_info_entry** %3)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %171, label %145

145:                                              ; preds = %139
  %146 = load i8*, i8** @SNDRV_INFO_CONTENT_DATA, align 8
  %147 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %148 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %150 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %151 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %150, i32 0, i32 3
  store %struct.snd_emu10k1* %149, %struct.snd_emu10k1** %151, align 8
  %152 = load i32, i32* @S_IFREG, align 4
  %153 = or i32 %152, 292
  %154 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %155 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %157 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %145
  %161 = load i32, i32* @A_TOTAL_SIZE_CODE, align 4
  br label %164

162:                                              ; preds = %145
  %163 = load i32, i32* @TOTAL_SIZE_CODE, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %167 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %169 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32* @snd_emu10k1_proc_ops_fx8010, i32** %170, align 8
  br label %171

171:                                              ; preds = %164, %139
  %172 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %173 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %176 = load i32, i32* @snd_emu10k1_proc_acode_read, align 4
  %177 = call i32 @snd_card_ro_proc_new(i32 %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.snd_emu10k1* %175, i32 %176)
  ret i32 0
}

declare dso_local i32 @snd_card_ro_proc_new(i32, i8*, %struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
