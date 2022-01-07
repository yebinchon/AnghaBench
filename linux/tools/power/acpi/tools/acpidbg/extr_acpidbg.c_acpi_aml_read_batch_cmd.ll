; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_acpi_aml_read_batch_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/tools/acpidbg/extr_acpidbg.c_acpi_aml_read_batch_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circ_buf = type { i8*, i64 }

@acpi_aml_batch_pos = common dso_local global i32 0, align 4
@ACPI_AML_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.circ_buf*)* @acpi_aml_read_batch_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_read_batch_cmd(i32 %0, %struct.circ_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.circ_buf* %1, %struct.circ_buf** %4, align 8
  %8 = load i32, i32* @acpi_aml_batch_pos, align 4
  %9 = call i32 @strlen(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %11 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %14 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8* %16, i8** %5, align 8
  %17 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %18 = call i32 @circ_space_to_end(%struct.circ_buf* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @acpi_aml_batch_pos, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memcpy(i8* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @acpi_aml_batch_pos, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* @acpi_aml_batch_pos, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @acpi_aml_batch_pos, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memcpy(i8* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @acpi_aml_batch_pos, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* @acpi_aml_batch_pos, align 4
  br label %39

39:                                               ; preds = %31, %22
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = and i64 %48, %51
  %53 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %42, %39
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @circ_space_to_end(%struct.circ_buf*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
