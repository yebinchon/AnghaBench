; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPSRCCLS = common dso_local global i32 0, align 4
@IUCV_IPFGMID = common dso_local global i32 0, align 4
@IUCV_IPFGPID = common dso_local global i32 0, align 4
@IUCV_PURGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_message_purge(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2) #0 {
  %4 = alloca %struct.iucv_path*, align 8
  %5 = alloca %struct.iucv_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.iucv_param*, align 8
  %8 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %4, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @local_bh_disable()
  %10 = call i64 @cpumask_empty(i32* @iucv_buffer_cpumask)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  br label %66

15:                                               ; preds = %3
  %16 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %17 = call i64 (...) @smp_processor_id()
  %18 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %16, i64 %17
  %19 = load %union.iucv_param*, %union.iucv_param** %18, align 8
  store %union.iucv_param* %19, %union.iucv_param** %7, align 8
  %20 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %21 = call i32 @memset(%union.iucv_param* %20, i32 0, i32 24)
  %22 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %23 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %26 = bitcast %union.iucv_param* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 4
  %28 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %29 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %32 = bitcast %union.iucv_param* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %36 = bitcast %union.iucv_param* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @IUCV_IPSRCCLS, align 4
  %39 = load i32, i32* @IUCV_IPFGMID, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IUCV_IPFGPID, align 4
  %42 = or i32 %40, %41
  %43 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %44 = bitcast %union.iucv_param* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @IUCV_PURGE, align 4
  %47 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %48 = call i32 @iucv_call_b2f0(i32 %46, %union.iucv_param* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %15
  %52 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %53 = bitcast %union.iucv_param* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %58 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %60 = bitcast %union.iucv_param* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %64 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %51, %15
  br label %66

66:                                               ; preds = %65, %12
  %67 = call i32 (...) @local_bh_enable()
  %68 = load i32, i32* %8, align 4
  ret i32 %68
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
