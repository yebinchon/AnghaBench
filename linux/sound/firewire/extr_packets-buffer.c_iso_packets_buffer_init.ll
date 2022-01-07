; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_packets-buffer.c_iso_packets_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_packets-buffer.c_iso_packets_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_packets_buffer = type { %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32* }
%struct.fw_unit = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso_packets_buffer_init(%struct.iso_packets_buffer* %0, %struct.fw_unit* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iso_packets_buffer*, align 8
  %8 = alloca %struct.fw_unit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.iso_packets_buffer* %0, %struct.iso_packets_buffer** %7, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_5__* @kmalloc_array(i32 %19, i32 16, i32 %20)
  %22 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %23 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %22, i32 0, i32 0
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %18, align 4
  br label %117

31:                                               ; preds = %5
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @L1_CACHE_ALIGN(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %18, align 4
  br label %112

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %50, i32 0, i32 1
  %52 = load %struct.fw_unit*, %struct.fw_unit** %8, align 8
  %53 = call %struct.TYPE_6__* @fw_parent_device(%struct.fw_unit* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @fw_iso_buffer_init(%struct.TYPE_7__* %51, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %112

62:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %108, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = udiv i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @page_address(i32 %78)
  store i8* %79, i8** %17, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %12, align 4
  %82 = urem i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = mul i32 %82, %83
  store i32 %84, i32* %16, align 4
  %85 = load i8*, i8** %17, align 8
  %86 = load i32, i32* %16, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr i8, i8* %85, i64 %87
  %89 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %90 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i8* %88, i8** %95, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = mul i32 %96, %97
  %99 = load i32, i32* %16, align 4
  %100 = add i32 %98, %99
  %101 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %102 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %100, i32* %107, align 8
  br label %108

108:                                              ; preds = %67
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %63

111:                                              ; preds = %63
  store i32 0, i32* %6, align 4
  br label %119

112:                                              ; preds = %61, %43
  %113 = load %struct.iso_packets_buffer*, %struct.iso_packets_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.iso_packets_buffer, %struct.iso_packets_buffer* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = call i32 @kfree(%struct.TYPE_5__* %115)
  br label %117

117:                                              ; preds = %112, %28
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %111
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_5__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @fw_iso_buffer_init(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
