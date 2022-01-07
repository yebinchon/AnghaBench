; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_get_unique.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_get_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_iqueue = type { i32 }

@FUSE_REQ_ID_STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_get_unique(%struct.fuse_iqueue* %0) #0 {
  %2 = alloca %struct.fuse_iqueue*, align 8
  store %struct.fuse_iqueue* %0, %struct.fuse_iqueue** %2, align 8
  %3 = load i64, i64* @FUSE_REQ_ID_STEP, align 8
  %4 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %2, align 8
  %5 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, %3
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load %struct.fuse_iqueue*, %struct.fuse_iqueue** %2, align 8
  %11 = getelementptr inbounds %struct.fuse_iqueue, %struct.fuse_iqueue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
