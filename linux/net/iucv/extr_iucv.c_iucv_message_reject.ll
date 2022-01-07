; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_reject.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPTRGCLS = common dso_local global i32 0, align 4
@IUCV_IPFGMID = common dso_local global i32 0, align 4
@IUCV_IPFGPID = common dso_local global i32 0, align 4
@IUCV_REJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_message_reject(%struct.iucv_path* %0, %struct.iucv_message* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca %struct.iucv_message*, align 8
  %5 = alloca %union.iucv_param*, align 8
  %6 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %4, align 8
  %7 = call i32 (...) @local_bh_disable()
  %8 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %15 = call i64 (...) @smp_processor_id()
  %16 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %14, i64 %15
  %17 = load %union.iucv_param*, %union.iucv_param** %16, align 8
  store %union.iucv_param* %17, %union.iucv_param** %5, align 8
  %18 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %19 = call i32 @memset(%union.iucv_param* %18, i32 0, i32 16)
  %20 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %21 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %24 = bitcast %union.iucv_param* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %27 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %30 = bitcast %union.iucv_param* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %33 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %36 = bitcast %union.iucv_param* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @IUCV_IPTRGCLS, align 4
  %39 = load i32, i32* @IUCV_IPFGMID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IUCV_IPFGPID, align 4
  %42 = or i32 %40, %41
  %43 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %44 = bitcast %union.iucv_param* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @IUCV_REJECT, align 4
  %47 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %48 = call i32 @iucv_call_b2f0(i32 %46, %union.iucv_param* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %13, %10
  %50 = call i32 (...) @local_bh_enable()
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
