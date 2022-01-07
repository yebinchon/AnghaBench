; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writeback_check_extend.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_writeback_check_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pgio_header = type { i32, %struct.nfs_pgio_res, %struct.nfs_pgio_args }
%struct.nfs_pgio_res = type { i64 }
%struct.nfs_pgio_args = type { i64 }
%struct.nfs_fattr = type { i32, i64 }

@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pgio_header*, %struct.nfs_fattr*)* @nfs_writeback_check_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_writeback_check_extend(%struct.nfs_pgio_header* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.nfs_pgio_header*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca %struct.nfs_pgio_args*, align 8
  %6 = alloca %struct.nfs_pgio_res*, align 8
  %7 = alloca i64, align 8
  store %struct.nfs_pgio_header* %0, %struct.nfs_pgio_header** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %8 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %8, i32 0, i32 2
  store %struct.nfs_pgio_args* %9, %struct.nfs_pgio_args** %5, align 8
  %10 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %10, i32 0, i32 1
  store %struct.nfs_pgio_res* %11, %struct.nfs_pgio_res** %6, align 8
  %12 = load %struct.nfs_pgio_args*, %struct.nfs_pgio_args** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_pgio_args, %struct.nfs_pgio_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nfs_pgio_res*, %struct.nfs_pgio_res** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_pgio_res, %struct.nfs_pgio_res* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @nfs_size_to_loff_t(i64 %32)
  %34 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %35 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @i_size_read(i32 %36)
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %43 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %61

46:                                               ; preds = %29
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %49 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %61

53:                                               ; preds = %46
  %54 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %55 = call i32 @nfs_fattr_set_barrier(%struct.nfs_fattr* %54)
  %56 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %57 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %58 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %53, %52, %39
  ret void
}

declare dso_local i64 @nfs_size_to_loff_t(i64) #1

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @nfs_fattr_set_barrier(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
