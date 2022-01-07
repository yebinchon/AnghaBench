; ModuleID = '/home/carl/AnghaBench/linux/samples/kprobes/extr_kretprobe_example.c_ret_handler.c'
source_filename = "/home/carl/AnghaBench/linux/samples/kprobes/extr_kretprobe_example.c_ret_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kretprobe_instance = type { i64 }
%struct.pt_regs = type { i32 }
%struct.my_data = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s returned %lu and took %lld ns to execute\0A\00", align 1
@func_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kretprobe_instance*, %struct.pt_regs*)* @ret_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ret_handler(%struct.kretprobe_instance* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.kretprobe_instance*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.my_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kretprobe_instance* %0, %struct.kretprobe_instance** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = call i64 @regs_return_value(%struct.pt_regs* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.kretprobe_instance*, %struct.kretprobe_instance** %3, align 8
  %12 = getelementptr inbounds %struct.kretprobe_instance, %struct.kretprobe_instance* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.my_data*
  store %struct.my_data* %14, %struct.my_data** %6, align 8
  %15 = call i32 (...) @ktime_get()
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.my_data*, %struct.my_data** %6, align 8
  %18 = getelementptr inbounds %struct.my_data, %struct.my_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ktime_sub(i32 %16, i32 %19)
  %21 = call i64 @ktime_to_ns(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* @func_name, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23, i64 %24)
  ret i32 0
}

declare dso_local i64 @regs_return_value(%struct.pt_regs*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
