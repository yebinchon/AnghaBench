; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_show_template_data_ascii.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_show_template_data_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_field_data = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, %struct.ima_field_data*)* @ima_show_template_data_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ima_show_template_data_ascii(%struct.seq_file* %0, i32 %1, i32 %2, %struct.ima_field_data* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ima_field_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ima_field_data* %3, %struct.ima_field_data** %8, align 8
  %11 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %12 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %15 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %63 [
    i32 130, label %18
    i32 131, label %50
    i32 129, label %50
    i32 128, label %59
  ]

18:                                               ; preds = %4
  %19 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %20 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32* @strnchr(i32* %21, i32 %22, i8 signext 58)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %26 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %31 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %32 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %33)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.ima_field_data*, %struct.ima_field_data** %8, align 8
  %40 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = ptrtoint i32* %38 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %4, %4, %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %64

54:                                               ; preds = %50
  %55 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @ima_print_digest(%struct.seq_file* %55, i32* %56, i32 %57)
  br label %64

59:                                               ; preds = %4
  %60 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %61)
  br label %64

63:                                               ; preds = %4
  br label %64

64:                                               ; preds = %63, %59, %54, %53
  ret void
}

declare dso_local i32* @strnchr(i32*, i32, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*) #1

declare dso_local i32 @ima_print_digest(%struct.seq_file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
