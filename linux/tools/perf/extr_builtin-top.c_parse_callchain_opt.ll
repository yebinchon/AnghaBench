; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_parse_callchain_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_parse_callchain_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.option = type { %struct.callchain_param* }
%struct.callchain_param = type { i32, i32 }

@CALLCHAIN_FP = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CALLCHAIN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_callchain_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_callchain_opt(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.callchain_param*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.callchain_param*, %struct.callchain_param** %10, align 8
  store %struct.callchain_param* %11, %struct.callchain_param** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.callchain_param*, %struct.callchain_param** %8, align 8
  %17 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CALLCHAIN_FP, align 4
  %19 = load %struct.callchain_param*, %struct.callchain_param** %8, align 8
  %20 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %24 = load i32, i32* @CALLCHAIN_NONE, align 4
  %25 = load %struct.callchain_param*, %struct.callchain_param** %8, align 8
  %26 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @parse_callchain_top_opt(i8* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @parse_callchain_top_opt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
