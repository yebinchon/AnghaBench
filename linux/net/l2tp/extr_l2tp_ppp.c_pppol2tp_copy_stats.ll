; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_copy_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_copy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppol2tp_ioc_stats = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.l2tp_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pppol2tp_ioc_stats*, %struct.l2tp_stats*)* @pppol2tp_copy_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_copy_stats(%struct.pppol2tp_ioc_stats* %0, %struct.l2tp_stats* %1) #0 {
  %3 = alloca %struct.pppol2tp_ioc_stats*, align 8
  %4 = alloca %struct.l2tp_stats*, align 8
  store %struct.pppol2tp_ioc_stats* %0, %struct.pppol2tp_ioc_stats** %3, align 8
  store %struct.l2tp_stats* %1, %struct.l2tp_stats** %4, align 8
  %5 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %6 = call i32 @memset(%struct.pppol2tp_ioc_stats* %5, i32 0, i32 64)
  %7 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %8 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %7, i32 0, i32 7
  %9 = call i8* @atomic_long_read(i32* %8)
  %10 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %11 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %13 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %12, i32 0, i32 6
  %14 = call i8* @atomic_long_read(i32* %13)
  %15 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %16 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %18 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %17, i32 0, i32 5
  %19 = call i8* @atomic_long_read(i32* %18)
  %20 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %21 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %23 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %22, i32 0, i32 4
  %24 = call i8* @atomic_long_read(i32* %23)
  %25 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %26 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %28 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %27, i32 0, i32 3
  %29 = call i8* @atomic_long_read(i32* %28)
  %30 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %31 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %33 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %32, i32 0, i32 2
  %34 = call i8* @atomic_long_read(i32* %33)
  %35 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %36 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %38 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %37, i32 0, i32 1
  %39 = call i8* @atomic_long_read(i32* %38)
  %40 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %41 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.l2tp_stats*, %struct.l2tp_stats** %4, align 8
  %43 = getelementptr inbounds %struct.l2tp_stats, %struct.l2tp_stats* %42, i32 0, i32 0
  %44 = call i8* @atomic_long_read(i32* %43)
  %45 = load %struct.pppol2tp_ioc_stats*, %struct.pppol2tp_ioc_stats** %3, align 8
  %46 = getelementptr inbounds %struct.pppol2tp_ioc_stats, %struct.pppol2tp_ioc_stats* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  ret void
}

declare dso_local i32 @memset(%struct.pppol2tp_ioc_stats*, i32, i32) #1

declare dso_local i8* @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
