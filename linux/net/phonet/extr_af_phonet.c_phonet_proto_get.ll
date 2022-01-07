; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_phonet_proto_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_phonet_proto_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phonet_protocol = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHONET_NPROTO = common dso_local global i32 0, align 4
@proto_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phonet_protocol* (i32)* @phonet_proto_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phonet_protocol* @phonet_proto_get(i32 %0) #0 {
  %2 = alloca %struct.phonet_protocol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phonet_protocol*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PHONET_NPROTO, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.phonet_protocol* null, %struct.phonet_protocol** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32*, i32** @proto_tab, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.phonet_protocol* @rcu_dereference(i32 %15)
  store %struct.phonet_protocol* %16, %struct.phonet_protocol** %4, align 8
  %17 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  %18 = icmp ne %struct.phonet_protocol* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %9
  %20 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  %21 = getelementptr inbounds %struct.phonet_protocol, %struct.phonet_protocol* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @try_module_get(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.phonet_protocol* null, %struct.phonet_protocol** %4, align 8
  br label %28

28:                                               ; preds = %27, %19, %9
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  store %struct.phonet_protocol* %30, %struct.phonet_protocol** %2, align 8
  br label %31

31:                                               ; preds = %28, %8
  %32 = load %struct.phonet_protocol*, %struct.phonet_protocol** %2, align 8
  ret %struct.phonet_protocol* %32
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.phonet_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
