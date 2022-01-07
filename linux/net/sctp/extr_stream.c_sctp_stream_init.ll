; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i32, i32 }
%struct.sctp_sched_ops = type { i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)* }
%struct.TYPE_2__ = type { i32 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@SCTP_STREAM_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_stream_init(%struct.sctp_stream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_sched_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sctp_stream* %0, %struct.sctp_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %13 = call %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream* %12)
  store %struct.sctp_sched_ops* %13, %struct.sctp_sched_ops** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @__GFP_NOWARN, align 4
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %61

23:                                               ; preds = %4
  %24 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %9, align 8
  %25 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %24, i32 0, i32 2
  %26 = load i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)** %25, align 8
  %27 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %28 = call i32 %26(%struct.sctp_stream* %27)
  %29 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sctp_stream_outq_migrate(%struct.sctp_stream* %29, i32* null, i32 %30)
  %32 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %9, align 8
  %33 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %32, i32 0, i32 1
  %34 = load i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)** %33, align 8
  %35 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %36 = call i32 %34(%struct.sctp_stream* %35)
  %37 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @sctp_stream_alloc_out(%struct.sctp_stream* %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  br label %86

44:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* @SCTP_STREAM_OPEN, align 4
  %53 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.TYPE_2__* @SCTP_SO(%struct.sctp_stream* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %45

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %22
  %62 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %63 = call i32 @sctp_stream_interleave_init(%struct.sctp_stream* %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %86

67:                                               ; preds = %61
  %68 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @sctp_stream_alloc_in(%struct.sctp_stream* %68, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %9, align 8
  %76 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %75, i32 0, i32 0
  %77 = load i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)** %76, align 8
  %78 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %79 = call i32 %77(%struct.sctp_stream* %78)
  %80 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %81 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %80, i32 0, i32 1
  %82 = call i32 @genradix_free(i32* %81)
  %83 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %84 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %86

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %74, %66, %43
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream*) #1

declare dso_local i32 @sctp_stream_outq_migrate(%struct.sctp_stream*, i32*, i32) #1

declare dso_local i32 @sctp_stream_alloc_out(%struct.sctp_stream*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local i32 @sctp_stream_interleave_init(%struct.sctp_stream*) #1

declare dso_local i32 @sctp_stream_alloc_in(%struct.sctp_stream*, i32, i32) #1

declare dso_local i32 @genradix_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
