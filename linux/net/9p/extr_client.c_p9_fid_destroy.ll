; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_fid_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_fid_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { %struct.p9_fid*, i32, %struct.p9_client* }
%struct.p9_client = type { i32, i32 }

@P9_DEBUG_FID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_fid*)* @p9_fid_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_fid_destroy(%struct.p9_fid* %0) #0 {
  %2 = alloca %struct.p9_fid*, align 8
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i64, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %2, align 8
  %5 = load i32, i32* @P9_DEBUG_FID, align 4
  %6 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %7 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @p9_debug(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %11 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %10, i32 0, i32 2
  %12 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  store %struct.p9_client* %12, %struct.p9_client** %3, align 8
  %13 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %14 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %18 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %17, i32 0, i32 1
  %19 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @idr_remove(i32* %18, i32 %21)
  %23 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %24 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %28 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %27, i32 0, i32 0
  %29 = load %struct.p9_fid*, %struct.p9_fid** %28, align 8
  %30 = call i32 @kfree(%struct.p9_fid* %29)
  %31 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %32 = call i32 @kfree(%struct.p9_fid* %31)
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
