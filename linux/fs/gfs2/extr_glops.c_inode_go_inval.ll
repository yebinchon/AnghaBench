; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_inval.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.gfs2_inode = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.address_space*, i32 }
%struct.address_space = type { i32 }

@DIO_METADATA = common dso_local global i32 0, align 4
@GIF_INVALID = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_FLUSH_NORMAL = common dso_local global i32 0, align 4
@GFS2_LFC_INODE_GO_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32)* @inode_go_inval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_go_inval(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.address_space*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %8 = call %struct.gfs2_inode* @gfs2_glock2inode(%struct.gfs2_glock* %7)
  store %struct.gfs2_inode* %8, %struct.gfs2_inode** %5, align 8
  %9 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %13, i32 0, i32 1
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gfs2_assert_withdraw(%struct.TYPE_8__* %12, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DIO_METADATA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %26 = call %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock* %25)
  store %struct.address_space* %26, %struct.address_space** %6, align 8
  %27 = load %struct.address_space*, %struct.address_space** %6, align 8
  %28 = call i32 @truncate_inode_pages(%struct.address_space* %27, i32 0)
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %30 = icmp ne %struct.gfs2_inode* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i32, i32* @GIF_INVALID, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 1
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = call i32 @forget_all_cached_acls(%struct.TYPE_7__* %37)
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = call i32 @security_inode_invalidate_secctx(%struct.TYPE_7__* %40)
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %43 = call i32 @gfs2_dir_hash_inval(%struct.gfs2_inode* %42)
  br label %44

44:                                               ; preds = %31, %24
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %47 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %48 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.gfs2_inode* @GFS2_I(i32 %52)
  %54 = icmp eq %struct.gfs2_inode* %46, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %45
  %56 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* @GFS2_LOG_HEAD_FLUSH_NORMAL, align 4
  %61 = load i32, i32* @GFS2_LFC_INODE_GO_INVAL, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @gfs2_log_flush(%struct.TYPE_8__* %59, i32* null, i32 %62)
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %65 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %55, %45
  %70 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %71 = icmp ne %struct.gfs2_inode* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @S_ISREG(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %81 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.address_space*, %struct.address_space** %82, align 8
  %84 = call i32 @truncate_inode_pages(%struct.address_space* %83, i32 0)
  br label %85

85:                                               ; preds = %79, %72, %69
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %87 = call i32 @gfs2_clear_glop_pending(%struct.gfs2_inode* %86)
  ret void
}

declare dso_local %struct.gfs2_inode* @gfs2_glock2inode(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_assert_withdraw(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.address_space* @gfs2_glock2aspace(%struct.gfs2_glock*) #1

declare dso_local i32 @truncate_inode_pages(%struct.address_space*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.TYPE_7__*) #1

declare dso_local i32 @security_inode_invalidate_secctx(%struct.TYPE_7__*) #1

declare dso_local i32 @gfs2_dir_hash_inval(%struct.gfs2_inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @gfs2_clear_glop_pending(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
