; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_inode_from_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_inode_from_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i8*, i64 }
%struct.ocfs2_inode_info = type { i32, i8*, i8*, i8*, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_meta_lvb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ocfs2_refresh_inode_from_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_refresh_inode_from_lvb(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ocfs2_inode_info*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca %struct.ocfs2_meta_lvb*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %6)
  store %struct.ocfs2_inode_info* %7, %struct.ocfs2_inode_info** %3, align 8
  %8 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %8, i32 0, i32 4
  store %struct.ocfs2_lock_res* %9, %struct.ocfs2_lock_res** %4, align 8
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %11 = call i32 @mlog_meta_lvb(i32 0, %struct.ocfs2_lock_res* %10)
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %12, i32 0, i32 0
  %14 = call %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32* %13)
  store %struct.ocfs2_meta_lvb* %14, %struct.ocfs2_meta_lvb** %5, align 8
  %15 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @be32_to_cpu(i32 %20)
  %22 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be64_to_cpu(i32 %27)
  %29 = call i32 @i_size_write(%struct.inode* %24, i32 %28)
  %30 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @be32_to_cpu(i32 %32)
  %34 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be16_to_cpu(i32 %38)
  %40 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call i32 @ocfs2_set_inode_flags(%struct.inode* %42)
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @S_ISLNK(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %1
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  br label %62

57:                                               ; preds = %49, %1
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = call i64 @ocfs2_inode_sector_count(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %2, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %65 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = call i32 @i_uid_write(%struct.inode* %63, i8* %67)
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @be32_to_cpu(i32 %72)
  %74 = call i32 @i_gid_write(%struct.inode* %69, i8* %73)
  %75 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %76 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @be16_to_cpu(i32 %77)
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %2, align 8
  %82 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %83 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @be16_to_cpu(i32 %84)
  %86 = call i32 @set_nlink(%struct.inode* %81, i8* %85)
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  %89 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %90 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be64_to_cpu(i32 %91)
  %93 = call i32 @ocfs2_unpack_timespec(i32* %88, i32 %92)
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %97 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be64_to_cpu(i32 %98)
  %100 = call i32 @ocfs2_unpack_timespec(i32* %95, i32 %99)
  %101 = load %struct.inode*, %struct.inode** %2, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %104 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be64_to_cpu(i32 %105)
  %107 = call i32 @ocfs2_unpack_timespec(i32* %102, i32 %106)
  %108 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %109 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_meta_lvb(i32, %struct.ocfs2_lock_res*) #1

declare dso_local %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i8*) #1

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i8*) #1

declare dso_local i32 @ocfs2_unpack_timespec(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
