; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfsiod_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfsiod_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"RPC:       creating workqueue nfsiod\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"nfsiod\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfsiod_workqueue = common dso_local global %struct.workqueue_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nfsiod_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsiod_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.workqueue_struct*, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %5 = call %struct.workqueue_struct* @alloc_workqueue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 0)
  store %struct.workqueue_struct* %5, %struct.workqueue_struct** %2, align 8
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  %7 = icmp eq %struct.workqueue_struct* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = load %struct.workqueue_struct*, %struct.workqueue_struct** %2, align 8
  store %struct.workqueue_struct* %12, %struct.workqueue_struct** @nfsiod_workqueue, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
