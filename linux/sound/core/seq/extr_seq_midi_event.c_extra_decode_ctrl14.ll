; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_event.c_extra_decode_ctrl14.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi_event.c_extra_decode_ctrl14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_event = type { i8, i64 }
%struct.snd_seq_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MIDI_CMD_CONTROL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_midi_event*, i8*, i32, %struct.snd_seq_event*)* @extra_decode_ctrl14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extra_decode_ctrl14(%struct.snd_midi_event* %0, i8* %1, i32 %2, %struct.snd_seq_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_midi_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_seq_event*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.snd_midi_event* %0, %struct.snd_midi_event** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_seq_event* %3, %struct.snd_seq_event** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @MIDI_CMD_CONTROL, align 4
  %13 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %14 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  %19 = or i32 %12, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %10, align 1
  %21 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %22 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %133

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %194

33:                                               ; preds = %27
  %34 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %35 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %194

44:                                               ; preds = %38, %33
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %48 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 8
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %54 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52, %44
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %194

63:                                               ; preds = %57
  %64 = load i8, i8* %10, align 1
  %65 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %66 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %65, i32 0, i32 0
  store i8 %64, i8* %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 %64, i8* %71, align 1
  br label %72

72:                                               ; preds = %63, %52
  %73 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %74 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 %78, i8* %83, align 1
  %84 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %85 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 7
  %90 = and i32 %89, 127
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %91, i8* %96, align 1
  %97 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %98 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %72
  %102 = load i8, i8* %10, align 1
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  br label %108

108:                                              ; preds = %101, %72
  %109 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %110 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 32
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  %121 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %122 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 127
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 %127, i8* %132, align 1
  br label %192

133:                                              ; preds = %4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %194

139:                                              ; preds = %133
  %140 = load i8, i8* %10, align 1
  %141 = zext i8 %140 to i32
  %142 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %143 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 8
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %141, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  %148 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %149 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %147, %139
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 3
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %194

158:                                              ; preds = %152
  %159 = load i8, i8* %10, align 1
  %160 = load %struct.snd_midi_event*, %struct.snd_midi_event** %6, align 8
  %161 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %160, i32 0, i32 0
  store i8 %159, i8* %161, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 %159, i8* %166, align 1
  br label %167

167:                                              ; preds = %158, %147
  %168 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %169 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 127
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 %174, i8* %179, align 1
  %180 = load %struct.snd_seq_event*, %struct.snd_seq_event** %9, align 8
  %181 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 127
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  store i8 %186, i8* %191, align 1
  br label %192

192:                                              ; preds = %167, %108
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %192, %155, %136, %60, %41, %30
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
