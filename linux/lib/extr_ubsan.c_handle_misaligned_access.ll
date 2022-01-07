; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c_handle_misaligned_access.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c_handle_misaligned_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_mismatch_data_common = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s misaligned address %p for type %s\0A\00", align 1
@type_check_kinds = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"which requires %ld byte alignment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type_mismatch_data_common*, i64)* @handle_misaligned_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_misaligned_access(%struct.type_mismatch_data_common* %0, i64 %1) #0 {
  %3 = alloca %struct.type_mismatch_data_common*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.type_mismatch_data_common* %0, %struct.type_mismatch_data_common** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.type_mismatch_data_common*, %struct.type_mismatch_data_common** %3, align 8
  %7 = getelementptr inbounds %struct.type_mismatch_data_common, %struct.type_mismatch_data_common* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @suppress_report(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.type_mismatch_data_common*, %struct.type_mismatch_data_common** %3, align 8
  %14 = getelementptr inbounds %struct.type_mismatch_data_common, %struct.type_mismatch_data_common* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ubsan_prologue(i32 %15, i64* %5)
  %17 = load i32*, i32** @type_check_kinds, align 8
  %18 = load %struct.type_mismatch_data_common*, %struct.type_mismatch_data_common** %3, align 8
  %19 = getelementptr inbounds %struct.type_mismatch_data_common, %struct.type_mismatch_data_common* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %4, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.type_mismatch_data_common*, %struct.type_mismatch_data_common** %3, align 8
  %26 = getelementptr inbounds %struct.type_mismatch_data_common, %struct.type_mismatch_data_common* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %24, i32 %29)
  %31 = load %struct.type_mismatch_data_common*, %struct.type_mismatch_data_common** %3, align 8
  %32 = getelementptr inbounds %struct.type_mismatch_data_common, %struct.type_mismatch_data_common* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @ubsan_epilogue(i64* %5)
  br label %36

36:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @suppress_report(i32) #1

declare dso_local i32 @ubsan_prologue(i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @ubsan_epilogue(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
