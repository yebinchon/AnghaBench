; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_svc_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_svc_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.svc_stat = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.svc_program* }
%struct.svc_program = type { i32, %struct.svc_version** }
%struct.svc_version = type { i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"net %u %u %u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"rpc %u %u %u %u %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"proc%d %u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_seq_show(%struct.seq_file* %0, %struct.svc_stat* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.svc_stat*, align 8
  %5 = alloca %struct.svc_program*, align 8
  %6 = alloca %struct.svc_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.svc_stat* %1, %struct.svc_stat** %4, align 8
  %9 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %10 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %9, i32 0, i32 8
  %11 = load %struct.svc_program*, %struct.svc_program** %10, align 8
  store %struct.svc_program* %11, %struct.svc_program** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %14 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %17 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %20 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %23 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %28 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %31 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %34 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %38 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %42 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %45 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %48 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %40, i64 %43, i64 %46, i64 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %97, %2
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %54 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %59 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %58, i32 0, i32 1
  %60 = load %struct.svc_version**, %struct.svc_version*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.svc_version*, %struct.svc_version** %60, i64 %62
  %64 = load %struct.svc_version*, %struct.svc_version** %63, align 8
  store %struct.svc_version* %64, %struct.svc_version** %6, align 8
  %65 = load %struct.svc_version*, %struct.svc_version** %6, align 8
  %66 = icmp ne %struct.svc_version* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  br label %97

68:                                               ; preds = %57
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.svc_version*, %struct.svc_version** %6, align 8
  %72 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %91, %68
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.svc_version*, %struct.svc_version** %6, align 8
  %78 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.svc_version*, %struct.svc_version** %6, align 8
  %84 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %75

94:                                               ; preds = %75
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 @seq_putc(%struct.seq_file* %95, i8 signext 10)
  br label %97

97:                                               ; preds = %94, %67
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %51

100:                                              ; preds = %51
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
