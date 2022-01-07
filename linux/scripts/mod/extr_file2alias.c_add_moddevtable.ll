; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_add_moddevtable.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_add_moddevtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_moddevtable(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.buffer*, %struct.buffer** %3, align 8
  %6 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.buffer*, %struct.buffer** %3, align 8
  %8 = load %struct.module*, %struct.module** %4, align 8
  %9 = getelementptr inbounds %struct.module, %struct.module* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.module*, %struct.module** %4, align 8
  %13 = getelementptr inbounds %struct.module, %struct.module* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @buf_write(%struct.buffer* %7, i32 %11, i32 %15)
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free(i32 %20)
  ret void
}

declare dso_local i32 @buf_printf(%struct.buffer*, i8*) #1

declare dso_local i32 @buf_write(%struct.buffer*, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
