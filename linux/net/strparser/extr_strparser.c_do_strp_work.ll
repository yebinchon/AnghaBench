; ModuleID = '/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_do_strp_work.c'
source_filename = "/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_do_strp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.strparser.0*)*, i32 (%struct.strparser.1*)* }
%struct.strparser.0 = type opaque
%struct.strparser.1 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@strp_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strparser*)* @do_strp_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_strp_work(%struct.strparser* %0) #0 {
  %2 = alloca %struct.strparser*, align 8
  store %struct.strparser* %0, %struct.strparser** %2, align 8
  %3 = load %struct.strparser*, %struct.strparser** %2, align 8
  %4 = getelementptr inbounds %struct.strparser, %struct.strparser* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32 (%struct.strparser.1*)*, i32 (%struct.strparser.1*)** %5, align 8
  %7 = load %struct.strparser*, %struct.strparser** %2, align 8
  %8 = bitcast %struct.strparser* %7 to %struct.strparser.1*
  %9 = call i32 %6(%struct.strparser.1* %8)
  %10 = load %struct.strparser*, %struct.strparser** %2, align 8
  %11 = getelementptr inbounds %struct.strparser, %struct.strparser* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.strparser*, %struct.strparser** %2, align 8
  %18 = getelementptr inbounds %struct.strparser, %struct.strparser* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %34

22:                                               ; preds = %16
  %23 = load %struct.strparser*, %struct.strparser** %2, align 8
  %24 = call i32 @strp_read_sock(%struct.strparser* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @strp_wq, align 4
  %30 = load %struct.strparser*, %struct.strparser** %2, align 8
  %31 = getelementptr inbounds %struct.strparser, %struct.strparser* %30, i32 0, i32 1
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33, %21, %15
  %35 = load %struct.strparser*, %struct.strparser** %2, align 8
  %36 = getelementptr inbounds %struct.strparser, %struct.strparser* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.strparser.0*)*, i32 (%struct.strparser.0*)** %37, align 8
  %39 = load %struct.strparser*, %struct.strparser** %2, align 8
  %40 = bitcast %struct.strparser* %39 to %struct.strparser.0*
  %41 = call i32 %38(%struct.strparser.0* %40)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strp_read_sock(%struct.strparser*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
