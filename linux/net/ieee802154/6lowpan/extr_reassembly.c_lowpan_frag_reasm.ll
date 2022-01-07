; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_frag_reasm.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_reassembly.c_lowpan_frag_reasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_frag_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"lowpan_frag_reasm: no memory for reassembly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lowpan_frag_queue*, %struct.sk_buff*, %struct.sk_buff*, %struct.net_device*)* @lowpan_frag_reasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_frag_reasm(%struct.lowpan_frag_queue* %0, %struct.sk_buff* %1, %struct.sk_buff* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lowpan_frag_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  store %struct.lowpan_frag_queue* %0, %struct.lowpan_frag_queue** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %12 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %11, i32 0, i32 0
  %13 = call i32 @inet_frag_kill(%struct.TYPE_4__* %12)
  %14 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %15 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i8* @inet_frag_reasm_prepare(%struct.TYPE_4__* %15, %struct.sk_buff* %16, %struct.sk_buff* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %24 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @inet_frag_reasm_finish(%struct.TYPE_4__* %24, %struct.sk_buff* %25, i8* %26, i32 0)
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  store %struct.net_device* %28, %struct.net_device** %30, align 8
  %31 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %32 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @RB_ROOT, align 4
  %38 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %39 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %42 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.lowpan_frag_queue*, %struct.lowpan_frag_queue** %6, align 8
  %45 = getelementptr inbounds %struct.lowpan_frag_queue, %struct.lowpan_frag_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  store i32 1, i32* %5, align 4
  br label %49

47:                                               ; preds = %21
  %48 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %22
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @inet_frag_kill(%struct.TYPE_4__*) #1

declare dso_local i8* @inet_frag_reasm_prepare(%struct.TYPE_4__*, %struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @inet_frag_reasm_finish(%struct.TYPE_4__*, %struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
