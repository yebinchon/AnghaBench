; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched_prio.c_sctp_sched_prio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i32 }
%struct.sctp_stream_out = type { %struct.sctp_stream_out_ext* }
%struct.sctp_stream_out_ext = type { %struct.sctp_stream_priorities* }
%struct.sctp_stream_priorities = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_stream*, i32, i32, i32)* @sctp_sched_prio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sched_prio_set(%struct.sctp_stream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_stream_out*, align 8
  %11 = alloca %struct.sctp_stream_out_ext*, align 8
  %12 = alloca %struct.sctp_stream_priorities*, align 8
  %13 = alloca %struct.sctp_stream_priorities*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sctp_stream* %0, %struct.sctp_stream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %16, i32 %17)
  store %struct.sctp_stream_out* %18, %struct.sctp_stream_out** %10, align 8
  %19 = load %struct.sctp_stream_out*, %struct.sctp_stream_out** %10, align 8
  %20 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %19, i32 0, i32 0
  %21 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %20, align 8
  store %struct.sctp_stream_out_ext* %21, %struct.sctp_stream_out_ext** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.sctp_stream_priorities* @sctp_sched_prio_get_head(%struct.sctp_stream* %22, i32 %23, i32 %24)
  store %struct.sctp_stream_priorities* %25, %struct.sctp_stream_priorities** %12, align 8
  %26 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %12, align 8
  %27 = icmp ne %struct.sctp_stream_priorities* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %79

31:                                               ; preds = %4
  %32 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %11, align 8
  %33 = call i32 @sctp_sched_prio_unsched(%struct.sctp_stream_out_ext* %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %11, align 8
  %35 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %34, i32 0, i32 0
  %36 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %35, align 8
  store %struct.sctp_stream_priorities* %36, %struct.sctp_stream_priorities** %13, align 8
  %37 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %12, align 8
  %38 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %11, align 8
  %39 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %38, i32 0, i32 0
  store %struct.sctp_stream_priorities* %37, %struct.sctp_stream_priorities** %39, align 8
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %44 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %11, align 8
  %45 = call i32 @sctp_sched_prio_sched(%struct.sctp_stream* %43, %struct.sctp_stream_out_ext* %44)
  br label %46

46:                                               ; preds = %42, %31
  %47 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %13, align 8
  %48 = icmp ne %struct.sctp_stream_priorities* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %79

50:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %54 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream* %58, i32 %59)
  %61 = getelementptr inbounds %struct.sctp_stream_out, %struct.sctp_stream_out* %60, i32 0, i32 0
  %62 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %61, align 8
  store %struct.sctp_stream_out_ext* %62, %struct.sctp_stream_out_ext** %11, align 8
  %63 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %11, align 8
  %64 = icmp ne %struct.sctp_stream_out_ext* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.sctp_stream_out_ext*, %struct.sctp_stream_out_ext** %11, align 8
  %67 = getelementptr inbounds %struct.sctp_stream_out_ext, %struct.sctp_stream_out_ext* %66, i32 0, i32 0
  %68 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %67, align 8
  %69 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %13, align 8
  %70 = icmp eq %struct.sctp_stream_priorities* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %79

72:                                               ; preds = %65, %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.sctp_stream_priorities*, %struct.sctp_stream_priorities** %13, align 8
  %78 = call i32 @kfree(%struct.sctp_stream_priorities* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %71, %49, %28
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.sctp_stream_out* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local %struct.sctp_stream_priorities* @sctp_sched_prio_get_head(%struct.sctp_stream*, i32, i32) #1

declare dso_local i32 @sctp_sched_prio_unsched(%struct.sctp_stream_out_ext*) #1

declare dso_local i32 @sctp_sched_prio_sched(%struct.sctp_stream*, %struct.sctp_stream_out_ext*) #1

declare dso_local i32 @kfree(%struct.sctp_stream_priorities*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
