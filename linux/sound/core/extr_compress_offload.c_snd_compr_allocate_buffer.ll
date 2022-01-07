; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_allocate_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_allocate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.snd_compr_params = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Not enough DMA buffer\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @snd_compr_allocate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_allocate_buffer(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %9 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %13 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul i32 %11, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %34 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %49 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %47, %41
  br label %60

56:                                               ; preds = %24
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kmalloc(i32 %57, i32 %58)
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %94

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %23
  %68 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %69 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %73 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %77 = getelementptr inbounds %struct.snd_compr_params, %struct.snd_compr_params* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %81 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %86 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i8* %84, i8** %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %91 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %67, %63
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
