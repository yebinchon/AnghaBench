; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_parse_ir_ctx_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_parse_ir_ctx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ISO_DATA_LENGTH_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Detect jumbo payload: %04x %04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CIP_NO_HEADER = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, i32, i32*, i32*, i32*, i32*, i32*, i32)* @parse_ir_ctx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ir_ctx_header(%struct.amdtp_stream* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdtp_stream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = load i32, i32* @ISO_DATA_LENGTH_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %30 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %35 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %33, %38
  %40 = icmp ugt i32 %28, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %8
  %42 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %43 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %49 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %112

56:                                               ; preds = %8
  %57 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %58 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CIP_NO_HEADER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %56
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32* %65, i32** %18, align 8
  %66 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @check_cip_header(%struct.amdtp_stream* %66, i32* %67, i32 %69, i32* %70, i32* %71, i32* %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %19, align 4
  store i32 %77, i32* %9, align 4
  br label %112

78:                                               ; preds = %63
  br label %99

79:                                               ; preds = %56
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %85 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = udiv i64 %83, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %14, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %16, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @UINT_MAX, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32*, i32** %15, align 8
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %79
  br label %99

99:                                               ; preds = %98, %78
  %100 = load %struct.amdtp_stream*, %struct.amdtp_stream** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %18, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @trace_amdtp_packet(%struct.amdtp_stream* %100, i32 %101, i32* %102, i32 %104, i32 %106, i32 %108, i32 %109)
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %99, %76, %41
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @check_cip_header(%struct.amdtp_stream*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @trace_amdtp_packet(%struct.amdtp_stream*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
