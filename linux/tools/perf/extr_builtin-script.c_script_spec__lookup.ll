; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_spec__lookup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_spec__lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_ops = type { i32 }
%struct.script_spec = type { %struct.scripting_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scripting_ops* (i8*)* @script_spec__lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scripting_ops* @script_spec__lookup(i8* %0) #0 {
  %2 = alloca %struct.scripting_ops*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.script_spec*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.script_spec* @script_spec__find(i8* %5)
  store %struct.script_spec* %6, %struct.script_spec** %4, align 8
  %7 = load %struct.script_spec*, %struct.script_spec** %4, align 8
  %8 = icmp ne %struct.script_spec* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.scripting_ops* null, %struct.scripting_ops** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.script_spec*, %struct.script_spec** %4, align 8
  %12 = getelementptr inbounds %struct.script_spec, %struct.script_spec* %11, i32 0, i32 0
  %13 = load %struct.scripting_ops*, %struct.scripting_ops** %12, align 8
  store %struct.scripting_ops* %13, %struct.scripting_ops** %2, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.scripting_ops*, %struct.scripting_ops** %2, align 8
  ret %struct.scripting_ops* %15
}

declare dso_local %struct.script_spec* @script_spec__find(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
