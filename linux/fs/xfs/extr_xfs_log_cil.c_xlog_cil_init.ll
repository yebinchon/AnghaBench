; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { %struct.xfs_cil* }
%struct.xfs_cil = type { i32, %struct.xlog*, %struct.xfs_cil_ctx*, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_cil_ctx = type { i32, %struct.xfs_cil*, i32, i32 }

@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xlog_cil_push_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xlog_cil_init(%struct.xlog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlog*, align 8
  %4 = alloca %struct.xfs_cil*, align 8
  %5 = alloca %struct.xfs_cil_ctx*, align 8
  store %struct.xlog* %0, %struct.xlog** %3, align 8
  %6 = load i32, i32* @KM_MAYFAIL, align 4
  %7 = call i8* @kmem_zalloc(i32 56, i32 %6)
  %8 = bitcast i8* %7 to %struct.xfs_cil*
  store %struct.xfs_cil* %8, %struct.xfs_cil** %4, align 8
  %9 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %10 = icmp ne %struct.xfs_cil* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load i32, i32* @KM_MAYFAIL, align 4
  %16 = call i8* @kmem_zalloc(i32 24, i32 %15)
  %17 = bitcast i8* %16 to %struct.xfs_cil_ctx*
  store %struct.xfs_cil_ctx* %17, %struct.xfs_cil_ctx** %5, align 8
  %18 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %19 = icmp ne %struct.xfs_cil_ctx* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %22 = call i32 @kmem_free(%struct.xfs_cil* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %14
  %26 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %26, i32 0, i32 9
  %28 = load i32, i32* @xlog_cil_push_work, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %30, i32 0, i32 8
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %33, i32 0, i32 7
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %39, i32 0, i32 5
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %42, i32 0, i32 4
  %44 = call i32 @init_rwsem(i32* %43)
  %45 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %45, i32 0, i32 3
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %48, i32 0, i32 3
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %57 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %57, i32 0, i32 1
  store %struct.xfs_cil* %56, %struct.xfs_cil** %58, align 8
  %59 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %60 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %61 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %60, i32 0, i32 2
  store %struct.xfs_cil_ctx* %59, %struct.xfs_cil_ctx** %61, align 8
  %62 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %66 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.xlog*, %struct.xlog** %3, align 8
  %68 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_cil, %struct.xfs_cil* %68, i32 0, i32 1
  store %struct.xlog* %67, %struct.xlog** %69, align 8
  %70 = load %struct.xfs_cil*, %struct.xfs_cil** %4, align 8
  %71 = load %struct.xlog*, %struct.xlog** %3, align 8
  %72 = getelementptr inbounds %struct.xlog, %struct.xlog* %71, i32 0, i32 0
  store %struct.xfs_cil* %70, %struct.xfs_cil** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %25, %20, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_cil*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
