; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_proc_read_phys_meters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_proc.c_proc_read_phys_meters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_efw* }
%struct.snd_efw = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_info_buffer = type { i32 }
%struct.snd_efw_phys_meters = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Physical Meters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %d Outputs:\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09%s [%d]: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" %d Inputs:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_phys_meters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_phys_meters(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_efw*, align 8
  %6 = alloca %struct.snd_efw_phys_meters*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %15 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %16 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %15, i32 0, i32 0
  %17 = load %struct.snd_efw*, %struct.snd_efw** %16, align 8
  store %struct.snd_efw* %17, %struct.snd_efw** %5, align 8
  %18 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %19 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %22 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 16, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.snd_efw_phys_meters* @kzalloc(i32 %29, i32 %30)
  store %struct.snd_efw_phys_meters* %31, %struct.snd_efw_phys_meters** %6, align 8
  %32 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %33 = icmp eq %struct.snd_efw_phys_meters* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %178

35:                                               ; preds = %2
  %36 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %37 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @snd_efw_command_get_phys_meters(%struct.snd_efw* %36, %struct.snd_efw_phys_meters* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %175

43:                                               ; preds = %35
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %46 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %47 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %50 = getelementptr inbounds %struct.snd_efw_phys_meters, %struct.snd_efw_phys_meters* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @min(i32 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %54 = getelementptr inbounds %struct.snd_efw_phys_meters, %struct.snd_efw_phys_meters* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %13, align 8
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %104, %43
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %62 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %59
  %66 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %67 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = call i8* @get_phys_name(%struct.TYPE_2__* %71, i32 0)
  store i8* %72, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %100, %65
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %76 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %74, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %90, i32 %91, i32 %97)
  br label %99

99:                                               ; preds = %88, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %73

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %59

107:                                              ; preds = %59
  store i32 0, i32* %9, align 4
  %108 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %109 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %112 = getelementptr inbounds %struct.snd_efw_phys_meters, %struct.snd_efw_phys_meters* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @min(i32 %110, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %116 = getelementptr inbounds %struct.snd_efw_phys_meters, %struct.snd_efw_phys_meters* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %119 = getelementptr inbounds %struct.snd_efw_phys_meters, %struct.snd_efw_phys_meters* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  store i32* %122, i32** %13, align 8
  %123 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %171, %107
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %129 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %127, %130
  br i1 %131, label %132, label %174

132:                                              ; preds = %126
  %133 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %134 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %133, i32 0, i32 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = call i8* @get_phys_name(%struct.TYPE_2__* %138, i32 1)
  store i8* %139, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %167, %132
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.snd_efw*, %struct.snd_efw** %5, align 8
  %143 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ult i32 %141, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %140
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %9, align 4
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %157, i32 %158, i32 %164)
  br label %166

166:                                              ; preds = %155, %151
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %140

170:                                              ; preds = %140
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %126

174:                                              ; preds = %126
  br label %175

175:                                              ; preds = %174, %42
  %176 = load %struct.snd_efw_phys_meters*, %struct.snd_efw_phys_meters** %6, align 8
  %177 = call i32 @kfree(%struct.snd_efw_phys_meters* %176)
  br label %178

178:                                              ; preds = %175, %34
  ret void
}

declare dso_local %struct.snd_efw_phys_meters* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_efw_command_get_phys_meters(%struct.snd_efw*, %struct.snd_efw_phys_meters*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @get_phys_name(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @kfree(%struct.snd_efw_phys_meters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
