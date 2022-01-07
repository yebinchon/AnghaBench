; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_hists__reinit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_hists__reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_hists = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2c_hists*, i8*, i8*)* @c2c_hists__reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2c_hists__reinit(%struct.c2c_hists* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.c2c_hists*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.c2c_hists* %0, %struct.c2c_hists** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.c2c_hists*, %struct.c2c_hists** %4, align 8
  %8 = getelementptr inbounds %struct.c2c_hists, %struct.c2c_hists* %7, i32 0, i32 0
  %9 = call i32 @perf_hpp__reset_output_field(i32* %8)
  %10 = load %struct.c2c_hists*, %struct.c2c_hists** %4, align 8
  %11 = getelementptr inbounds %struct.c2c_hists, %struct.c2c_hists* %10, i32 0, i32 0
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @hpp_list__parse(i32* %11, i8* %12, i8* %13)
  ret i32 %14
}

declare dso_local i32 @perf_hpp__reset_output_field(i32*) #1

declare dso_local i32 @hpp_list__parse(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
