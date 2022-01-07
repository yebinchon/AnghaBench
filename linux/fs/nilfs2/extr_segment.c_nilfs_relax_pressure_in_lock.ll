; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_relax_pressure_in_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_relax_pressure_in_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i32 }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i32, i64 }

@NILFS_SC_PRIOR_FLUSH = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_relax_pressure_in_lock(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_sc_info*, align 8
  %5 = alloca %struct.nilfs_transaction_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  store %struct.the_nilfs* %8, %struct.the_nilfs** %3, align 8
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %10 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %9, i32 0, i32 1
  %11 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %10, align 8
  store %struct.nilfs_sc_info* %11, %struct.nilfs_sc_info** %4, align 8
  %12 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %13 = icmp ne %struct.nilfs_sc_info* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %16 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %62

20:                                               ; preds = %14
  %21 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %23 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %26 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %25, i32 0, i32 0
  %27 = call i32 @up_read(i32* %26)
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %29 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %28, i32 0, i32 0
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %20
  %36 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %37 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %38 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %43, align 8
  store %struct.nilfs_transaction_info* %44, %struct.nilfs_transaction_info** %5, align 8
  %45 = load i32, i32* @NILFS_TI_WRITER, align 4
  %46 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %47 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %4, align 8
  %51 = call i32 @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info* %50)
  %52 = load i32, i32* @NILFS_TI_WRITER, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %55 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %41, %35, %20
  %59 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %60 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %59, i32 0, i32 0
  %61 = call i32 @downgrade_write(i32* %60)
  br label %62

62:                                               ; preds = %58, %19
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info*) #1

declare dso_local i32 @downgrade_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
