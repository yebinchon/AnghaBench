; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_protocol.c_p9stat_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_protocol.c_p9stat_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_wstat = type { i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p9stat_free(%struct.p9_wstat* %0) #0 {
  %2 = alloca %struct.p9_wstat*, align 8
  store %struct.p9_wstat* %0, %struct.p9_wstat** %2, align 8
  %3 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %4 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @kfree(i32* %5)
  %7 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %8 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %7, i32 0, i32 4
  store i32* null, i32** %8, align 8
  %9 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %10 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %14 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %16 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %20 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %22 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %26 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %28 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %32 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
