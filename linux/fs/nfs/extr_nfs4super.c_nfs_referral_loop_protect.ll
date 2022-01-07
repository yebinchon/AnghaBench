; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_referral_loop_protect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_referral_loop_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_referral_count = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@nfs_referral_count_list_lock = common dso_local global i32 0, align 4
@NFS_MAX_NESTED_REFERRALS = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@nfs_referral_count_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nfs_referral_loop_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_referral_loop_protect() #0 {
  %1 = alloca %struct.nfs_referral_count*, align 8
  %2 = alloca %struct.nfs_referral_count*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfs_referral_count* @kmalloc(i32 12, i32 %6)
  store %struct.nfs_referral_count* %7, %struct.nfs_referral_count** %2, align 8
  %8 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %2, align 8
  %9 = icmp ne %struct.nfs_referral_count* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %45

11:                                               ; preds = %0
  %12 = load i32, i32* @current, align 4
  %13 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  store i32 0, i32* %3, align 4
  %17 = call i32 @spin_lock(i32* @nfs_referral_count_list_lock)
  %18 = call %struct.nfs_referral_count* (...) @nfs_find_referral_count()
  store %struct.nfs_referral_count* %18, %struct.nfs_referral_count** %1, align 8
  %19 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %20 = icmp ne %struct.nfs_referral_count* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %11
  %22 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %23 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @NFS_MAX_NESTED_REFERRALS, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ELOOP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %1, align 8
  %33 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %28
  br label %41

37:                                               ; preds = %11
  %38 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %2, align 8
  %39 = getelementptr inbounds %struct.nfs_referral_count, %struct.nfs_referral_count* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %39, i32* @nfs_referral_count_list)
  store %struct.nfs_referral_count* null, %struct.nfs_referral_count** %2, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = call i32 @spin_unlock(i32* @nfs_referral_count_list_lock)
  %43 = load %struct.nfs_referral_count*, %struct.nfs_referral_count** %2, align 8
  %44 = call i32 @kfree(%struct.nfs_referral_count* %43)
  br label %45

45:                                               ; preds = %41, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nfs_referral_count* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_referral_count* @nfs_find_referral_count(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nfs_referral_count*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
