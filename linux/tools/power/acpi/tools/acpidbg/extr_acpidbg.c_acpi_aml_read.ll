; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_acpi_aml_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_acpi_aml_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circ_buf = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ACPI_AML_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.circ_buf*)* @acpi_aml_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_read(i32 %0, %struct.circ_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.circ_buf* %1, %struct.circ_buf** %4, align 8
  %7 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %8 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %11 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8* %13, i8** %5, align 8
  %14 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %15 = call i32 @circ_space_to_end(%struct.circ_buf* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @read(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %29 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %30, %32
  %34 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  %38 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %39 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %27, %24
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @circ_space_to_end(%struct.circ_buf*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
