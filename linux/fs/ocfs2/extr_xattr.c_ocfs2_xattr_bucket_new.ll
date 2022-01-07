; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_new.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_bucket = type { i32, %struct.inode* }
%struct.inode = type { i32 }

@OCFS2_XATTR_MAX_BLOCKS_PER_BUCKET = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_xattr_bucket* (%struct.inode*)* @ocfs2_xattr_bucket_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ocfs2_blocks_per_xattr_bucket(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @OCFS2_XATTR_MAX_BLOCKS_PER_BUCKET, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.ocfs2_xattr_bucket* @kzalloc(i32 16, i32 %14)
  store %struct.ocfs2_xattr_bucket* %15, %struct.ocfs2_xattr_bucket** %3, align 8
  %16 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %17 = icmp ne %struct.ocfs2_xattr_bucket* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %20, i32 0, i32 1
  store %struct.inode* %19, %struct.inode** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  ret %struct.ocfs2_xattr_bucket* %26
}

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_xattr_bucket* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
