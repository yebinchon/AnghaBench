; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dsos.c___dsos__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dsos.c___dsos__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsos = type { i32, i32 }
%struct.dso = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dsos__add(%struct.dsos* %0, %struct.dso* %1) #0 {
  %3 = alloca %struct.dsos*, align 8
  %4 = alloca %struct.dso*, align 8
  store %struct.dsos* %0, %struct.dsos** %3, align 8
  store %struct.dso* %1, %struct.dso** %4, align 8
  %5 = load %struct.dso*, %struct.dso** %4, align 8
  %6 = getelementptr inbounds %struct.dso, %struct.dso* %5, i32 0, i32 0
  %7 = load %struct.dsos*, %struct.dsos** %3, align 8
  %8 = getelementptr inbounds %struct.dsos, %struct.dsos* %7, i32 0, i32 1
  %9 = call i32 @list_add_tail(i32* %6, i32* %8)
  %10 = load %struct.dsos*, %struct.dsos** %3, align 8
  %11 = getelementptr inbounds %struct.dsos, %struct.dsos* %10, i32 0, i32 0
  %12 = load %struct.dso*, %struct.dso** %4, align 8
  %13 = call i32 @__dsos__findnew_link_by_longname(i32* %11, %struct.dso* %12, i32* null)
  %14 = load %struct.dso*, %struct.dso** %4, align 8
  %15 = call i32 @dso__get(%struct.dso* %14)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__dsos__findnew_link_by_longname(i32*, %struct.dso*, i32*) #1

declare dso_local i32 @dso__get(%struct.dso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
