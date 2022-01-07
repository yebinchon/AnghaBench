; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_nilfs.h_nilfs_test_transaction_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_nilfs.h_nilfs_test_transaction_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nilfs_test_transaction_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_test_transaction_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_transaction_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  store %struct.nilfs_transaction_info* %7, %struct.nilfs_transaction_info** %4, align 8
  %8 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %9 = icmp eq %struct.nilfs_transaction_info* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %12 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %27

17:                                               ; preds = %10
  %18 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %17, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
