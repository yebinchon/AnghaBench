; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_show_template_buf.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_show_template_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ima_field_data = type { i32 }

@DATA_FMT_HEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_show_template_buf(%struct.seq_file* %0, i32 %1, %struct.ima_field_data* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ima_field_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ima_field_data* %2, %struct.ima_field_data** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DATA_FMT_HEX, align 4
  %10 = load %struct.ima_field_data*, %struct.ima_field_data** %6, align 8
  %11 = call i32 @ima_show_template_field_data(%struct.seq_file* %7, i32 %8, i32 %9, %struct.ima_field_data* %10)
  ret void
}

declare dso_local i32 @ima_show_template_field_data(%struct.seq_file*, i32, i32, %struct.ima_field_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
