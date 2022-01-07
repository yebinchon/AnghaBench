; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_bh_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_bh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, %struct.gfs2_quota_change*, %struct.buffer_head*, %struct.TYPE_5__* }
%struct.gfs2_quota_change = type { i32 }
%struct.buffer_head = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32, i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DIO_WAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_METATYPE_QC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_quota_data*)* @bh_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh_get(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_quota_data*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %3, align 8
  %11 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %4, align 8
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gfs2_inode* @GFS2_I(i32 %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %5, align 8
  %21 = bitcast %struct.buffer_head* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  store i32 0, i32* %2, align 4
  br label %112

34:                                               ; preds = %1
  %35 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = udiv i32 %37, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %46 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = urem i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 1
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @gfs2_block_map(%struct.TYPE_6__* %56, i32 %57, %struct.buffer_head* %10, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  br label %103

62:                                               ; preds = %34
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DIO_WAIT, align 4
  %69 = call i32 @gfs2_meta_read(i32 %65, i32 %67, i32 %68, i32 0, %struct.buffer_head** %8)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %103

73:                                               ; preds = %62
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %78 = load i32, i32* @GFS2_METATYPE_QC, align 4
  %79 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %76, %struct.buffer_head* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %100

82:                                               ; preds = %73
  %83 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %84 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %85 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %84, i32 0, i32 3
  store %struct.buffer_head* %83, %struct.buffer_head** %85, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 4
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = add i64 %89, %92
  %94 = inttoptr i64 %93 to %struct.gfs2_quota_change*
  %95 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %96 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %95, i32 0, i32 2
  store %struct.gfs2_quota_change* %94, %struct.gfs2_quota_change** %96, align 8
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  store i32 0, i32* %2, align 4
  br label %112

100:                                              ; preds = %81
  %101 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  br label %103

103:                                              ; preds = %100, %72, %61
  %104 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %3, align 8
  %105 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %109 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %103, %82, %30
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gfs2_block_map(%struct.TYPE_6__*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
