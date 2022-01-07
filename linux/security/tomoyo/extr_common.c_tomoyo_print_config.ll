; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_print_config.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_print_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"={ mode=%s grant_log=%s reject_log=%s }\0A\00", align 1
@tomoyo_mode = common dso_local global i32* null, align 8
@TOMOYO_CONFIG_WANT_GRANT_LOG = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_WANT_REJECT_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tomoyo_io_buffer*, i32)* @tomoyo_print_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tomoyo_print_config(%struct.tomoyo_io_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %6 = load i32*, i32** @tomoyo_mode, align 8
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TOMOYO_CONFIG_WANT_GRANT_LOG, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @tomoyo_yesno(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TOMOYO_CONFIG_WANT_REJECT_LOG, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @tomoyo_yesno(i32 %18)
  %20 = call i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %19)
  ret void
}

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i32, i32, i32) #1

declare dso_local i32 @tomoyo_yesno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
