; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_scsi.c_scsi_trace_rw10.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_scsi.c_scsi_trace_rw10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"lba=%llu txlen=%llu protect=%u\00", align 1
@WRITE_SAME = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" unmap=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_rw10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_rw10(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %11 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %14 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %7, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 24
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 16
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %8, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %9, align 1
  %70 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i64
  %73 = trunc i64 %72 to i8
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i64
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %79, 5
  %81 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 zeroext %73, i64 %75, i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @WRITE_SAME, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %3
  %90 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = ashr i32 %94, 3
  %96 = and i32 %95, 1
  %97 = trunc i32 %96 to i8
  %98 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %97)
  br label %99

99:                                               ; preds = %89, %3
  %100 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %101 = call i32 @trace_seq_putc(%struct.trace_seq* %100, i32 0)
  %102 = load i8*, i8** %7, align 8
  ret i8* %102
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8 zeroext, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
