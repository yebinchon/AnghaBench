; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_scm.c_put_cmsg_scm_timestamping64.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_scm.c_put_cmsg_scm_timestamping64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.scm_timestamping_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scm_timestamping64 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TIMESTAMPING_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_cmsg_scm_timestamping64(%struct.msghdr* %0, %struct.scm_timestamping_internal* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.scm_timestamping_internal*, align 8
  %5 = alloca %struct.scm_timestamping64, align 8
  %6 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.scm_timestamping_internal* %1, %struct.scm_timestamping_internal** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds %struct.scm_timestamping64, %struct.scm_timestamping64* %5, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %10)
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load %struct.scm_timestamping_internal*, %struct.scm_timestamping_internal** %4, align 8
  %15 = getelementptr inbounds %struct.scm_timestamping_internal, %struct.scm_timestamping_internal* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.scm_timestamping64, %struct.scm_timestamping64* %5, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %21, i32* %27, align 4
  %28 = load %struct.scm_timestamping_internal*, %struct.scm_timestamping_internal** %4, align 8
  %29 = getelementptr inbounds %struct.scm_timestamping_internal, %struct.scm_timestamping_internal* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.scm_timestamping64, %struct.scm_timestamping64* %5, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %13
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %47 = load i32, i32* @SOL_SOCKET, align 4
  %48 = load i32, i32* @SO_TIMESTAMPING_NEW, align 4
  %49 = call i32 @put_cmsg(%struct.msghdr* %46, i32 %47, i32 %48, i32 8, %struct.scm_timestamping64* %5)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.scm_timestamping64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
