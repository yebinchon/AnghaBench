; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_proc_read_meters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_proc.c_proc_read_meters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_bebob* }
%struct.snd_bebob = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_bebob_meter_spec* }
%struct.snd_bebob_meter_spec = type { i32, i64 (%struct.snd_bebob*, i32*, i32)*, i32* }
%struct.snd_info_buffer = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %d:\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_read_meters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_read_meters(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_bebob*, align 8
  %6 = alloca %struct.snd_bebob_meter_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %13 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %12, i32 0, i32 0
  %14 = load %struct.snd_bebob*, %struct.snd_bebob** %13, align 8
  store %struct.snd_bebob* %14, %struct.snd_bebob** %5, align 8
  %15 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %16 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %18, align 8
  store %struct.snd_bebob_meter_spec* %19, %struct.snd_bebob_meter_spec** %6, align 8
  %20 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %6, align 8
  %21 = icmp eq %struct.snd_bebob_meter_spec* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %105

23:                                               ; preds = %2
  %24 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %6, align 8
  %25 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32* @kmalloc(i32 %32, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %105

38:                                               ; preds = %23
  %39 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %6, align 8
  %40 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %39, i32 0, i32 1
  %41 = load i64 (%struct.snd_bebob*, i32*, i32)*, i64 (%struct.snd_bebob*, i32*, i32)** %40, align 8
  %42 = load %struct.snd_bebob*, %struct.snd_bebob** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 %41(%struct.snd_bebob* %42, i32* %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %102

48:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %98, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %55 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %6, align 8
  %56 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = udiv i32 %58, 2
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_iprintf(%struct.snd_info_buffer* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  %73 = load i32, i32* %10, align 4
  %74 = sub i32 %73, 1
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %53
  %77 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %6, align 8
  %78 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = udiv i32 %80, 2
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_bebob_meter_spec*, %struct.snd_bebob_meter_spec** %6, align 8
  %86 = getelementptr inbounds %struct.snd_bebob_meter_spec, %struct.snd_bebob_meter_spec* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  %90 = udiv i32 %89, 2
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @strcmp(i32 %84, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %76, %53
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %49

101:                                              ; preds = %49
  br label %102

102:                                              ; preds = %101, %47
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @kfree(i32* %103)
  br label %105

105:                                              ; preds = %102, %37, %22
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
