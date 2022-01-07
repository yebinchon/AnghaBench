; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_nlm_alloc_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_nlm_alloc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_lock_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NFS_CONTEXT_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs3_nlm_alloc_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_nlm_alloc_call(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_lock_context*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nfs_lock_context*
  store %struct.nfs_lock_context* %5, %struct.nfs_lock_context** %3, align 8
  %6 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %7 = icmp ne %struct.nfs_lock_context* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @NFS_CONTEXT_UNLOCK, align 4
  %10 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @get_nfs_open_context(%struct.TYPE_3__* %19)
  %21 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @nfs_get_lock_context(%struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %16, %8, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @get_nfs_open_context(%struct.TYPE_3__*) #1

declare dso_local i32 @nfs_get_lock_context(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
