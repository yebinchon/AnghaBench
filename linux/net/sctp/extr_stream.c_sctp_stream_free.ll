; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i32, i32, i32 }
%struct.sctp_sched_ops = type { i32 (%struct.sctp_stream*)* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_stream_free(%struct.sctp_stream* %0) #0 {
  %2 = alloca %struct.sctp_stream*, align 8
  %3 = alloca %struct.sctp_sched_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.sctp_stream* %0, %struct.sctp_stream** %2, align 8
  %5 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %6 = call %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream* %5)
  store %struct.sctp_sched_ops* %6, %struct.sctp_sched_ops** %3, align 8
  %7 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %7, i32 0, i32 0
  %9 = load i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)** %8, align 8
  %10 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %11 = call i32 %9(%struct.sctp_stream* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.TYPE_2__* @SCTP_SO(%struct.sctp_stream* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %30 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %29, i32 0, i32 2
  %31 = call i32 @genradix_free(i32* %30)
  %32 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %33 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %32, i32 0, i32 1
  %34 = call i32 @genradix_free(i32* %33)
  ret void
}

declare dso_local %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.TYPE_2__* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local i32 @genradix_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
