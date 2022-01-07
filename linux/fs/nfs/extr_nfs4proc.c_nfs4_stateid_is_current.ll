; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_stateid_is_current.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_stateid_is_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.nfs_lock_context = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.nfs_open_context*, %struct.nfs_lock_context*, i32)* @nfs4_stateid_is_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_stateid_is_current(i32* %0, %struct.nfs_open_context* %1, %struct.nfs_lock_context* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.nfs_lock_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %7, align 8
  store %struct.nfs_lock_context* %2, %struct.nfs_lock_context** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %12 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @nfs4_set_rw_stateid(i32* %10, %struct.nfs_open_context* %11, %struct.nfs_lock_context* %12, i32 %13)
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @nfs4_stateid_match(i32* %20, i32* %10)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %18
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @nfs4_set_rw_stateid(i32*, %struct.nfs_open_context*, %struct.nfs_lock_context*, i32) #1

declare dso_local i32 @nfs4_stateid_match(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
