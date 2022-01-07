; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_buffer_ask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_buffer_ask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_08_ASK_BUFFERS = common dso_local global i32 0, align 4
@MAX_STREAM_BUFFER = common dso_local global i32 0, align 4
@BF_EOB = common dso_local global i32 0, align 4
@BUFF_FLAGS_OFFSET = common dso_local global i32 0, align 4
@MASK_DATA_SIZE = common dso_local global i32 0, align 4
@BF_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"CMD_08_ASK_BUFFERS: needed %d, freed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  stat[%d]: %x, %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_buffer_ask(%struct.lx6464es* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.lx6464es*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @PIPE_INFO_TO_CMD(i32 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %23 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %26 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %25, i32 0, i32 1
  %27 = load i32, i32* @CMD_08_ASK_BUFFERS, align 4
  %28 = call i32 @lx_message_init(%struct.TYPE_5__* %26, i32 %27)
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %38 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %39 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %38, i32 0, i32 1
  %40 = call i32 @lx_message_send_atomic(%struct.lx6464es* %37, %struct.TYPE_5__* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %151, label %43

43:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %91, %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @MAX_STREAM_BUFFER, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %50 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @BF_EOB, align 4
  %59 = load i32, i32* @BUFF_FLAGS_OFFSET, align 4
  %60 = shl i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %48
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @MASK_DATA_SIZE, align 4
  %72 = and i32 %70, %71
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %63
  br label %90

78:                                               ; preds = %48
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @BF_VALID, align 4
  %81 = load i32, i32* @BUFF_FLAGS_OFFSET, align 4
  %82 = shl i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %44

94:                                               ; preds = %44
  %95 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %96 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %103)
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %147, %94
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @MAX_STREAM_BUFFER, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %143, %109
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %113 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %111, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %110
  %118 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %119 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %125 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %133 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MASK_DATA_SIZE, align 4
  %141 = and i32 %139, %140
  %142 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %131, i32 %141)
  br label %143

143:                                              ; preds = %117
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %110

146:                                              ; preds = %110
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %105

150:                                              ; preds = %105
  br label %151

151:                                              ; preds = %150, %6
  %152 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %153 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %13, align 4
  ret i32 %155
}

declare dso_local i32 @PIPE_INFO_TO_CMD(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
