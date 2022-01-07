; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_ctx_to_openmode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_ctx_to_openmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_open_context*)* @_nfs4_ctx_to_openmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_ctx_to_openmode(%struct.nfs_open_context* %0) #0 {
  %2 = alloca %struct.nfs_open_context*, align 8
  %3 = alloca i32, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %2, align 8
  %4 = load %struct.nfs_open_context*, %struct.nfs_open_context** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FMODE_READ, align 4
  %8 = load i32, i32* @FMODE_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.nfs_open_context*, %struct.nfs_open_context** %2, align 8
  %12 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FMODE_EXEC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @FMODE_READ, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %18, %19
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
