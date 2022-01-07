; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_op_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-cache.c_op_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_kernel_op_s = type { i32 }

@GOSSIP_CACHE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Releasing OP (%p: %llu)\0A\00", align 1
@op_cache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"NULL pointer in op_release\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op_release(%struct.orangefs_kernel_op_s* %0) #0 {
  %2 = alloca %struct.orangefs_kernel_op_s*, align 8
  store %struct.orangefs_kernel_op_s* %0, %struct.orangefs_kernel_op_s** %2, align 8
  %3 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %4 = icmp ne %struct.orangefs_kernel_op_s* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* @GOSSIP_CACHE_DEBUG, align 4
  %7 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %8 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %9 = getelementptr inbounds %struct.orangefs_kernel_op_s, %struct.orangefs_kernel_op_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @llu(i32 %10)
  %12 = call i32 @gossip_debug(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.orangefs_kernel_op_s* %7, i32 %11)
  %13 = load i32, i32* @op_cache, align 4
  %14 = load %struct.orangefs_kernel_op_s*, %struct.orangefs_kernel_op_s** %2, align 8
  %15 = call i32 @kmem_cache_free(i32 %13, %struct.orangefs_kernel_op_s* %14)
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @gossip_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @gossip_debug(i32, i8*, %struct.orangefs_kernel_op_s*, i32) #1

declare dso_local i32 @llu(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.orangefs_kernel_op_s*) #1

declare dso_local i32 @gossip_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
