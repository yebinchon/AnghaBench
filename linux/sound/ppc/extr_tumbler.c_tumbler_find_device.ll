; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_find_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_gpio = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"(W) cannot find audio device %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot find device %s\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"AAPL,address\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"(E) cannot find address for device %s !\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"cannot find address for device %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"audio-gpio-active-state\00", align 1
@IS_G4DA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"keywest-gpio1\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"(I) GPIO device %s found, offset: %x, active state: %d !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, %struct.pmac_gpio*, i32)* @tumbler_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tumbler_find_device(i8* %0, i8* %1, %struct.pmac_gpio* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pmac_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.pmac_gpio* %2, %struct.pmac_gpio** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.device_node* @find_compatible_audio_device(i8* %18)
  store %struct.device_node* %19, %struct.device_node** %10, align 8
  br label %23

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.device_node* @find_audio_device(i8* %21)
  store %struct.device_node* %22, %struct.device_node** %10, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, i8*, ...) @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @snd_printdd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i64, i64* @ENODEV, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %164

33:                                               ; preds = %23
  %34 = load %struct.device_node*, %struct.device_node** %10, align 8
  %35 = call i32* @of_get_property(%struct.device_node* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %33
  %39 = load %struct.device_node*, %struct.device_node** %10, align 8
  %40 = call i32* @of_get_property(%struct.device_node* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i8*, i8*, ...) @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @snd_printd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = load %struct.device_node*, %struct.device_node** %10, align 8
  %49 = call i32 @of_node_put(%struct.device_node* %48)
  %50 = load i64, i64* @ENODEV, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %164

52:                                               ; preds = %38
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 80
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 80
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %64

61:                                               ; preds = %33
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 65535
  %67 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %68 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.device_node*, %struct.device_node** %10, align 8
  %70 = call i32* @of_get_property(%struct.device_node* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %92

73:                                               ; preds = %64
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %77 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 5, i32 4
  %83 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %84 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 4, i32 5
  %90 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %91 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  br label %150

92:                                               ; preds = %64
  store i32* null, i32** %14, align 8
  %93 = load i64, i64* @IS_G4DA, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @strncmp(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %95, %92
  %101 = phi i1 [ false, %92 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32
  %103 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %104 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %106 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %105, i32 0, i32 2
  store i32 4, i32* %106, align 4
  %107 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %108 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %107, i32 0, i32 3
  store i32 5, i32* %108, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load %struct.device_node*, %struct.device_node** %10, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32* @of_get_property(%struct.device_node* %112, i8* %113, i32* null)
  store i32* %114, i32** %14, align 8
  br label %115

115:                                              ; preds = %111, %100
  %116 = load i32*, i32** %14, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load i32*, i32** %14, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 9
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 9
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %130 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %129, i32 0, i32 2
  store i32 13, i32* %130, align 4
  %131 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %132 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %131, i32 0, i32 3
  store i32 12, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %123, %118
  %134 = load i32*, i32** %14, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %145 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %144, i32 0, i32 2
  store i32 5, i32* %145, align 4
  %146 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %147 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %146, i32 0, i32 3
  store i32 4, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %138, %133
  br label %149

149:                                              ; preds = %148, %115
  br label %150

150:                                              ; preds = %149, %73
  %151 = load i8*, i8** %6, align 8
  %152 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %153 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.pmac_gpio*, %struct.pmac_gpio** %8, align 8
  %156 = getelementptr inbounds %struct.pmac_gpio, %struct.pmac_gpio* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, i8*, ...) @DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %151, i32 %154, i32 %157)
  %159 = load %struct.device_node*, %struct.device_node** %10, align 8
  %160 = call i64 @irq_of_parse_and_map(%struct.device_node* %159, i32 0)
  store i64 %160, i64* %13, align 8
  %161 = load %struct.device_node*, %struct.device_node** %10, align 8
  %162 = call i32 @of_node_put(%struct.device_node* %161)
  %163 = load i64, i64* %13, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %150, %43, %26
  %165 = load i64, i64* %5, align 8
  ret i64 %165
}

declare dso_local %struct.device_node* @find_compatible_audio_device(i8*) #1

declare dso_local %struct.device_node* @find_audio_device(i8*) #1

declare dso_local i32 @DBG(i8*, i8*, ...) #1

declare dso_local i32 @snd_printdd(i8*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @snd_printd(i8*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
