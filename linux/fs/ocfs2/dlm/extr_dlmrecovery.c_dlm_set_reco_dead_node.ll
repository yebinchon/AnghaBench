; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_set_reco_dead_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_set_reco_dead_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"%s: changing dead_node from %u to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, i64)* @dlm_set_reco_dead_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_set_reco_dead_node(%struct.dlm_ctxt* %0, i64 %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i64, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 2
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
