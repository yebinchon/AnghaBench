; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c___ocfs2_stuff_meta_lvb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c___ocfs2_stuff_meta_lvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32, i32, i32, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_meta_lvb = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@OCFS2_LVB_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @__ocfs2_stuff_meta_lvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ocfs2_stuff_meta_lvb(%struct.inode* %0) #0 {
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
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 0
  %12 = call %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32* %11)
  store %struct.ocfs2_meta_lvb* %12, %struct.ocfs2_meta_lvb** %5, align 8
  %13 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %20, i32 0, i32 12
  store i64 0, i64* %21, align 8
  br label %95

22:                                               ; preds = %1
  %23 = load i64, i64* @OCFS2_LVB_VERSION, align 8
  %24 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %24, i32 0, i32 12
  store i64 %23, i64* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @i_size_read(%struct.inode* %26)
  %28 = call i8* @cpu_to_be64(i32 %27)
  %29 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %29, i32 0, i32 11
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %32 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %36 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %35, i32 0, i32 10
  store i8* %34, i8** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  %38 = call i32 @i_uid_read(%struct.inode* %37)
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call i32 @i_gid_read(%struct.inode* %42)
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %2, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be16(i32 %55)
  %57 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %2, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 3
  %61 = call i32 @ocfs2_pack_timespec(i32* %60)
  %62 = call i8* @cpu_to_be64(i32 %61)
  %63 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %64 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %2, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = call i32 @ocfs2_pack_timespec(i32* %66)
  %68 = call i8* @cpu_to_be64(i32 %67)
  %69 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %70 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %2, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = call i32 @ocfs2_pack_timespec(i32* %72)
  %74 = call i8* @cpu_to_be64(i32 %73)
  %75 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %76 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %78 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %82 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %3, align 8
  %84 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %88 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %2, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %5, align 8
  %94 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %22, %19
  %96 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %97 = call i32 @mlog_meta_lvb(i32 0, %struct.ocfs2_lock_res* %96)
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ocfs2_pack_timespec(i32*) #1

declare dso_local i32 @mlog_meta_lvb(i32, %struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
