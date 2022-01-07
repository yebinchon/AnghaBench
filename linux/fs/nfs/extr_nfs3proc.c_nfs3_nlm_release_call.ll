; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_nlm_release_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_nlm_release_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_lock_context = type { %struct.nfs_open_context* }
%struct.nfs_open_context = type { i32 }

@NFS_CONTEXT_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs3_nlm_release_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs3_nlm_release_call(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs_lock_context*, align 8
  %4 = alloca %struct.nfs_open_context*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfs_lock_context*
  store %struct.nfs_lock_context* %6, %struct.nfs_lock_context** %3, align 8
  %7 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %8 = icmp ne %struct.nfs_lock_context* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @NFS_CONTEXT_UNLOCK, align 4
  %11 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %11, i32 0, i32 0
  %13 = load %struct.nfs_open_context*, %struct.nfs_open_context** %12, align 8
  %14 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %10, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %18, i32 0, i32 0
  %20 = load %struct.nfs_open_context*, %struct.nfs_open_context** %19, align 8
  store %struct.nfs_open_context* %20, %struct.nfs_open_context** %4, align 8
  %21 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %3, align 8
  %22 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %21)
  %23 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %24 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %23)
  br label %25

25:                                               ; preds = %17, %9, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
