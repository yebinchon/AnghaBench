; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_main_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_main_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.rlimit = type { i64, i64 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@rlim_old = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @main_ctor, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @main_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_ctor() #0 {
  %1 = alloca %struct.rlimit, align 8
  %2 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %3 = call i32 @getrlimit(i32 %2, %struct.TYPE_3__* @rlim_old)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rlim_old, i32 0, i32 0), align 8
  %5 = load i64, i64* @RLIM_INFINITY, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rlim_old, i32 0, i32 0), align 8
  %9 = add i64 %8, 1048576
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rlim_old, i32 0, i32 1), align 8
  %12 = add i64 %11, 1048576
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %15 = call i32 @setrlimit(i32 %14, %struct.rlimit* %1)
  br label %16

16:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @getrlimit(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
