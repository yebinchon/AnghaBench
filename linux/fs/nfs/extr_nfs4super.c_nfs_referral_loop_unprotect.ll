; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_referral_loop_unprotect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_referral_loop_unprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_referral_count = type { i64, i32 }

@nfs_referral_count_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfs_referral_loop_unprotect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_referral_loop_unprotect() #0 {
  %1 = alloca %struct.nfs_referral_count*, align 8
  %2 = call i32 @spin_lock(i32* @nfs_referral_count_list_lock)
  %3 = call %struct.nfs_referral_count* (...) @nfs_find_referral_count()
  store %struct.nfs_referral_count* %3, %struct.nfs_referral_count** %1, align 8
  %4 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %5 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %9 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %14 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %13, i32 0, i32 1
  %15 = call i32 @list_del(i32* %14)
  br label %17

16:                                               ; preds = %0
  store %struct.nfs_referral_count* null, %struct.nfs_referral_count** %1, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = call i32 @spin_unlock(i32* @nfs_referral_count_list_lock)
  %19 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %20 = call i32 @kfree(%struct.nfs_referral_count* %19)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_referral_count* @nfs_find_referral_count(...) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nfs_referral_count*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
