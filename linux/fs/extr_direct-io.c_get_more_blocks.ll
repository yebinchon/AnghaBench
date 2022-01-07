; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_get_more_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_get_more_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32, i64, i32, i32, i32 }
%struct.dio_submit = type { i32, i32, i32, i32, i32 (i32, i32, %struct.buffer_head*, i32)* }
%struct.buffer_head = type opaque
%struct.buffer_head.0 = type { i64, i32, i64 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@DIO_SKIP_HOLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.buffer_head.0*)* @get_more_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_more_blocks(%struct.dio* %0, %struct.dio_submit* %1, %struct.buffer_head.0* %2) #0 {
  %4 = alloca %struct.dio*, align 8
  %5 = alloca %struct.dio_submit*, align 8
  %6 = alloca %struct.buffer_head.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %4, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %5, align 8
  store %struct.buffer_head.0* %2, %struct.buffer_head.0** %6, align 8
  %14 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %15 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %18 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %16, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.dio*, %struct.dio** %4, align 8
  %22 = getelementptr inbounds %struct.dio, %struct.dio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %119

26:                                               ; preds = %3
  %27 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %28 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %31 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %37 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %40 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %44 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %48 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %10, align 8
  %56 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %57 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 %58, %60
  %62 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %63 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.dio*, %struct.dio** %4, align 8
  %65 = getelementptr inbounds %struct.dio, %struct.dio* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @REQ_OP_WRITE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load %struct.dio*, %struct.dio** %4, align 8
  %71 = getelementptr inbounds %struct.dio, %struct.dio* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DIO_SKIP_HOLES, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %26
  %77 = load %struct.dio*, %struct.dio** %4, align 8
  %78 = getelementptr inbounds %struct.dio, %struct.dio* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @i_size_read(i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %12, align 4
  %88 = ashr i32 %86, %87
  %89 = icmp sle i32 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %83, %76
  br label %92

92:                                               ; preds = %91, %26
  %93 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %94 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %93, i32 0, i32 4
  %95 = load i32 (i32, i32, %struct.buffer_head*, i32)*, i32 (i32, i32, %struct.buffer_head*, i32)** %94, align 8
  %96 = load %struct.dio*, %struct.dio** %4, align 8
  %97 = getelementptr inbounds %struct.dio, %struct.dio* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %101 = bitcast %struct.buffer_head.0* %100 to %struct.buffer_head*
  %102 = load i32, i32* %11, align 4
  %103 = call i32 %95(i32 %98, i32 %99, %struct.buffer_head* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %105 = getelementptr inbounds %struct.buffer_head.0, %struct.buffer_head.0* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dio*, %struct.dio** %4, align 8
  %108 = getelementptr inbounds %struct.dio, %struct.dio* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %92
  %112 = load %struct.buffer_head.0*, %struct.buffer_head.0** %6, align 8
  %113 = call i64 @buffer_defer_completion(%struct.buffer_head.0* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.dio*, %struct.dio** %4, align 8
  %117 = call i32 @dio_set_defer_completion(%struct.dio* %116)
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %111, %92
  br label %119

119:                                              ; preds = %118, %3
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @buffer_defer_completion(%struct.buffer_head.0*) #1

declare dso_local i32 @dio_set_defer_completion(%struct.dio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
