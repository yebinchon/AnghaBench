; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_update_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_tea6330t.c_snd_tea6330t_update_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_i2c_bus = type { i32 }
%struct.snd_i2c_device = type { i32, %struct.tea6330t* }
%struct.tea6330t = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.snd_i2c_bus*, %struct.snd_i2c_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"TEA6330T\00", align 1
@TEA6330T_ADDR = common dso_local global i32 0, align 4
@snd_tea6330_free = common dso_local global i32 0, align 4
@TEA6330T_SADDR_FADER = common dso_local global i64 0, align 8
@TEA6330T_EQN = common dso_local global i32 0, align 4
@TEA6330T_SADDR_AUDIO_SWITCH = common dso_local global i64 0, align 8
@TEA6330T_SADDR_BASS = common dso_local global i64 0, align 8
@TEA6330T_SADDR_TREBLE = common dso_local global i64 0, align 8
@TEA6330T_SADDR_VOLUME_LEFT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c",TEA6330T\00", align 1
@snd_tea6330t_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Tone Control - Treble\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tea6330t_update_mixer(%struct.snd_card* %0, %struct.snd_i2c_bus* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_i2c_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_i2c_device*, align 8
  %11 = alloca %struct.tea6330t*, align 8
  %12 = alloca %struct.snd_kcontrol_new*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [7 x i8], align 1
  store %struct.snd_card* %0, %struct.snd_card** %6, align 8
  store %struct.snd_i2c_bus* %1, %struct.snd_i2c_bus** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tea6330t* @kzalloc(i32 56, i32 %20)
  store %struct.tea6330t* %21, %struct.tea6330t** %11, align 8
  %22 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %23 = icmp eq %struct.tea6330t* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %194

27:                                               ; preds = %4
  %28 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %7, align 8
  %29 = load i32, i32* @TEA6330T_ADDR, align 4
  %30 = call i32 @snd_i2c_device_create(%struct.snd_i2c_bus* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29, %struct.snd_i2c_device** %10)
  store i32 %30, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %34 = call i32 @kfree(%struct.tea6330t* %33)
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %194

36:                                               ; preds = %27
  %37 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %38 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %39 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %38, i32 0, i32 10
  store %struct.snd_i2c_device* %37, %struct.snd_i2c_device** %39, align 8
  %40 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %7, align 8
  %41 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %42 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %41, i32 0, i32 9
  store %struct.snd_i2c_bus* %40, %struct.snd_i2c_bus** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %45 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %48 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %50 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %51 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %50, i32 0, i32 1
  store %struct.tea6330t* %49, %struct.tea6330t** %51, align 8
  %52 = load i32, i32* @snd_tea6330_free, align 4
  %53 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %54 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %7, align 8
  %56 = call i32 @snd_i2c_lock(%struct.snd_i2c_bus* %55)
  %57 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %58 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @TEA6330T_SADDR_FADER, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 63, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %36
  br label %67

65:                                               ; preds = %36
  %66 = load i32, i32* @TEA6330T_EQN, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  %69 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %70 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @TEA6330T_SADDR_AUDIO_SWITCH, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %75 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %67
  %79 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %80 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %79, i32 0, i32 3
  store i32 9, i32* %80, align 8
  %81 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %82 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %81, i32 0, i32 4
  store i32 8, i32* %82, align 4
  store i8* inttoptr (i64 7 to i8*), i8** %16, align 8
  %83 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %84 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %83, i32 0, i32 5
  store i32 4, i32* %84, align 8
  store i8* inttoptr (i64 7 to i8*), i8** %15, align 8
  %85 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %86 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %85, i32 0, i32 6
  store i32 4, i32* %86, align 4
  br label %96

87:                                               ; preds = %67
  %88 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %89 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %88, i32 0, i32 3
  store i32 5, i32* %89, align 8
  %90 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %91 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %90, i32 0, i32 4
  store i32 0, i32* %91, align 4
  store i8* inttoptr (i64 11 to i8*), i8** %16, align 8
  %92 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %93 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %92, i32 0, i32 5
  store i32 4, i32* %93, align 8
  store i8* inttoptr (i64 3 to i8*), i8** %15, align 8
  %94 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %95 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %94, i32 0, i32 6
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %78
  %97 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %98 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %97, i32 0, i32 8
  store i32 20, i32* %98, align 4
  %99 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %100 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %99, i32 0, i32 7
  store i32 20, i32* %100, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %104 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @TEA6330T_SADDR_BASS, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %111 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @TEA6330T_SADDR_TREBLE, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load i8, i8* @TEA6330T_SADDR_VOLUME_LEFT, align 1
  %116 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  store i8 %115, i8* %116, align 1
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %133, %96
  %118 = load i32, i32* %13, align 4
  %119 = icmp ult i32 %118, 6
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %122 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = trunc i32 %127 to i8
  %129 = load i32, i32* %13, align 4
  %130 = add i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 %131
  store i8 %128, i8* %132, align 1
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %117

136:                                              ; preds = %117
  %137 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %138 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %139 = call i32 @snd_i2c_sendbytes(%struct.snd_i2c_device* %137, i8* %138, i32 7)
  store i32 %139, i32* %14, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %188

142:                                              ; preds = %136
  %143 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %144 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @strcat(i32 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %147 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %148 = call i32 @snd_component_add(%struct.snd_card* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %148, i32* %14, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %188

151:                                              ; preds = %142
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %182, %151
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_tea6330t_controls, align 8
  %155 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %154)
  %156 = icmp ult i32 %153, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %152
  %158 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_tea6330t_controls, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %158, i64 %160
  store %struct.snd_kcontrol_new* %161, %struct.snd_kcontrol_new** %12, align 8
  %162 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %163 = getelementptr inbounds %struct.tea6330t, %struct.tea6330t* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %157
  %167 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %168 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @strcmp(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  br label %182

173:                                              ; preds = %166, %157
  %174 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %175 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %12, align 8
  %176 = load %struct.tea6330t*, %struct.tea6330t** %11, align 8
  %177 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %175, %struct.tea6330t* %176)
  %178 = call i32 @snd_ctl_add(%struct.snd_card* %174, i32 %177)
  store i32 %178, i32* %14, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %188

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %172
  %183 = load i32, i32* %13, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %152

185:                                              ; preds = %152
  %186 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %7, align 8
  %187 = call i32 @snd_i2c_unlock(%struct.snd_i2c_bus* %186)
  store i32 0, i32* %5, align 4
  br label %194

188:                                              ; preds = %180, %150, %141
  %189 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %7, align 8
  %190 = call i32 @snd_i2c_unlock(%struct.snd_i2c_bus* %189)
  %191 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %10, align 8
  %192 = call i32 @snd_i2c_device_free(%struct.snd_i2c_device* %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %188, %185, %32, %24
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.tea6330t* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_i2c_device_create(%struct.snd_i2c_bus*, i8*, i32, %struct.snd_i2c_device**) #1

declare dso_local i32 @kfree(%struct.tea6330t*) #1

declare dso_local i32 @snd_i2c_lock(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_sendbytes(%struct.snd_i2c_device*, i8*, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @snd_component_add(%struct.snd_card*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.tea6330t*) #1

declare dso_local i32 @snd_i2c_unlock(%struct.snd_i2c_bus*) #1

declare dso_local i32 @snd_i2c_device_free(%struct.snd_i2c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
