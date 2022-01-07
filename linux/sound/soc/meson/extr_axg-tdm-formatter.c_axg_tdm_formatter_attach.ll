; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_attach.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-tdm-formatter.c_axg_tdm_formatter_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_tdm_formatter = type { i32, %struct.axg_tdm_stream* }
%struct.axg_tdm_stream = type { i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"failed to enable formatter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_tdm_formatter*)* @axg_tdm_formatter_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_tdm_formatter_attach(%struct.axg_tdm_formatter* %0) #0 {
  %2 = alloca %struct.axg_tdm_formatter*, align 8
  %3 = alloca %struct.axg_tdm_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.axg_tdm_formatter* %0, %struct.axg_tdm_formatter** %2, align 8
  %5 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %2, align 8
  %6 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %5, i32 0, i32 1
  %7 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %6, align 8
  store %struct.axg_tdm_stream* %7, %struct.axg_tdm_stream** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %9 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %12 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %2, align 8
  %17 = call i32 @axg_tdm_formatter_enable(%struct.axg_tdm_formatter* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %29

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.axg_tdm_formatter*, %struct.axg_tdm_formatter** %2, align 8
  %25 = getelementptr inbounds %struct.axg_tdm_formatter, %struct.axg_tdm_formatter* %24, i32 0, i32 0
  %26 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %27 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.axg_tdm_stream*, %struct.axg_tdm_stream** %3, align 8
  %31 = getelementptr inbounds %struct.axg_tdm_stream, %struct.axg_tdm_stream* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @axg_tdm_formatter_enable(%struct.axg_tdm_formatter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
