; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_send_multisample.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_send_multisample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64* }

@WF_MSAMPLE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WF_DEBUG_LOAD_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"multi %d with %d=%d samples\0A\00", align 1
@WF_DEBUG_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sample[%d] = %d\0A\00", align 1
@WFC_DOWNLOAD_MULTISAMPLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"download of multisample failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WF_SLOT_FILLED = common dso_local global i32 0, align 4
@WF_ST_MULTISAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @wavefront_send_multisample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_send_multisample(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load i32, i32* @WF_MSAMPLE_BYTES, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %120

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = call i32 @munge_int32(i64 %20, i8* %22, i32 2)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 7
  %30 = shl i32 1, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* @WF_DEBUG_LOAD_PATCH, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, i32, i64, ...) @DPRINT(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %49, i32 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %87, %17
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = load i32, i32* @WF_DEBUG_LOAD_PATCH, align 4
  %58 = load i32, i32* @WF_DEBUG_DATA, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, i32, i64, ...) @DPRINT(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 3, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = call i32 @munge_int32(i64 %79, i8* %85, i32 2)
  br label %87

87:                                               ; preds = %56
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %52

90:                                               ; preds = %52
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = load i32, i32* @WFC_DOWNLOAD_MULTISAMPLE, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @snd_wavefront_cmd(%struct.TYPE_11__* %91, i32 %92, i8* %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = call i32 @snd_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @kfree(i8* %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %120

107:                                              ; preds = %90
  %108 = load i32, i32* @WF_SLOT_FILLED, align 4
  %109 = load i32, i32* @WF_ST_MULTISAMPLE, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %110, i32* %117, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @kfree(i8* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %107, %101, %14
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @munge_int32(i64, i8*, i32) #1

declare dso_local i32 @DPRINT(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @snd_wavefront_cmd(%struct.TYPE_11__*, i32, i8*, i8*) #1

declare dso_local i32 @snd_printk(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
