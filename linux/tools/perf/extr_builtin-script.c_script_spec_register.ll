; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_spec_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_script_spec_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_ops = type { i32 }
%struct.script_spec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @script_spec_register(i8* %0, %struct.scripting_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scripting_ops*, align 8
  %6 = alloca %struct.script_spec*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.scripting_ops* %1, %struct.scripting_ops** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.script_spec* @script_spec__find(i8* %7)
  store %struct.script_spec* %8, %struct.script_spec** %6, align 8
  %9 = load %struct.script_spec*, %struct.script_spec** %6, align 8
  %10 = icmp ne %struct.script_spec* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.scripting_ops*, %struct.scripting_ops** %5, align 8
  %15 = call %struct.script_spec* @script_spec__new(i8* %13, %struct.scripting_ops* %14)
  store %struct.script_spec* %15, %struct.script_spec** %6, align 8
  %16 = load %struct.script_spec*, %struct.script_spec** %6, align 8
  %17 = icmp ne %struct.script_spec* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.script_spec*, %struct.script_spec** %6, align 8
  %21 = call i32 @script_spec__add(%struct.script_spec* %20)
  br label %22

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %18, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.script_spec* @script_spec__find(i8*) #1

declare dso_local %struct.script_spec* @script_spec__new(i8*, %struct.scripting_ops*) #1

declare dso_local i32 @script_spec__add(%struct.script_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
