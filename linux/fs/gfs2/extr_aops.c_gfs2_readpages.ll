; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@gfs2_block_map = common dso_local global i32 0, align 4
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* @gfs2_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca %struct.gfs2_holder, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %11, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %22 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LM_ST_SHARED, align 4
  %25 = call i32 @gfs2_holder_init(i32 %23, i32 %24, i32 0, %struct.gfs2_holder* %12)
  %26 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %12)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %43

31:                                               ; preds = %4
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %33 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.address_space*, %struct.address_space** %6, align 8
  %37 = load %struct.list_head*, %struct.list_head** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @gfs2_block_map, align 4
  %40 = call i32 @mpage_readpages(%struct.address_space* %36, %struct.list_head* %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %12)
  br label %43

43:                                               ; preds = %41, %30
  %44 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %12)
  %45 = load i32, i32* @SDF_WITHDRAWN, align 4
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %47 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %46, i32 0, i32 0
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @mpage_readpages(%struct.address_space*, %struct.list_head*, i32, i32) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
