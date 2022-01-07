; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_show_template_data_binary.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_show_template_data_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_field_data = type { i32*, i32 }

@IMA_SHOW_BINARY_OLD_STRING_FMT = common dso_local global i32 0, align 4
@IMA_SHOW_BINARY_NO_FIELD_LEN = common dso_local global i32 0, align 4
@ima_canonical_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, %struct.ima_field_data*)* @ima_show_template_data_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_show_template_data_binary(%struct.seq_file* %0, i32 %1, i32 %2, %struct.ima_field_data* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ima_field_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ima_field_data* %3, %struct.ima_field_data** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IMA_SHOW_BINARY_OLD_STRING_FMT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %16 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @strlen(i32* %17)
  br label %23

19:                                               ; preds = %4
  %20 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %21 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %18, %14 ], [ %22, %19 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IMA_SHOW_BINARY_NO_FIELD_LEN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* @ima_canonical_fmt, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  store i32 %37, i32* %10, align 4
  %38 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %39 = call i32 @ima_putc(%struct.seq_file* %38, i32* %10, i32 4)
  br label %40

40:                                               ; preds = %36, %23
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %51

44:                                               ; preds = %40
  %45 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %46 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %47 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ima_putc(%struct.seq_file* %45, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ima_putc(%struct.seq_file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
