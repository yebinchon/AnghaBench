; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.module = type { i32 }
%struct.snd_card = type { i8*, i32, %struct.TYPE_4__, %struct.device*, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.module*, i32 }
%struct.TYPE_4__ = type { i32, i32**, i32, i32, %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_card_mutex = common dso_local global i32 0, align 4
@module_slot_match = common dso_local global i32 0, align 4
@check_empty_slot = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@snd_ecards_limit = common dso_local global i32 0, align 4
@snd_cards_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_CARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"cannot find the slot for index %d (range 0-%i), error: %d\0A\00", align 1
@sound_class = common dso_local global i32 0, align 4
@release_card_device = common dso_local global i32 0, align 4
@card_dev_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unable to register control minors\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to create card info\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_card_new(%struct.device* %0, i32 %1, i8* %2, %struct.module* %3, i32 %4, %struct.snd_card** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_card**, align 8
  %14 = alloca %struct.snd_card*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.module* %3, %struct.module** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.snd_card** %5, %struct.snd_card*** %13, align 8
  %16 = load %struct.snd_card**, %struct.snd_card*** %13, align 8
  %17 = icmp ne %struct.snd_card** %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %235

25:                                               ; preds = %6
  %26 = load %struct.snd_card**, %struct.snd_card*** %13, align 8
  store %struct.snd_card* null, %struct.snd_card** %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 128, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.snd_card* @kzalloc(i32 %34, i32 %35)
  store %struct.snd_card* %36, %struct.snd_card** %14, align 8
  %37 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %38 = icmp ne %struct.snd_card* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %235

42:                                               ; preds = %30
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %47 = bitcast %struct.snd_card* %46 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 128
  %49 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %50 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %56 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strlcpy(i32 %57, i8* %58, i32 4)
  br label %60

60:                                               ; preds = %54, %51
  store i32 0, i32* %15, align 4
  %61 = call i32 @mutex_lock(i32* @snd_card_mutex)
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @module_slot_match, align 4
  %67 = load %struct.module*, %struct.module** %11, align 8
  %68 = call i32 @get_slot_from_bitmask(i32 %65, i32 %66, %struct.module* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @check_empty_slot, align 4
  %75 = load %struct.module*, %struct.module** %11, align 8
  %76 = call i32 @get_slot_from_bitmask(i32 %73, i32 %74, %struct.module* %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %15, align 4
  br label %105

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @snd_ecards_limit, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @snd_cards_lock, align 4
  %90 = call i64 @test_bit(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %104

96:                                               ; preds = %83
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @SNDRV_CARDS, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %95
  br label %105

105:                                              ; preds = %104, %80
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = call i32 @mutex_unlock(i32* @snd_card_mutex)
  %110 = load %struct.device*, %struct.device** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @snd_ecards_limit, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %15, align 4
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %113, i32 %114)
  %116 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %117 = call i32 @kfree(%struct.snd_card* %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %7, align 4
  br label %235

119:                                              ; preds = %105
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @snd_cards_lock, align 4
  %122 = call i32 @set_bit(i32 %120, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @snd_ecards_limit, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @snd_ecards_limit, align 4
  br label %129

129:                                              ; preds = %126, %119
  %130 = call i32 @mutex_unlock(i32* @snd_card_mutex)
  %131 = load %struct.device*, %struct.device** %8, align 8
  %132 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %133 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %132, i32 0, i32 3
  store %struct.device* %131, %struct.device** %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %136 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.module*, %struct.module** %11, align 8
  %138 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %139 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %138, i32 0, i32 15
  store %struct.module* %137, %struct.module** %139, align 8
  %140 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %141 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %140, i32 0, i32 14
  %142 = call i32 @INIT_LIST_HEAD(i32* %141)
  %143 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %144 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %143, i32 0, i32 13
  %145 = call i32 @init_rwsem(i32* %144)
  %146 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %147 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %146, i32 0, i32 12
  %148 = call i32 @rwlock_init(i32* %147)
  %149 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %150 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %149, i32 0, i32 11
  %151 = call i32 @INIT_LIST_HEAD(i32* %150)
  %152 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %153 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %152, i32 0, i32 10
  %154 = call i32 @INIT_LIST_HEAD(i32* %153)
  %155 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %156 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %155, i32 0, i32 9
  %157 = call i32 @spin_lock_init(i32* %156)
  %158 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %159 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %158, i32 0, i32 8
  %160 = call i32 @INIT_LIST_HEAD(i32* %159)
  %161 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %162 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %161, i32 0, i32 6
  %163 = call i32 @init_waitqueue_head(i32* %162)
  %164 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %165 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %164, i32 0, i32 2
  %166 = call i32 @device_initialize(%struct.TYPE_4__* %165)
  %167 = load %struct.device*, %struct.device** %8, align 8
  %168 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %169 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 4
  store %struct.device* %167, %struct.device** %170, align 8
  %171 = load i32, i32* @sound_class, align 4
  %172 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %173 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* @release_card_device, align 4
  %176 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %177 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 8
  %179 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %180 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %179, i32 0, i32 5
  %181 = load i32**, i32*** %180, align 8
  %182 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %183 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store i32** %181, i32*** %184, align 8
  %185 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %186 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %185, i32 0, i32 5
  %187 = load i32**, i32*** %186, align 8
  %188 = getelementptr inbounds i32*, i32** %187, i64 0
  store i32* @card_dev_attr_group, i32** %188, align 8
  %189 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %190 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @kobject_set_name(i32* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %129
  br label %230

197:                                              ; preds = %129
  %198 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %199 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %202 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %201, i32 0, i32 3
  %203 = load %struct.device*, %struct.device** %202, align 8
  %204 = call i8* @dev_driver_string(%struct.device* %203)
  %205 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %206 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %205, i32 0, i32 2
  %207 = call i8* @dev_name(%struct.TYPE_4__* %206)
  %208 = call i32 @snprintf(i32 %200, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %204, i8* %207)
  %209 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %210 = call i32 @snd_ctl_create(%struct.snd_card* %209)
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %197
  %214 = load %struct.device*, %struct.device** %8, align 8
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %214, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %230

216:                                              ; preds = %197
  %217 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %218 = call i32 @snd_info_card_create(%struct.snd_card* %217)
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %15, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.device*, %struct.device** %8, align 8
  %223 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %222, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %227

224:                                              ; preds = %216
  %225 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %226 = load %struct.snd_card**, %struct.snd_card*** %13, align 8
  store %struct.snd_card* %225, %struct.snd_card** %226, align 8
  store i32 0, i32* %7, align 4
  br label %235

227:                                              ; preds = %221
  %228 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %229 = call i32 @snd_device_free_all(%struct.snd_card* %228)
  br label %230

230:                                              ; preds = %227, %213, %196
  %231 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %232 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %231, i32 0, i32 2
  %233 = call i32 @put_device(%struct.TYPE_4__* %232)
  %234 = load i32, i32* %15, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %230, %224, %108, %39, %22
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_card* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_slot_from_bitmask(i32, i32, %struct.module*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.snd_card*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_driver_string(%struct.device*) #1

declare dso_local i8* @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_ctl_create(%struct.snd_card*) #1

declare dso_local i32 @snd_info_card_create(%struct.snd_card*) #1

declare dso_local i32 @snd_device_free_all(%struct.snd_card*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
