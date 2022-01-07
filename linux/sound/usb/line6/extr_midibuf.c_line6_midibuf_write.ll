; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_midibuf.c_line6_midibuf_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_midibuf.c_line6_midibuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.midi_buffer = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_midibuf_write(%struct.midi_buffer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.midi_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.midi_buffer* %0, %struct.midi_buffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %13 = call i64 @midibuf_is_full(%struct.midi_buffer* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %113

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 254
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %33 = call i32 @line6_midibuf_bytes_free(%struct.midi_buffer* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %39
  %43 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %42
  %54 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @memcpy(i64 %61, i8* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %97

70:                                               ; preds = %42
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memcpy(i64 %81, i8* %82, i32 %83)
  %85 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @memcpy(i64 %87, i8* %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %96 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %70, %53
  %98 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %102 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.midi_buffer*, %struct.midi_buffer** %5, align 8
  %107 = getelementptr inbounds %struct.midi_buffer, %struct.midi_buffer* %106, i32 0, i32 3
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %97
  br label %109

109:                                              ; preds = %108, %39
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %18
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @midibuf_is_full(%struct.midi_buffer*) #1

declare dso_local i32 @line6_midibuf_bytes_free(%struct.midi_buffer*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
